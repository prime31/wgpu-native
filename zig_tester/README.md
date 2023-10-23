# Zig Naga Oil
Zig wrapper for [naga_oil](https://github.com/bevyengine/naga_oil) Rust crate


## Description
wgpu-native fork that adds naga_oil.

## Add Package to Your Project
- copy `naga_oil.zig` into your project
- link against the wgpu-native static or dynamic library (available in GitHub Releases)

## Usage

```zig
const oil = @import("oil");

// optionally import types
const Composer = oil.Composer;
const Module = oil.Module;
const ShaderDefs = oil.ShaderDefs;
const Source = oil.Source;

// create a Composer
const composer = Composer.init();
defer composer.deinit();

// add source code modules to the Composer
try composer.addComposableModule(.{
    .source = @embedFile("utils.wgsl"),
    .file_path = "shaders/utils.wgsl",
});

// optionally create ShaderDefs for conditinal compilation
const shader_defs = ShaderDefs.init();

shader_defs.insertBool("HAS_TANGENTS", true);
shader_defs.insertU32("MAX_LIGHTS", 256);

// create a Module with the main shader file
const module = try composer.makeNagaModule(.{
    .source = @embedFile("pbr.wgsl"),
    .file_path = "shaders/pbr.wgsl",
    .shader_defs = shader_defs,
});

// generate the shader source
const source = module.toSource();
defer source.deinit();
std.debug.print("shader: {}\n", .{source.source});
```
