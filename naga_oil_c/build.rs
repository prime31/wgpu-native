use std::{env, path::PathBuf};

use cbindgen::{Config, Language};

fn main() {
    let crate_dir = env::var("CARGO_MANIFEST_DIR").unwrap();
    let output_file = PathBuf::from(&crate_dir)
        .parent()
        .unwrap()
        .join("ffi")
        .join("naga_oil.h");

    let mut config = Config::default();
    config.language = Language::C;
    config.cpp_compat = false;
    config.tab_width = 4;

    cbindgen::generate_with_config(&crate_dir, config)
        .unwrap()
        .write_to_file(output_file);
}
