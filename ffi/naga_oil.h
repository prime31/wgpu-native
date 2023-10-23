#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

typedef void *NagaOilComposer;

typedef void *NagaOilImportDefinitions;

typedef void *NagaOilShaderDefs;

typedef struct ComposableModuleDescriptor {
    const char *source;
    const char *file_path;
    const char *as_name;
    NagaOilImportDefinitions additional_imports;
    NagaOilShaderDefs shader_defs;
} ComposableModuleDescriptor;

typedef void *NagaOilModule;

typedef struct ModuleDescriptor {
    const char *source;
    const char *file_path;
    NagaOilShaderDefs shader_defs;
    NagaOilImportDefinitions additional_imports;
} ModuleDescriptor;

typedef void *NagaOilStringVec;

NagaOilComposer composer_create(void);

void composer_destroy(NagaOilComposer composer);

int32_t composer_add_composable_module(NagaOilComposer composer,
                                       struct ComposableModuleDescriptor desc);

NagaOilModule composer_make_naga_module(NagaOilComposer composer, struct ModuleDescriptor desc);

char *module_to_source(NagaOilModule module);

void source_destroy(char *src);

NagaOilStringVec string_vec_create(void);

void string_vec_push(NagaOilStringVec vec, const char *item);

NagaOilImportDefinitions import_definitions_create(void);

void import_definitions_destroy(NagaOilImportDefinitions vec);

void import_definitions_push(NagaOilImportDefinitions vec, const char *import);

void import_definitions_push_with_items(NagaOilImportDefinitions vec,
                                        const char *import,
                                        NagaOilStringVec items);

NagaOilShaderDefs shader_defs_create(void);

void shader_defs_insert_sint(NagaOilShaderDefs map, const char *key, int32_t value);

void shader_defs_insert_uint(NagaOilShaderDefs map, const char *key, uint32_t value);

void shader_defs_insert_bool(NagaOilShaderDefs map, const char *key, bool value);

void shader_defs_debug_print(NagaOilShaderDefs map);
