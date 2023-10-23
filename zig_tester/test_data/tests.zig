const std = @import("std");
const oil = @import("naga_oil");

const Composer = oil.Composer;
const Module = oil.Module;
const ShaderDefs = oil.ShaderDefs;
const Source = oil.Source;
const ImportDefinitions = oil.ImportDefinitions;

pub fn main() !void {
    try testBigShaderDefs();
    try testBevyPbr();
}

fn checkExpectedResutls(src: Source, name: []const u8) !void {
    var dir = try std.fs.cwd().openDir("test_data/expected", .{});
    defer dir.close();

    const file = try dir.openFile(name, .{});
    defer file.close();

    const bytes = try file.readToEndAlloc(std.heap.c_allocator, std.math.maxInt(usize));
    defer std.heap.c_allocator.free(bytes);

    try std.testing.expectEqualSlices(u8, std.mem.span(src.source), bytes);
}

fn writeExpectedResults(src: Source, name: []const u8) !void {
    var dir = try std.fs.cwd().openDir("test_data/expected", .{});
    defer dir.close();

    const file = try dir.createFile(name, .{});
    defer file.close();
    try file.writeAll(std.mem.span(src.source));

    std.debug.print("wrote: {s}\n", .{src.source});
}

fn testBevyPbr() !void {
    const composer = Composer.init();
    defer composer.deinit();

    try composer.addComposableModule(.{
        .source = @embedFile("../test_data/bevy_pbr_wgsl/utils.wgsl"),
        .file_path = "test_data/bevy_pbr_wgsl/utils.wgsl",
    });

    try composer.addComposableModule(.{
        .source = @embedFile("../test_data/bevy_pbr_wgsl/mesh_view_types.wgsl"),
        .file_path = "test_data/bevy_pbr_wgsl/mesh_view_types.wgsl",
    });

    try composer.addComposableModule(.{
        .source = @embedFile("../test_data/bevy_pbr_wgsl/mesh_view_bindings.wgsl"),
        .file_path = "test_data/bevy_pbr_wgsl/mesh_view_bindings.wgsl",
    });

    try composer.addComposableModule(.{
        .source = @embedFile("../test_data/bevy_pbr_wgsl/pbr_types.wgsl"),
        .file_path = "test_data/bevy_pbr_wgsl/pbr_types.wgsl",
    });

    try composer.addComposableModule(.{
        .source = @embedFile("../test_data/bevy_pbr_wgsl/pbr_bindings.wgsl"),
        .file_path = "test_data/bevy_pbr_wgsl/pbr_bindings.wgsl",
    });

    try composer.addComposableModule(.{
        .source = @embedFile("../test_data/bevy_pbr_wgsl/skinning.wgsl"),
        .file_path = "test_data/bevy_pbr_wgsl/skinning.wgsl",
    });

    try composer.addComposableModule(.{
        .source = @embedFile("../test_data/bevy_pbr_wgsl/mesh_types.wgsl"),
        .file_path = "test_data/bevy_pbr_wgsl/mesh_types.wgsl",
    });

    try composer.addComposableModule(.{
        .source = @embedFile("../test_data/bevy_pbr_wgsl/mesh_bindings.wgsl"),
        .file_path = "test_data/bevy_pbr_wgsl/mesh_bindings.wgsl",
    });

    try composer.addComposableModule(.{
        .source = @embedFile("../test_data/bevy_pbr_wgsl/mesh_vertex_output.wgsl"),
        .file_path = "test_data/bevy_pbr_wgsl/mesh_vertex_output.wgsl",
    });

    try composer.addComposableModule(.{
        .source = @embedFile("../test_data/bevy_pbr_wgsl/clustered_forward.wgsl"),
        .file_path = "test_data/bevy_pbr_wgsl/clustered_forward.wgsl",
    });

    try composer.addComposableModule(.{
        .source = @embedFile("../test_data/bevy_pbr_wgsl/pbr_lighting.wgsl"),
        .file_path = "test_data/bevy_pbr_wgsl/pbr_lighting.wgsl",
    });

    try composer.addComposableModule(.{
        .source = @embedFile("../test_data/bevy_pbr_wgsl/shadows.wgsl"),
        .file_path = "test_data/bevy_pbr_wgsl/shadows.wgsl",
    });

    try composer.addComposableModule(.{
        .source = @embedFile("../test_data/bevy_pbr_wgsl/pbr_functions.wgsl"),
        .file_path = "test_data/bevy_pbr_wgsl/pbr_functions.wgsl",
    });

    const module = try composer.makeNagaModule(.{
        .source = @embedFile("../test_data/bevy_pbr_wgsl/pbr.wgsl"),
        .file_path = "src/bevy_pbr_wgsl/pbr.wgsl",
    });

    const source = module.toSource();
    defer source.deinit();

    std.debug.print("len: {}\n", .{std.mem.span(source.source).len});
    // try std.testing.expect(std.mem.span(source.source).len == 37001);
}

test "bevy pbr" {
    std.log.warn("", .{});
    try testBevyPbr();
}

fn testAddImports() !void {
    const composer = Composer.init();
    defer composer.deinit();

    try composer.addComposableModule(.{
        .source = @embedFile("../test_data/add_imports/overridable.wgsl"),
        .file_path = "test_data/add_imports/overridable.wgsl",
    });

    try composer.addComposableModule(.{
        .source = @embedFile("../test_data/add_imports/plugin.wgsl"),
        .file_path = "test_data/add_imports/plugin.wgsl",
        .as_name = "plugin",
    });

    const imports = ImportDefinitions.init();
    defer imports.deinit();

    imports.push("plugin");

    const module = try composer.makeNagaModule(.{
        .source = @embedFile("../test_data/add_imports/top.wgsl"),
        .file_path = "src/add_imports/top.wgsl",
        .additional_imports = imports.imports,
    });

    const src = module.toSource();
    defer src.deinit();

    // try writeExpectedResults(src, "add_imports.txt");
    try checkExpectedResutls(src, "add_imports.txt");
}

test "add_imports" {
    std.log.warn("", .{});
    try testAddImports();
}

fn testSimpleCompose() !void {
    const composer = Composer.init();
    defer composer.deinit();

    try composer.addComposableModule(.{
        .source = @embedFile("../test_data/simple/inc.wgsl"),
        .file_path = "test_data/simple/inc.wgsl",
    });

    const module = try composer.makeNagaModule(.{
        .source = @embedFile("../test_data/simple/top.wgsl"),
        .file_path = "src/simple/top.wgsl",
    });

    const src = module.toSource();
    defer src.deinit();

    // try writeExpectedResults(src, "simple_compose.txt");
    try checkExpectedResutls(src, "simple_compose.txt");
}

test "simple_compose" {
    std.log.warn("", .{});
    try testSimpleCompose();
}

fn testBigShaderDefs() !void {
    const composer = Composer.init();
    defer composer.deinit();

    try composer.addComposableModule(.{
        .source = @embedFile("../test_data/big_shaderdefs/mod.wgsl"),
        .file_path = "test_data/big_shaderdefs/mod.wgsl",
    });

    var buf: [4]u8 = undefined;
    const shaderdefs = ShaderDefs.init();
    for (0..68) |i| {
        const key = try std.fmt.bufPrintZ(&buf, "a{}", .{i});
        shaderdefs.insertBool(key, true);
    }

    const module = try composer.makeNagaModule(.{
        .source = @embedFile("../test_data/big_shaderdefs/top.wgsl"),
        .file_path = "src/big_shaderdefs/top.wgsl",
        .shader_defs = shaderdefs.defs,
    });

    const src = module.toSource();
    defer src.deinit();

    // try writeExpectedResults(src, "big_shaderdefs.txt");
    try checkExpectedResutls(src, "big_shaderdefs.txt");
}

test "big_shaderdefs" {
    std.log.warn("", .{});
    try testBigShaderDefs();
}
