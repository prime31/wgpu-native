const std = @import("std");
const wgpu = @import("wgpu.zig");

{{begin-inject}}
{{end-inject}}

{{begin-blacklist}}
{{end-blacklist}}

// Descriptors
{{descriptors}}

// Structs
{{structs}}

// Enumerations
{{enums}}

// Callback types
{{callbacks}}

// Injected
pub fn createInstance() Instance {
    return wgpu.wgpuCreateInstance(null);
}

// Handles
{{handles_impl}}
