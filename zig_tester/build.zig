const std = @import("std");

pub fn linkArtifact(exe: *std.Build.Step.Compile) void {
    exe.addIncludePath(.{ .path = thisDir() ++ "/../ffi" });

    if (@import("builtin").os.tag == .macos) {
        exe.addObjectFile(.{ .path = thisDir() ++ "/../target/debug/libwgpu_native.a" });

        exe.linkSystemLibraryName("objc");
        exe.linkFramework("Metal");
        exe.linkFramework("CoreGraphics");
        exe.linkFramework("Foundation");
        exe.linkFramework("IOKit");
        exe.linkFramework("IOSurface");
        exe.linkFramework("QuartzCore");
    } else if (@import("builtin").os.tag == .windows) {
        exe.addObjectFile(.{ .path = thisDir() ++ "/../target/x86_64-pc-windows-gnu/debug/libwgpu_native.a" });
    }
}

pub fn getModule(b: *std.Build) *std.build.Module {
    return b.createModule(.{ .source_file = .{ .path = thisDir() ++ "/src/naga_oil.zig" } });
}

pub fn getWgpuNativeModule(b: *std.Build) *std.build.Module {
    return b.createModule(.{ .source_file = .{ .path = thisDir() ++ "/wgpu_generator/output/webgpu.zig" } });
}

inline fn thisDir() []const u8 {
    return comptime std.fs.path.dirname(@src().file) orelse ".";
}

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{
        .name = "run",
        .root_source_file = .{ .path = "test_data/tests.zig" },
        .target = target,
        .optimize = optimize,
    });
    linkArtifact(exe);
    exe.addModule("naga_oil", getModule(b));
    exe.addModule("wgpu", getWgpuNativeModule(b));

    const run_exe = b.addRunArtifact(exe);
    const run_step = b.step("run", "Run unit tests");
    run_step.dependOn(&run_exe.step);

    const unit_tests = b.addTest(.{
        .root_source_file = .{ .path = "test_data/tests.zig" },
        .target = target,
        .optimize = optimize,
    });

    linkArtifact(unit_tests);
    unit_tests.addModule("naga_oil", getModule(b));

    const run_unit_tests = b.addRunArtifact(unit_tests);

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_unit_tests.step);
}
