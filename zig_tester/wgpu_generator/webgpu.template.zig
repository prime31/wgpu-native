const std = @import("std");
const wgpu = @import("wgpu.zig");

{{begin-inject}}
{{end-inject}}

{{begin-blacklist}}
{{end-blacklist}}

// Structs
{{structs}}

// Enumerations
{{enums}}

// Callback types
{{callbacks}}

// Handles
extern fn wgpuCreateInstance(descriptor: [*c]const WGPUInstanceDescriptor) wgpu.Instance;
const WGPUInstanceDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
};
const WGPUChainedStruct = extern struct {
    next: [*c]const WGPUChainedStruct = null,
    sType: c_uint = 0,
};

{{handles_impl}}
