const std = @import("std");
const wgpu = @import("wgpu.zig");

{{begin-inject}}
{{end-inject}}

{{begin-blacklist}}
{{end-blacklist}}

// Injected
pub const Bool = enum(u32) {
    false,
    true,
};

pub const SubmissionIndex = u64;

pub const InstanceBackend = enum(u32) {
    all = 0,
    vulkan = 1,
    gl = 2,
    metal = 4,
    dx12 = 8,
    dx11 = 16,
    browser_web_gpu = 32,
    primary = 45,
    secondary = 18,
};

pub fn createInstance() Instance {
    return wgpuCreateInstance(null);
}
extern fn wgpuCreateInstance(descriptor: [*c]const InstanceDescriptor) Instance;

// Descriptors
{{descriptors}}

// Structs
{{structs}}

// Enumerations
{{enums}}

// Callback types
{{callbacks}}

// Handles
{{handles_impl}}
