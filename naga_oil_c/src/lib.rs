use std::{
    collections::HashMap,
    ffi::{c_char, c_void, CStr, CString},
    ptr::{self, null, null_mut},
};

use naga_oil::compose::{ImportDefinition, NagaModuleDescriptor, ShaderDefValue};

type NagaComposer = naga_oil::compose::Composer;
type NagaComposableModuleDescriptor<'a> = naga_oil::compose::ComposableModuleDescriptor<'a>;

type NagaOilComposer = *mut c_void;
type NagaOilShaderDefs = *mut c_void;
type NagaOilModule = *mut c_void;
type NagaOilImportDefinitions = *mut c_void;
type NagaOilStringVec = *mut c_void;

// unsafe fn c_str_to_string(str: *const c_char) -> String {
//     match str == null() {
//         true => String::new(),
//         false => CStr::from_ptr(str).to_str().unwrap().to_string(),
//     }
// }

unsafe fn c_str_to_option_string(str: *const c_char) -> Option<String> {
    match str == null() {
        true => None,
        false => Option::Some(CStr::from_ptr(str).to_str().unwrap().to_owned()),
    }
}

unsafe fn c_str_to_str(str: *const c_char) -> &'static str {
    match str == null() {
        true => "",
        false => CStr::from_ptr(str).to_str().unwrap(),
    }
}

#[repr(C)]
pub struct ModuleDescriptor {
    pub source: *const c_char,
    pub file_path: *const c_char,
    // pub shader_type: ShaderType,
    pub shader_defs: NagaOilShaderDefs,
    pub additional_imports: NagaOilImportDefinitions,
}

#[repr(C)]
pub struct ComposableModuleDescriptor {
    pub source: *const c_char,
    pub file_path: *const c_char,
    // pub language: ShaderLanguage,
    pub as_name: *const c_char,
    pub additional_imports: NagaOilImportDefinitions,
    pub shader_defs: NagaOilShaderDefs,
}

#[no_mangle]
pub extern "C" fn composer_create() -> NagaOilComposer {
    let composer = Box::new(NagaComposer::default());
    Box::into_raw(composer) as *mut c_void
}

#[no_mangle]
pub unsafe extern "C" fn composer_destroy(composer: NagaOilComposer) {
    let composer = Box::from_raw(composer as *mut NagaComposer);
    drop(composer);
}

#[no_mangle]
pub unsafe extern "C" fn composer_add_composable_module(
    composer: NagaOilComposer,
    desc: ComposableModuleDescriptor,
) -> i32 {
    let mut composer = Box::from_raw(composer as *mut NagaComposer);
    let shader_defs = match desc.shader_defs == null_mut() {
        true => Box::new(HashMap::new()),
        false => Box::from_raw(desc.shader_defs as *mut HashMap<String, ShaderDefValue>),
    };
    let additional_imports = match desc.additional_imports == null_mut() {
        true => Box::new(Vec::new()),
        false => Box::from_raw(desc.additional_imports as *mut Vec<ImportDefinition>),
    };

    let result = composer.add_composable_module(NagaComposableModuleDescriptor {
        source: c_str_to_str(desc.source),
        file_path: c_str_to_str(desc.file_path),
        as_name: c_str_to_option_string(desc.as_name),
        shader_defs: *shader_defs,
        additional_imports: &(*additional_imports),
        ..Default::default()
    });

    let result = match result {
        Ok(_) => {
            // println!("{} -> {:#?}", module.name, module)
            1
        }
        Err(e) => {
            println!("? -> {e:#?}");
            -1
        }
    };
    Box::leak(composer);
    Box::leak(additional_imports);
    result
}

#[no_mangle]
pub unsafe extern "C" fn composer_make_naga_module(
    composer: NagaOilComposer,
    desc: ModuleDescriptor,
) -> NagaOilModule {
    let mut composer = Box::from_raw(composer as *mut NagaComposer);

    let shader_defs = match desc.shader_defs == null_mut() {
        true => Box::new(HashMap::new()),
        false => Box::from_raw(desc.shader_defs as *mut HashMap<String, ShaderDefValue>),
    };
    let additional_imports = match desc.additional_imports == null_mut() {
        true => Box::new(Vec::new()),
        false => Box::from_raw(desc.additional_imports as *mut Vec<ImportDefinition>),
    };

    let result = composer.make_naga_module(NagaModuleDescriptor {
        source: c_str_to_str(desc.source),
        file_path: c_str_to_str(desc.file_path),
        shader_defs: *shader_defs,
        additional_imports: &(*additional_imports),
        ..Default::default()
    });

    let output = match result {
        Ok(module) => Box::into_raw(Box::new(module)) as *mut c_void,
        Err(e) => {
            println!("{}", e.emit_to_string(&composer));
            ptr::null_mut()
        }
    };

    Box::leak(additional_imports);
    Box::leak(composer);
    output
}

#[no_mangle]
pub unsafe extern "C" fn module_to_source(module: NagaOilModule) -> *mut c_char {
    let module = Box::from_raw(module as *mut naga::Module);

    let info = naga::valid::Validator::new(
        naga::valid::ValidationFlags::all(),
        naga::valid::Capabilities::default(),
    )
    .validate(&module)
    .unwrap();

    let wgsl = naga::back::wgsl::write_string(
        &module,
        &info,
        naga::back::wgsl::WriterFlags::EXPLICIT_TYPES,
    )
    .unwrap();
    Box::leak(module);
    CString::new(wgsl).unwrap().into_raw()
}

#[no_mangle]
pub unsafe extern "C" fn source_destroy(src: *mut c_char) {
    drop(CString::from_raw(src));
}

// StringVec helpers
#[no_mangle]
pub unsafe extern "C" fn string_vec_create() -> NagaOilStringVec {
    let vec: Box<Vec<String>> = Box::new(Vec::new());
    Box::into_raw(vec) as *mut c_void
}

#[no_mangle]
pub unsafe extern "C" fn string_vec_push(vec: NagaOilStringVec, item: *const c_char) {
    let mut vec: Box<Vec<String>> = Box::from_raw(vec as *mut Vec<String>);
    vec.push(CStr::from_ptr(item).to_str().unwrap().to_string());
    Box::leak(vec);
}

// ImportDefinition helpers
#[no_mangle]
pub unsafe extern "C" fn import_definitions_create() -> NagaOilImportDefinitions {
    let vec: Box<Vec<ImportDefinition>> = Box::new(Vec::new());
    Box::into_raw(vec) as *mut c_void
}

#[no_mangle]
pub unsafe extern "C" fn import_definitions_destroy(vec: NagaOilImportDefinitions) {
    let vec: Box<Vec<ImportDefinition>> = Box::from_raw(vec as *mut Vec<ImportDefinition>);
    drop(vec);
}

#[no_mangle]
pub unsafe extern "C" fn import_definitions_push(
    vec: NagaOilImportDefinitions,
    import: *const c_char,
) {
    let mut vec: Box<Vec<ImportDefinition>> = Box::from_raw(vec as *mut Vec<ImportDefinition>);
    vec.push(ImportDefinition {
        import: CStr::from_ptr(import).to_str().unwrap().to_string(),
        ..Default::default()
    });
    Box::leak(vec);
}

#[no_mangle]
pub unsafe extern "C" fn import_definitions_push_with_items(
    vec: NagaOilImportDefinitions,
    import: *const c_char,
    items: NagaOilStringVec,
) {
    let mut vec: Box<Vec<ImportDefinition>> = Box::from_raw(vec as *mut Vec<ImportDefinition>);
    let string_vec: Box<Vec<String>> = Box::from_raw(items as *mut Vec<String>);

    vec.push(ImportDefinition {
        import: CStr::from_ptr(import).to_str().unwrap().to_string(),
        items: *string_vec,
        ..Default::default()
    });
    Box::leak(vec);
}

// HashMap helpers
#[no_mangle]
pub unsafe extern "C" fn shader_defs_create() -> NagaOilShaderDefs {
    let map: Box<HashMap<String, ShaderDefValue>> = Box::new(HashMap::new());
    Box::into_raw(map) as *mut c_void
}

// #[no_mangle]
// pub unsafe extern "C" fn shader_defs_destroy(map: ShaderDefs) {
//     let map: Box<HashMap<String, ShaderDefValue>> = Box::from_raw(map as *mut HashMap<String, ShaderDefValue>);
//     drop(map);
// }

#[no_mangle]
pub unsafe extern "C" fn shader_defs_insert_sint(
    map: NagaOilShaderDefs,
    key: *const c_char,
    value: i32,
) {
    let mut map: Box<HashMap<String, ShaderDefValue>> =
        Box::from_raw(map as *mut HashMap<String, ShaderDefValue>);

    let key = CStr::from_ptr(key).to_str().unwrap().to_string();
    map.insert(key, ShaderDefValue::Int(value));
    Box::leak(map);
}

#[no_mangle]
pub unsafe extern "C" fn shader_defs_insert_uint(
    map: NagaOilShaderDefs,
    key: *const c_char,
    value: u32,
) {
    let mut map: Box<HashMap<String, ShaderDefValue>> =
        Box::from_raw(map as *mut HashMap<String, ShaderDefValue>);

    let key = CStr::from_ptr(key).to_str().unwrap().to_string();
    map.insert(key, ShaderDefValue::UInt(value));
    Box::leak(map);
}

#[no_mangle]
pub unsafe extern "C" fn shader_defs_insert_bool(
    map: NagaOilShaderDefs,
    key: *const c_char,
    value: bool,
) {
    let mut map: Box<HashMap<String, ShaderDefValue>> =
        Box::from_raw(map as *mut HashMap<String, ShaderDefValue>);

    let key = CStr::from_ptr(key).to_str().unwrap().to_string().to_owned();
    map.insert(key, ShaderDefValue::Bool(value));
    Box::leak(map);
}

#[no_mangle]
pub unsafe extern "C" fn shader_defs_debug_print(map: NagaOilShaderDefs) {
    let map: Box<HashMap<String, ShaderDefValue>> =
        Box::from_raw(map as *mut HashMap<String, ShaderDefValue>);
    println!("map: {:?}", map);
    Box::leak(map);
}
