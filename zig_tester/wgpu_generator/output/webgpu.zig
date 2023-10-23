const std = @import("std");
const wgpu = @import("wgpu.zig");



// Structs
pub const ChainedStruct = wgpu.WGPUChainedStruct;
pub const ChainedStructOut = wgpu.WGPUChainedStructOut;
pub const BlendComponent = wgpu.WGPUBlendComponent;
pub const Color = wgpu.WGPUColor;
pub const ComputePassTimestampWrites = wgpu.WGPUComputePassTimestampWrites;
pub const Extent3D = wgpu.WGPUExtent3D;
pub const Limits = wgpu.WGPULimits;
pub const Origin3D = wgpu.WGPUOrigin3D;
pub const PrimitiveDepthClipControl = wgpu.WGPUPrimitiveDepthClipControl;
pub const RenderPassDepthStencilAttachment = wgpu.WGPURenderPassDepthStencilAttachment;
pub const RenderPassDescriptorMaxDrawCount = wgpu.WGPURenderPassDescriptorMaxDrawCount;
pub const RenderPassTimestampWrites = wgpu.WGPURenderPassTimestampWrites;
pub const ShaderModuleSPIRVDescriptor = wgpu.WGPUShaderModuleSPIRVDescriptor;
pub const ShaderModuleWGSLDescriptor = wgpu.WGPUShaderModuleWGSLDescriptor;
pub const StencilFaceState = wgpu.WGPUStencilFaceState;
pub const SurfaceDescriptorFromAndroidNativeWindow = wgpu.WGPUSurfaceDescriptorFromAndroidNativeWindow;
pub const SurfaceDescriptorFromCanvasHTMLSelector = wgpu.WGPUSurfaceDescriptorFromCanvasHTMLSelector;
pub const SurfaceDescriptorFromMetalLayer = wgpu.WGPUSurfaceDescriptorFromMetalLayer;
pub const SurfaceDescriptorFromWaylandSurface = wgpu.WGPUSurfaceDescriptorFromWaylandSurface;
pub const SurfaceDescriptorFromWindowsHWND = wgpu.WGPUSurfaceDescriptorFromWindowsHWND;
pub const SurfaceDescriptorFromXcbWindow = wgpu.WGPUSurfaceDescriptorFromXcbWindow;
pub const SurfaceDescriptorFromXlibWindow = wgpu.WGPUSurfaceDescriptorFromXlibWindow;
pub const SurfaceTexture = wgpu.WGPUSurfaceTexture;
pub const VertexAttribute = wgpu.WGPUVertexAttribute;
pub const BlendState = wgpu.WGPUBlendState;
pub const VertexBufferLayout = wgpu.WGPUVertexBufferLayout;
pub const InstanceExtras = wgpu.WGPUInstanceExtras;
pub const DeviceExtras = wgpu.WGPUDeviceExtras;
pub const RequiredLimitsExtras = wgpu.WGPURequiredLimitsExtras;
pub const SupportedLimitsExtras = wgpu.WGPUSupportedLimitsExtras;
pub const PushConstantRange = wgpu.WGPUPushConstantRange;
pub const PipelineLayoutExtras = wgpu.WGPUPipelineLayoutExtras;
pub const WrappedSubmissionIndex = wgpu.WGPUWrappedSubmissionIndex;
pub const ShaderDefine = wgpu.WGPUShaderDefine;
pub const ShaderModuleGLSLDescriptor = wgpu.WGPUShaderModuleGLSLDescriptor;
pub const StorageReport = wgpu.WGPUStorageReport;
pub const HubReport = wgpu.WGPUHubReport;
pub const GlobalReport = wgpu.WGPUGlobalReport;
pub const BindGroupEntryExtras = wgpu.WGPUBindGroupEntryExtras;
pub const BindGroupLayoutEntryExtras = wgpu.WGPUBindGroupLayoutEntryExtras;

// Enumerations
pub const AdapterType = enum(u32) {
	discrete_gpu = 0x00000000
	integrated_gpu = 0x00000001
	cpu = 0x00000002
	unknown = 0x00000003
	force32 = 0x7FFFFFFF
}

pub const AddressMode = enum(u32) {
	repeat = 0x00000000
	mirror_repeat = 0x00000001
	clamp_to_edge = 0x00000002
	force32 = 0x7FFFFFFF
}

pub const BackendType = enum(u32) {
	undefined = 0x00000000
	null = 0x00000001
	web_gpu = 0x00000002
	d3_d11 = 0x00000003
	d3_d12 = 0x00000004
	metal = 0x00000005
	vulkan = 0x00000006
	open_gl = 0x00000007
	open_gles = 0x00000008
	force32 = 0x7FFFFFFF
}

pub const BlendFactor = enum(u32) {
	zero = 0x00000000
	one = 0x00000001
	src = 0x00000002
	one_minus_src = 0x00000003
	src_alpha = 0x00000004
	one_minus_src_alpha = 0x00000005
	dst = 0x00000006
	one_minus_dst = 0x00000007
	dst_alpha = 0x00000008
	one_minus_dst_alpha = 0x00000009
	src_alpha_saturated = 0x0000000A
	constant = 0x0000000B
	one_minus_constant = 0x0000000C
	force32 = 0x7FFFFFFF
}

pub const BlendOperation = enum(u32) {
	add = 0x00000000
	subtract = 0x00000001
	reverse_subtract = 0x00000002
	min = 0x00000003
	max = 0x00000004
	force32 = 0x7FFFFFFF
}

pub const BufferBindingType = enum(u32) {
	undefined = 0x00000000
	uniform = 0x00000001
	storage = 0x00000002
	read_only_storage = 0x00000003
	force32 = 0x7FFFFFFF
}

pub const BufferMapAsyncStatus = enum(u32) {
	success = 0x00000000
	validation_error = 0x00000001
	unknown = 0x00000002
	device_lost = 0x00000003
	destroyed_before_callback = 0x00000004
	unmapped_before_callback = 0x00000005
	mapping_already_pending = 0x00000006
	offset_out_of_range = 0x00000007
	size_out_of_range = 0x00000008
	force32 = 0x7FFFFFFF
}

pub const BufferMapState = enum(u32) {
	unmapped = 0x00000000
	pending = 0x00000001
	mapped = 0x00000002
	force32 = 0x7FFFFFFF
}

pub const CompareFunction = enum(u32) {
	undefined = 0x00000000
	never = 0x00000001
	less = 0x00000002
	less_equal = 0x00000003
	greater = 0x00000004
	greater_equal = 0x00000005
	equal = 0x00000006
	not_equal = 0x00000007
	always = 0x00000008
	force32 = 0x7FFFFFFF
}

pub const CompilationInfoRequestStatus = enum(u32) {
	success = 0x00000000
	error = 0x00000001
	device_lost = 0x00000002
	unknown = 0x00000003
	force32 = 0x7FFFFFFF
}

pub const CompilationMessageType = enum(u32) {
	error = 0x00000000
	warning = 0x00000001
	info = 0x00000002
	force32 = 0x7FFFFFFF
}

pub const CompositeAlphaMode = enum(u32) {
	auto = 0x00000000
	opaque = 0x00000001
	premultiplied = 0x00000002
	unpremultiplied = 0x00000003
	inherit = 0x00000004
	force32 = 0x7FFFFFFF
}

pub const CreatePipelineAsyncStatus = enum(u32) {
	success = 0x00000000
	validation_error = 0x00000001
	internal_error = 0x00000002
	device_lost = 0x00000003
	device_destroyed = 0x00000004
	unknown = 0x00000005
	force32 = 0x7FFFFFFF
}

pub const CullMode = enum(u32) {
	none = 0x00000000
	front = 0x00000001
	back = 0x00000002
	force32 = 0x7FFFFFFF
}

pub const DeviceLostReason = enum(u32) {
	undefined = 0x00000000
	destroyed = 0x00000001
	force32 = 0x7FFFFFFF
}

pub const ErrorFilter = enum(u32) {
	validation = 0x00000000
	out_of_memory = 0x00000001
	internal = 0x00000002
	force32 = 0x7FFFFFFF
}

pub const ErrorType = enum(u32) {
	no_error = 0x00000000
	validation = 0x00000001
	out_of_memory = 0x00000002
	internal = 0x00000003
	unknown = 0x00000004
	device_lost = 0x00000005
	force32 = 0x7FFFFFFF
}

pub const FeatureName = enum(u32) {
	undefined = 0x00000000
	depth_clip_control = 0x00000001
	depth32_float_stencil8 = 0x00000002
	timestamp_query = 0x00000003
	pipeline_statistics_query = 0x00000004
	texture_compression_bc = 0x00000005
	texture_compression_etc2 = 0x00000006
	texture_compression_astc = 0x00000007
	indirect_first_instance = 0x00000008
	shader_f16 = 0x00000009
	rg11_b10_ufloat_renderable = 0x0000000A
	bgra8_unorm_storage = 0x0000000B
	float32_filterable = 0x0000000C
	force32 = 0x7FFFFFFF
}

pub const FilterMode = enum(u32) {
	nearest = 0x00000000
	linear = 0x00000001
	force32 = 0x7FFFFFFF
}

pub const FrontFace = enum(u32) {
	ccw = 0x00000000
	cw = 0x00000001
	force32 = 0x7FFFFFFF
}

pub const IndexFormat = enum(u32) {
	undefined = 0x00000000
	uint16 = 0x00000001
	uint32 = 0x00000002
	force32 = 0x7FFFFFFF
}

pub const LoadOp = enum(u32) {
	undefined = 0x00000000
	clear = 0x00000001
	load = 0x00000002
	force32 = 0x7FFFFFFF
}

pub const MipmapFilterMode = enum(u32) {
	nearest = 0x00000000
	linear = 0x00000001
	force32 = 0x7FFFFFFF
}

pub const PipelineStatisticName = enum(u32) {
	vertex_shader_invocations = 0x00000000
	clipper_invocations = 0x00000001
	clipper_primitives_out = 0x00000002
	fragment_shader_invocations = 0x00000003
	compute_shader_invocations = 0x00000004
	force32 = 0x7FFFFFFF
}

pub const PowerPreference = enum(u32) {
	undefined = 0x00000000
	low_power = 0x00000001
	high_performance = 0x00000002
	force32 = 0x7FFFFFFF
}

pub const PresentMode = enum(u32) {
	fifo = 0x00000000
	fifo_relaxed = 0x00000001
	immediate = 0x00000002
	mailbox = 0x00000003
	force32 = 0x7FFFFFFF
}

pub const PrimitiveTopology = enum(u32) {
	point_list = 0x00000000
	line_list = 0x00000001
	line_strip = 0x00000002
	triangle_list = 0x00000003
	triangle_strip = 0x00000004
	force32 = 0x7FFFFFFF
}

pub const QueryType = enum(u32) {
	occlusion = 0x00000000
	pipeline_statistics = 0x00000001
	timestamp = 0x00000002
	force32 = 0x7FFFFFFF
}

pub const QueueWorkDoneStatus = enum(u32) {
	success = 0x00000000
	error = 0x00000001
	unknown = 0x00000002
	device_lost = 0x00000003
	force32 = 0x7FFFFFFF
}

pub const RequestAdapterStatus = enum(u32) {
	success = 0x00000000
	unavailable = 0x00000001
	error = 0x00000002
	unknown = 0x00000003
	force32 = 0x7FFFFFFF
}

pub const RequestDeviceStatus = enum(u32) {
	success = 0x00000000
	error = 0x00000001
	unknown = 0x00000002
	force32 = 0x7FFFFFFF
}

pub const SType = enum(u32) {
	invalid = 0x00000000
	surface_descriptor_from_metal_layer = 0x00000001
	surface_descriptor_from_windows_hwnd = 0x00000002
	surface_descriptor_from_xlib_window = 0x00000003
	surface_descriptor_from_canvas_html_selector = 0x00000004
	shader_module_spirv_descriptor = 0x00000005
	shader_module_wgsl_descriptor = 0x00000006
	primitive_depth_clip_control = 0x00000007
	surface_descriptor_from_wayland_surface = 0x00000008
	surface_descriptor_from_android_native_window = 0x00000009
	surface_descriptor_from_xcb_window = 0x0000000A
	render_pass_descriptor_max_draw_count = 0x0000000F
	force32 = 0x7FFFFFFF
}

pub const SamplerBindingType = enum(u32) {
	undefined = 0x00000000
	filtering = 0x00000001
	non_filtering = 0x00000002
	comparison = 0x00000003
	force32 = 0x7FFFFFFF
}

pub const StencilOperation = enum(u32) {
	keep = 0x00000000
	zero = 0x00000001
	replace = 0x00000002
	invert = 0x00000003
	increment_clamp = 0x00000004
	decrement_clamp = 0x00000005
	increment_wrap = 0x00000006
	decrement_wrap = 0x00000007
	force32 = 0x7FFFFFFF
}

pub const StorageTextureAccess = enum(u32) {
	undefined = 0x00000000
	write_only = 0x00000001
	force32 = 0x7FFFFFFF
}

pub const StoreOp = enum(u32) {
	undefined = 0x00000000
	store = 0x00000001
	discard = 0x00000002
	force32 = 0x7FFFFFFF
}

pub const SurfaceGetCurrentTextureStatus = enum(u32) {
	success = 0x00000000
	timeout = 0x00000001
	outdated = 0x00000002
	lost = 0x00000003
	out_of_memory = 0x00000004
	device_lost = 0x00000005
	force32 = 0x7FFFFFFF
}

pub const TextureAspect = enum(u32) {
	all = 0x00000000
	stencil_only = 0x00000001
	depth_only = 0x00000002
	force32 = 0x7FFFFFFF
}

pub const TextureDimension = enum(u32) {
	_1_d = 0x00000000
	_2_d = 0x00000001
	_3_d = 0x00000002
	force32 = 0x7FFFFFFF
}

pub const TextureFormat = enum(u32) {
	undefined = 0x00000000
	r8_unorm = 0x00000001
	r8_snorm = 0x00000002
	r8_uint = 0x00000003
	r8_sint = 0x00000004
	r16_uint = 0x00000005
	r16_sint = 0x00000006
	r16_float = 0x00000007
	rg8_unorm = 0x00000008
	rg8_snorm = 0x00000009
	rg8_uint = 0x0000000A
	rg8_sint = 0x0000000B
	r32_float = 0x0000000C
	r32_uint = 0x0000000D
	r32_sint = 0x0000000E
	rg16_uint = 0x0000000F
	rg16_sint = 0x00000010
	rg16_float = 0x00000011
	rgba8_unorm = 0x00000012
	rgba8_unorm_srgb = 0x00000013
	rgba8_snorm = 0x00000014
	rgba8_uint = 0x00000015
	rgba8_sint = 0x00000016
	bgra8_unorm = 0x00000017
	bgra8_unorm_srgb = 0x00000018
	rgb10_a2_unorm = 0x00000019
	rg11_b10_ufloat = 0x0000001A
	rgb9_e5_ufloat = 0x0000001B
	rg32_float = 0x0000001C
	rg32_uint = 0x0000001D
	rg32_sint = 0x0000001E
	rgba16_uint = 0x0000001F
	rgba16_sint = 0x00000020
	rgba16_float = 0x00000021
	rgba32_float = 0x00000022
	rgba32_uint = 0x00000023
	rgba32_sint = 0x00000024
	stencil8 = 0x00000025
	depth16_unorm = 0x00000026
	depth24_plus = 0x00000027
	depth24_plus_stencil8 = 0x00000028
	depth32_float = 0x00000029
	depth32_float_stencil8 = 0x0000002A
	bc1_rgba_unorm = 0x0000002B
	bc1_rgba_unorm_srgb = 0x0000002C
	bc2_rgba_unorm = 0x0000002D
	bc2_rgba_unorm_srgb = 0x0000002E
	bc3_rgba_unorm = 0x0000002F
	bc3_rgba_unorm_srgb = 0x00000030
	bc4_r_unorm = 0x00000031
	bc4_r_snorm = 0x00000032
	bc5_rg_unorm = 0x00000033
	bc5_rg_snorm = 0x00000034
	bc6_hrgb_ufloat = 0x00000035
	bc6_hrgb_float = 0x00000036
	bc7_rgba_unorm = 0x00000037
	bc7_rgba_unorm_srgb = 0x00000038
	etc2_rgb8_unorm = 0x00000039
	etc2_rgb8_unorm_srgb = 0x0000003A
	etc2_rgb8_a1_unorm = 0x0000003B
	etc2_rgb8_a1_unorm_srgb = 0x0000003C
	etc2_rgba8_unorm = 0x0000003D
	etc2_rgba8_unorm_srgb = 0x0000003E
	eacr11_unorm = 0x0000003F
	eacr11_snorm = 0x00000040
	eacrg11_unorm = 0x00000041
	eacrg11_snorm = 0x00000042
	astc4x4_unorm = 0x00000043
	astc4x4_unorm_srgb = 0x00000044
	astc5x4_unorm = 0x00000045
	astc5x4_unorm_srgb = 0x00000046
	astc5x5_unorm = 0x00000047
	astc5x5_unorm_srgb = 0x00000048
	astc6x5_unorm = 0x00000049
	astc6x5_unorm_srgb = 0x0000004A
	astc6x6_unorm = 0x0000004B
	astc6x6_unorm_srgb = 0x0000004C
	astc8x5_unorm = 0x0000004D
	astc8x5_unorm_srgb = 0x0000004E
	astc8x6_unorm = 0x0000004F
	astc8x6_unorm_srgb = 0x00000050
	astc8x8_unorm = 0x00000051
	astc8x8_unorm_srgb = 0x00000052
	astc10x5_unorm = 0x00000053
	astc10x5_unorm_srgb = 0x00000054
	astc10x6_unorm = 0x00000055
	astc10x6_unorm_srgb = 0x00000056
	astc10x8_unorm = 0x00000057
	astc10x8_unorm_srgb = 0x00000058
	astc10x10_unorm = 0x00000059
	astc10x10_unorm_srgb = 0x0000005A
	astc12x10_unorm = 0x0000005B
	astc12x10_unorm_srgb = 0x0000005C
	astc12x12_unorm = 0x0000005D
	astc12x12_unorm_srgb = 0x0000005E
	force32 = 0x7FFFFFFF
}

pub const TextureSampleType = enum(u32) {
	undefined = 0x00000000
	float = 0x00000001
	unfilterable_float = 0x00000002
	depth = 0x00000003
	sint = 0x00000004
	uint = 0x00000005
	force32 = 0x7FFFFFFF
}

pub const TextureViewDimension = enum(u32) {
	undefined = 0x00000000
	_1_d = 0x00000001
	_2_d = 0x00000002
	_2_d_array = 0x00000003
	cube = 0x00000004
	cube_array = 0x00000005
	_3_d = 0x00000006
	force32 = 0x7FFFFFFF
}

pub const VertexFormat = enum(u32) {
	undefined = 0x00000000
	uint8x2 = 0x00000001
	uint8x4 = 0x00000002
	sint8x2 = 0x00000003
	sint8x4 = 0x00000004
	unorm8x2 = 0x00000005
	unorm8x4 = 0x00000006
	snorm8x2 = 0x00000007
	snorm8x4 = 0x00000008
	uint16x2 = 0x00000009
	uint16x4 = 0x0000000A
	sint16x2 = 0x0000000B
	sint16x4 = 0x0000000C
	unorm16x2 = 0x0000000D
	unorm16x4 = 0x0000000E
	snorm16x2 = 0x0000000F
	snorm16x4 = 0x00000010
	float16x2 = 0x00000011
	float16x4 = 0x00000012
	float32 = 0x00000013
	float32x2 = 0x00000014
	float32x3 = 0x00000015
	float32x4 = 0x00000016
	uint32 = 0x00000017
	uint32x2 = 0x00000018
	uint32x3 = 0x00000019
	uint32x4 = 0x0000001A
	sint32 = 0x0000001B
	sint32x2 = 0x0000001C
	sint32x3 = 0x0000001D
	sint32x4 = 0x0000001E
	force32 = 0x7FFFFFFF
}

pub const VertexStepMode = enum(u32) {
	vertex = 0x00000000
	instance = 0x00000001
	vertex_buffer_not_used = 0x00000002
	force32 = 0x7FFFFFFF
}

pub const BufferUsage = enum(u32) {
	none = 0x00000000
	map_read = 0x00000001
	map_write = 0x00000002
	copy_src = 0x00000004
	copy_dst = 0x00000008
	index = 0x00000010
	vertex = 0x00000020
	uniform = 0x00000040
	storage = 0x00000080
	indirect = 0x00000100
	query_resolve = 0x00000200
	force32 = 0x7FFFFFFF
}

pub const ColorWriteMask = enum(u32) {
	none = 0x00000000
	red = 0x00000001
	green = 0x00000002
	blue = 0x00000004
	alpha = 0x00000008
	all = 0x0000000F
	force32 = 0x7FFFFFFF
}

pub const MapMode = enum(u32) {
	none = 0x00000000
	read = 0x00000001
	write = 0x00000002
	force32 = 0x7FFFFFFF
}

pub const ShaderStage = enum(u32) {
	none = 0x00000000
	vertex = 0x00000001
	fragment = 0x00000002
	compute = 0x00000004
	force32 = 0x7FFFFFFF
}

pub const TextureUsage = enum(u32) {
	none = 0x00000000
	copy_src = 0x00000001
	copy_dst = 0x00000002
	texture_binding = 0x00000004
	storage_binding = 0x00000008
	render_attachment = 0x00000010
	force32 = 0x7FFFFFFF
}

pub const NativeSType = enum(u32) {
	device_extras = 0x00030001
	required_limits_extras = 0x00030002
	pipeline_layout_extras = 0x00030003
	shader_module_glsl_descriptor = 0x00030004
	supported_limits_extras = 0x00030005
	instance_extras = 0x00030006
	bind_group_entry_extras = 0x00030007
	bind_group_layout_entry_extras = 0x00030008
	force32 = 0x7FFFFFFF
}

pub const NativeFeature = enum(u32) {
	push_constants = 0x00030001
	texture_adapter_specific_format_features = 0x00030002
	multi_draw_indirect = 0x00030003
	multi_draw_indirect_count = 0x00030004
	vertex_writable_storage = 0x00030005
	texture_binding_array = 0x00030006
	sampled_texture_and_storage_buffer_array_non_uniform_indexing = 0x00030007
	force32 = 0x7FFFFFFF
}

pub const LogLevel = enum(u32) {
	off = 0x00000000
	error = 0x00000001
	warn = 0x00000002
	info = 0x00000003
	debug = 0x00000004
	trace = 0x00000005
	force32 = 0x7FFFFFFF
}

pub const InstanceBackend = enum(u32) {
	vulkan = 1
	gl = 1
	metal = 1
	dx12 = 1
	dx11 = 1
	browser_web_gpu = 1
	primary = WGPUInstanceBackend_Vulkan
	secondary = WGPUInstanceBackend_GL
	none = 0x00000000
	force32 = 0x7FFFFFFF
}

pub const Dx12Compiler = enum(u32) {
	undefined = 0x00000000
	fxc = 0x00000001
	dxc = 0x00000002
	force32 = 0x7FFFFFFF
}

pub const Gles3MinorVersion = enum(u32) {
	automatic = 0x00000000
	version0 = 0x00000001
	version1 = 0x00000002
	version2 = 0x00000003
	force32 = 0x7FFFFFFF
}


// Callback types
pub const BufferMapCallback = *const fn(status: BufferMapAsyncStatus, userdata: ?*anyopaque) callconv(.C) void;
pub const CompilationInfoCallback = *const fn(status: CompilationInfoRequestStatus, compilationInfo: *const CompilationInfo, userdata: ?*anyopaque) callconv(.C) void;
pub const CreateComputePipelineAsyncCallback = *const fn(status: CreatePipelineAsyncStatus, pipeline: ComputePipeline, message: ?[*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;
pub const CreateRenderPipelineAsyncCallback = *const fn(status: CreatePipelineAsyncStatus, pipeline: RenderPipeline, message: ?[*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;
pub const DeviceLostCallback = *const fn(reason: DeviceLostReason, message: ?[*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;
pub const ErrorCallback = *const fn(type: ErrorType, message: ?[*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;
pub const QueueWorkDoneCallback = *const fn(status: QueueWorkDoneStatus, userdata: ?*anyopaque) callconv(.C) void;
pub const RequestAdapterCallback = *const fn(status: RequestAdapterStatus, adapter: Adapter, message: ?[*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;
pub const RequestDeviceCallback = *const fn(status: RequestDeviceStatus, device: Device, message: ?[*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;
pub const ProcDeviceSetUncapturedErrorCallback = *const fn(device: Device, callback: ErrorCallback, userdata: ?*anyopaque) callconv(.C) void;
pub const LogCallback = *const fn(level: LogLevel, message: ?[*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;

// Handles
extern fn wgpuCreateInstance(descriptor: [*c]const WGPUInstanceDescriptor) wgpu.Instance;
const WGPUInstanceDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
};
const WGPUChainedStruct = extern struct {
    next: [*c]const WGPUChainedStruct = null,
    sType: c_uint = 0,
};

pub const Adapter = *opaque {
	pub inline fn enumerateFeatures(self: Adapter, features: FeatureName *) usize {
		return wgpuAdapterEnumerateFeatures(self, features);
	}
	pub inline fn getLimits(self: Adapter, limits: SupportedLimits *) Bool {
		return wgpuAdapterGetLimits(self, limits);
	}
	pub inline fn getProperties(self: Adapter, properties: AdapterProperties *) void {
		return wgpuAdapterGetProperties(self, properties);
	}
	pub inline fn hasFeature(self: Adapter, feature: FeatureName) Bool {
		return wgpuAdapterHasFeature(self, feature);
	}
	pub inline fn requestDevice(self: Adapter, descriptor: *const DeviceDescriptor, callback: RequestDeviceCallback, userdata: ?*anyopaque) void {
		return wgpuAdapterRequestDevice(self, descriptor, callback, userdata);
	}
	pub inline fn reference(self: Adapter) void {
		return wgpuAdapterReference(self);
	}
	pub inline fn release(self: Adapter) void {
		return wgpuAdapterRelease(self);
	}
};

pub const BindGroup = *opaque {
	pub inline fn setLabel(self: BindGroup, label: ?[*:0]const u8) void {
		return wgpuBindGroupSetLabel(self, label);
	}
	pub inline fn reference(self: BindGroup) void {
		return wgpuBindGroupReference(self);
	}
	pub inline fn release(self: BindGroup) void {
		return wgpuBindGroupRelease(self);
	}
};

pub const BindGroupLayout = *opaque {
	pub inline fn setLabel(self: BindGroupLayout, label: ?[*:0]const u8) void {
		return wgpuBindGroupLayoutSetLabel(self, label);
	}
	pub inline fn reference(self: BindGroupLayout) void {
		return wgpuBindGroupLayoutReference(self);
	}
	pub inline fn release(self: BindGroupLayout) void {
		return wgpuBindGroupLayoutRelease(self);
	}
};

pub const Buffer = *opaque {
	pub inline fn destroy(self: Buffer) void {
		return wgpuBufferDestroy(self);
	}
	pub inline fn getConstMappedRange(self: Buffer, offset: usize, size: usize) *const anyopaque {
		return wgpuBufferGetConstMappedRange(self, offset, size);
	}
	pub inline fn getMapState(self: Buffer) BufferMapState {
		return wgpuBufferGetMapState(self);
	}
	pub inline fn getMappedRange(self: Buffer, offset: usize, size: usize) ?*anyopaque {
		return wgpuBufferGetMappedRange(self, offset, size);
	}
	pub inline fn getSize(self: Buffer) uint64_t {
		return wgpuBufferGetSize(self);
	}
	pub inline fn getUsage(self: Buffer) BufferUsageFlags {
		return wgpuBufferGetUsage(self);
	}
	pub inline fn mapAsync(self: Buffer, mode: MapModeFlags, offset: usize, size: usize, callback: BufferMapCallback, userdata: ?*anyopaque) void {
		return wgpuBufferMapAsync(self, mode, offset, size, callback, userdata);
	}
	pub inline fn setLabel(self: Buffer, label: ?[*:0]const u8) void {
		return wgpuBufferSetLabel(self, label);
	}
	pub inline fn unmap(self: Buffer) void {
		return wgpuBufferUnmap(self);
	}
	pub inline fn reference(self: Buffer) void {
		return wgpuBufferReference(self);
	}
	pub inline fn release(self: Buffer) void {
		return wgpuBufferRelease(self);
	}
};

pub const CommandBuffer = *opaque {
	pub inline fn setLabel(self: CommandBuffer, label: ?[*:0]const u8) void {
		return wgpuCommandBufferSetLabel(self, label);
	}
	pub inline fn reference(self: CommandBuffer) void {
		return wgpuCommandBufferReference(self);
	}
	pub inline fn release(self: CommandBuffer) void {
		return wgpuCommandBufferRelease(self);
	}
};

pub const CommandEncoder = *opaque {
	pub inline fn beginComputePass(self: CommandEncoder, descriptor: *const ComputePassDescriptor) ComputePassEncoder {
		return wgpuCommandEncoderBeginComputePass(self, descriptor);
	}
	pub inline fn beginRenderPass(self: CommandEncoder, descriptor: *const RenderPassDescriptor) RenderPassEncoder {
		return wgpuCommandEncoderBeginRenderPass(self, descriptor);
	}
	pub inline fn clearBuffer(self: CommandEncoder, buffer: Buffer, offset: uint64_t, size: uint64_t) void {
		return wgpuCommandEncoderClearBuffer(self, buffer, offset, size);
	}
	pub inline fn copyBufferToBuffer(self: CommandEncoder, source: Buffer, sourceOffset: uint64_t, destination: Buffer, destinationOffset: uint64_t, size: uint64_t) void {
		return wgpuCommandEncoderCopyBufferToBuffer(self, source, sourceOffset, destination, destinationOffset, size);
	}
	pub inline fn copyBufferToTexture(self: CommandEncoder, source: *const ImageCopyBuffer, destination: *const ImageCopyTexture, copySize: *const Extent3D) void {
		return wgpuCommandEncoderCopyBufferToTexture(self, source, destination, copySize);
	}
	pub inline fn copyTextureToBuffer(self: CommandEncoder, source: *const ImageCopyTexture, destination: *const ImageCopyBuffer, copySize: *const Extent3D) void {
		return wgpuCommandEncoderCopyTextureToBuffer(self, source, destination, copySize);
	}
	pub inline fn copyTextureToTexture(self: CommandEncoder, source: *const ImageCopyTexture, destination: *const ImageCopyTexture, copySize: *const Extent3D) void {
		return wgpuCommandEncoderCopyTextureToTexture(self, source, destination, copySize);
	}
	pub inline fn finish(self: CommandEncoder, descriptor: *const CommandBufferDescriptor) CommandBuffer {
		return wgpuCommandEncoderFinish(self, descriptor);
	}
	pub inline fn insertDebugMarker(self: CommandEncoder, markerLabel: ?[*:0]const u8) void {
		return wgpuCommandEncoderInsertDebugMarker(self, markerLabel);
	}
	pub inline fn popDebugGroup(self: CommandEncoder) void {
		return wgpuCommandEncoderPopDebugGroup(self);
	}
	pub inline fn pushDebugGroup(self: CommandEncoder, groupLabel: ?[*:0]const u8) void {
		return wgpuCommandEncoderPushDebugGroup(self, groupLabel);
	}
	pub inline fn resolveQuerySet(self: CommandEncoder, querySet: QuerySet, firstQuery: u32, queryCount: u32, destination: Buffer, destinationOffset: uint64_t) void {
		return wgpuCommandEncoderResolveQuerySet(self, querySet, firstQuery, queryCount, destination, destinationOffset);
	}
	pub inline fn setLabel(self: CommandEncoder, label: ?[*:0]const u8) void {
		return wgpuCommandEncoderSetLabel(self, label);
	}
	pub inline fn writeTimestamp(self: CommandEncoder, querySet: QuerySet, queryIndex: u32) void {
		return wgpuCommandEncoderWriteTimestamp(self, querySet, queryIndex);
	}
	pub inline fn reference(self: CommandEncoder) void {
		return wgpuCommandEncoderReference(self);
	}
	pub inline fn release(self: CommandEncoder) void {
		return wgpuCommandEncoderRelease(self);
	}
};

pub const ComputePassEncoder = *opaque {
	pub inline fn beginPipelineStatisticsQuery(self: ComputePassEncoder, querySet: QuerySet, queryIndex: u32) void {
		return wgpuComputePassEncoderBeginPipelineStatisticsQuery(self, querySet, queryIndex);
	}
	pub inline fn dispatchWorkgroups(self: ComputePassEncoder, workgroupCountX: u32, workgroupCountY: u32, workgroupCountZ: u32) void {
		return wgpuComputePassEncoderDispatchWorkgroups(self, workgroupCountX, workgroupCountY, workgroupCountZ);
	}
	pub inline fn dispatchWorkgroupsIndirect(self: ComputePassEncoder, indirectBuffer: Buffer, indirectOffset: uint64_t) void {
		return wgpuComputePassEncoderDispatchWorkgroupsIndirect(self, indirectBuffer, indirectOffset);
	}
	pub inline fn end(self: ComputePassEncoder) void {
		return wgpuComputePassEncoderEnd(self);
	}
	pub inline fn endPipelineStatisticsQuery(self: ComputePassEncoder) void {
		return wgpuComputePassEncoderEndPipelineStatisticsQuery(self);
	}
	pub inline fn insertDebugMarker(self: ComputePassEncoder, markerLabel: ?[*:0]const u8) void {
		return wgpuComputePassEncoderInsertDebugMarker(self, markerLabel);
	}
	pub inline fn popDebugGroup(self: ComputePassEncoder) void {
		return wgpuComputePassEncoderPopDebugGroup(self);
	}
	pub inline fn pushDebugGroup(self: ComputePassEncoder, groupLabel: ?[*:0]const u8) void {
		return wgpuComputePassEncoderPushDebugGroup(self, groupLabel);
	}
	pub inline fn setBindGroup(self: ComputePassEncoder, groupIndex: u32, group: BindGroup, dynamicOffsetCount: usize, dynamicOffsets: uint32_t const *) void {
		return wgpuComputePassEncoderSetBindGroup(self, groupIndex, group, dynamicOffsetCount, dynamicOffsets);
	}
	pub inline fn setLabel(self: ComputePassEncoder, label: ?[*:0]const u8) void {
		return wgpuComputePassEncoderSetLabel(self, label);
	}
	pub inline fn setPipeline(self: ComputePassEncoder, pipeline: ComputePipeline) void {
		return wgpuComputePassEncoderSetPipeline(self, pipeline);
	}
	pub inline fn reference(self: ComputePassEncoder) void {
		return wgpuComputePassEncoderReference(self);
	}
	pub inline fn release(self: ComputePassEncoder) void {
		return wgpuComputePassEncoderRelease(self);
	}
};

pub const ComputePipeline = *opaque {
	pub inline fn getBindGroupLayout(self: ComputePipeline, groupIndex: u32) BindGroupLayout {
		return wgpuComputePipelineGetBindGroupLayout(self, groupIndex);
	}
	pub inline fn setLabel(self: ComputePipeline, label: ?[*:0]const u8) void {
		return wgpuComputePipelineSetLabel(self, label);
	}
	pub inline fn reference(self: ComputePipeline) void {
		return wgpuComputePipelineReference(self);
	}
	pub inline fn release(self: ComputePipeline) void {
		return wgpuComputePipelineRelease(self);
	}
};

pub const Device = *opaque {
	pub inline fn createBindGroup(self: Device, descriptor: *const BindGroupDescriptor) BindGroup {
		return wgpuDeviceCreateBindGroup(self, descriptor);
	}
	pub inline fn createBindGroupLayout(self: Device, descriptor: *const BindGroupLayoutDescriptor) BindGroupLayout {
		return wgpuDeviceCreateBindGroupLayout(self, descriptor);
	}
	pub inline fn createBuffer(self: Device, descriptor: *const BufferDescriptor) Buffer {
		return wgpuDeviceCreateBuffer(self, descriptor);
	}
	pub inline fn createCommandEncoder(self: Device, descriptor: *const CommandEncoderDescriptor) CommandEncoder {
		return wgpuDeviceCreateCommandEncoder(self, descriptor);
	}
	pub inline fn createComputePipeline(self: Device, descriptor: *const ComputePipelineDescriptor) ComputePipeline {
		return wgpuDeviceCreateComputePipeline(self, descriptor);
	}
	pub inline fn createComputePipelineAsync(self: Device, descriptor: *const ComputePipelineDescriptor, callback: CreateComputePipelineAsyncCallback, userdata: ?*anyopaque) void {
		return wgpuDeviceCreateComputePipelineAsync(self, descriptor, callback, userdata);
	}
	pub inline fn createPipelineLayout(self: Device, descriptor: *const PipelineLayoutDescriptor) PipelineLayout {
		return wgpuDeviceCreatePipelineLayout(self, descriptor);
	}
	pub inline fn createQuerySet(self: Device, descriptor: *const QuerySetDescriptor) QuerySet {
		return wgpuDeviceCreateQuerySet(self, descriptor);
	}
	pub inline fn createRenderBundleEncoder(self: Device, descriptor: *const RenderBundleEncoderDescriptor) RenderBundleEncoder {
		return wgpuDeviceCreateRenderBundleEncoder(self, descriptor);
	}
	pub inline fn createRenderPipeline(self: Device, descriptor: *const RenderPipelineDescriptor) RenderPipeline {
		return wgpuDeviceCreateRenderPipeline(self, descriptor);
	}
	pub inline fn createRenderPipelineAsync(self: Device, descriptor: *const RenderPipelineDescriptor, callback: CreateRenderPipelineAsyncCallback, userdata: ?*anyopaque) void {
		return wgpuDeviceCreateRenderPipelineAsync(self, descriptor, callback, userdata);
	}
	pub inline fn createSampler(self: Device, descriptor: *const SamplerDescriptor) Sampler {
		return wgpuDeviceCreateSampler(self, descriptor);
	}
	pub inline fn createShaderModule(self: Device, descriptor: *const ShaderModuleDescriptor) ShaderModule {
		return wgpuDeviceCreateShaderModule(self, descriptor);
	}
	pub inline fn createTexture(self: Device, descriptor: *const TextureDescriptor) Texture {
		return wgpuDeviceCreateTexture(self, descriptor);
	}
	pub inline fn destroy(self: Device) void {
		return wgpuDeviceDestroy(self);
	}
	pub inline fn enumerateFeatures(self: Device, features: FeatureName *) usize {
		return wgpuDeviceEnumerateFeatures(self, features);
	}
	pub inline fn getLimits(self: Device, limits: SupportedLimits *) Bool {
		return wgpuDeviceGetLimits(self, limits);
	}
	pub inline fn getQueue(self: Device) Queue {
		return wgpuDeviceGetQueue(self);
	}
	pub inline fn hasFeature(self: Device, feature: FeatureName) Bool {
		return wgpuDeviceHasFeature(self, feature);
	}
	pub inline fn popErrorScope(self: Device, callback: ErrorCallback, userdata: ?*anyopaque) void {
		return wgpuDevicePopErrorScope(self, callback, userdata);
	}
	pub inline fn pushErrorScope(self: Device, filter: ErrorFilter) void {
		return wgpuDevicePushErrorScope(self, filter);
	}
	pub inline fn setLabel(self: Device, label: ?[*:0]const u8) void {
		return wgpuDeviceSetLabel(self, label);
	}
	pub inline fn setUncapturedErrorCallback(self: Device, callback: ErrorCallback, userdata: ?*anyopaque) void {
		return wgpuDeviceSetUncapturedErrorCallback(self, callback, userdata);
	}
	pub inline fn reference(self: Device) void {
		return wgpuDeviceReference(self);
	}
	pub inline fn release(self: Device) void {
		return wgpuDeviceRelease(self);
	}
};

pub const Instance = *opaque {
	pub inline fn createSurface(self: Instance, descriptor: *const SurfaceDescriptor) Surface {
		return wgpuInstanceCreateSurface(self, descriptor);
	}
	pub inline fn processEvents(self: Instance) void {
		return wgpuInstanceProcessEvents(self);
	}
	pub inline fn requestAdapter(self: Instance, options: *const RequestAdapterOptions, callback: RequestAdapterCallback, userdata: ?*anyopaque) void {
		return wgpuInstanceRequestAdapter(self, options, callback, userdata);
	}
	pub inline fn reference(self: Instance) void {
		return wgpuInstanceReference(self);
	}
	pub inline fn release(self: Instance) void {
		return wgpuInstanceRelease(self);
	}
};

pub const PipelineLayout = *opaque {
	pub inline fn setLabel(self: PipelineLayout, label: ?[*:0]const u8) void {
		return wgpuPipelineLayoutSetLabel(self, label);
	}
	pub inline fn reference(self: PipelineLayout) void {
		return wgpuPipelineLayoutReference(self);
	}
	pub inline fn release(self: PipelineLayout) void {
		return wgpuPipelineLayoutRelease(self);
	}
};

pub const QuerySet = *opaque {
	pub inline fn destroy(self: QuerySet) void {
		return wgpuQuerySetDestroy(self);
	}
	pub inline fn getCount(self: QuerySet) u32 {
		return wgpuQuerySetGetCount(self);
	}
	pub inline fn getType(self: QuerySet) QueryType {
		return wgpuQuerySetGetType(self);
	}
	pub inline fn setLabel(self: QuerySet, label: ?[*:0]const u8) void {
		return wgpuQuerySetSetLabel(self, label);
	}
	pub inline fn reference(self: QuerySet) void {
		return wgpuQuerySetReference(self);
	}
	pub inline fn release(self: QuerySet) void {
		return wgpuQuerySetRelease(self);
	}
};

pub const Queue = *opaque {
	pub inline fn onSubmittedWorkDone(self: Queue, callback: QueueWorkDoneCallback, userdata: ?*anyopaque) void {
		return wgpuQueueOnSubmittedWorkDone(self, callback, userdata);
	}
	pub inline fn setLabel(self: Queue, label: ?[*:0]const u8) void {
		return wgpuQueueSetLabel(self, label);
	}
	pub inline fn submit(self: Queue, commandCount: usize, commands: CommandBuffer const *) void {
		return wgpuQueueSubmit(self, commandCount, commands);
	}
	pub inline fn writeBuffer(self: Queue, buffer: Buffer, bufferOffset: uint64_t, data: *const anyopaque, size: usize) void {
		return wgpuQueueWriteBuffer(self, buffer, bufferOffset, data, size);
	}
	pub inline fn writeTexture(self: Queue, destination: *const ImageCopyTexture, data: *const anyopaque, dataSize: usize, dataLayout: *const TextureDataLayout, writeSize: *const Extent3D) void {
		return wgpuQueueWriteTexture(self, destination, data, dataSize, dataLayout, writeSize);
	}
	pub inline fn reference(self: Queue) void {
		return wgpuQueueReference(self);
	}
	pub inline fn release(self: Queue) void {
		return wgpuQueueRelease(self);
	}
};

pub const RenderBundle = *opaque {
	pub inline fn setLabel(self: RenderBundle, label: ?[*:0]const u8) void {
		return wgpuRenderBundleSetLabel(self, label);
	}
	pub inline fn reference(self: RenderBundle) void {
		return wgpuRenderBundleReference(self);
	}
	pub inline fn release(self: RenderBundle) void {
		return wgpuRenderBundleRelease(self);
	}
};

pub const RenderBundleEncoder = *opaque {
	pub inline fn draw(self: RenderBundleEncoder, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) void {
		return wgpuRenderBundleEncoderDraw(self, vertexCount, instanceCount, firstVertex, firstInstance);
	}
	pub inline fn drawIndexed(self: RenderBundleEncoder, indexCount: u32, instanceCount: u32, firstIndex: u32, baseVertex: int32_t, firstInstance: u32) void {
		return wgpuRenderBundleEncoderDrawIndexed(self, indexCount, instanceCount, firstIndex, baseVertex, firstInstance);
	}
	pub inline fn drawIndexedIndirect(self: RenderBundleEncoder, indirectBuffer: Buffer, indirectOffset: uint64_t) void {
		return wgpuRenderBundleEncoderDrawIndexedIndirect(self, indirectBuffer, indirectOffset);
	}
	pub inline fn drawIndirect(self: RenderBundleEncoder, indirectBuffer: Buffer, indirectOffset: uint64_t) void {
		return wgpuRenderBundleEncoderDrawIndirect(self, indirectBuffer, indirectOffset);
	}
	pub inline fn finish(self: RenderBundleEncoder, descriptor: *const RenderBundleDescriptor) RenderBundle {
		return wgpuRenderBundleEncoderFinish(self, descriptor);
	}
	pub inline fn insertDebugMarker(self: RenderBundleEncoder, markerLabel: ?[*:0]const u8) void {
		return wgpuRenderBundleEncoderInsertDebugMarker(self, markerLabel);
	}
	pub inline fn popDebugGroup(self: RenderBundleEncoder) void {
		return wgpuRenderBundleEncoderPopDebugGroup(self);
	}
	pub inline fn pushDebugGroup(self: RenderBundleEncoder, groupLabel: ?[*:0]const u8) void {
		return wgpuRenderBundleEncoderPushDebugGroup(self, groupLabel);
	}
	pub inline fn setBindGroup(self: RenderBundleEncoder, groupIndex: u32, group: BindGroup, dynamicOffsetCount: usize, dynamicOffsets: uint32_t const *) void {
		return wgpuRenderBundleEncoderSetBindGroup(self, groupIndex, group, dynamicOffsetCount, dynamicOffsets);
	}
	pub inline fn setIndexBuffer(self: RenderBundleEncoder, buffer: Buffer, format: IndexFormat, offset: uint64_t, size: uint64_t) void {
		return wgpuRenderBundleEncoderSetIndexBuffer(self, buffer, format, offset, size);
	}
	pub inline fn setLabel(self: RenderBundleEncoder, label: ?[*:0]const u8) void {
		return wgpuRenderBundleEncoderSetLabel(self, label);
	}
	pub inline fn setPipeline(self: RenderBundleEncoder, pipeline: RenderPipeline) void {
		return wgpuRenderBundleEncoderSetPipeline(self, pipeline);
	}
	pub inline fn setVertexBuffer(self: RenderBundleEncoder, slot: u32, buffer: Buffer, offset: uint64_t, size: uint64_t) void {
		return wgpuRenderBundleEncoderSetVertexBuffer(self, slot, buffer, offset, size);
	}
	pub inline fn reference(self: RenderBundleEncoder) void {
		return wgpuRenderBundleEncoderReference(self);
	}
	pub inline fn release(self: RenderBundleEncoder) void {
		return wgpuRenderBundleEncoderRelease(self);
	}
};

pub const RenderPassEncoder = *opaque {
	pub inline fn beginOcclusionQuery(self: RenderPassEncoder, queryIndex: u32) void {
		return wgpuRenderPassEncoderBeginOcclusionQuery(self, queryIndex);
	}
	pub inline fn beginPipelineStatisticsQuery(self: RenderPassEncoder, querySet: QuerySet, queryIndex: u32) void {
		return wgpuRenderPassEncoderBeginPipelineStatisticsQuery(self, querySet, queryIndex);
	}
	pub inline fn draw(self: RenderPassEncoder, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) void {
		return wgpuRenderPassEncoderDraw(self, vertexCount, instanceCount, firstVertex, firstInstance);
	}
	pub inline fn drawIndexed(self: RenderPassEncoder, indexCount: u32, instanceCount: u32, firstIndex: u32, baseVertex: int32_t, firstInstance: u32) void {
		return wgpuRenderPassEncoderDrawIndexed(self, indexCount, instanceCount, firstIndex, baseVertex, firstInstance);
	}
	pub inline fn drawIndexedIndirect(self: RenderPassEncoder, indirectBuffer: Buffer, indirectOffset: uint64_t) void {
		return wgpuRenderPassEncoderDrawIndexedIndirect(self, indirectBuffer, indirectOffset);
	}
	pub inline fn drawIndirect(self: RenderPassEncoder, indirectBuffer: Buffer, indirectOffset: uint64_t) void {
		return wgpuRenderPassEncoderDrawIndirect(self, indirectBuffer, indirectOffset);
	}
	pub inline fn end(self: RenderPassEncoder) void {
		return wgpuRenderPassEncoderEnd(self);
	}
	pub inline fn endOcclusionQuery(self: RenderPassEncoder) void {
		return wgpuRenderPassEncoderEndOcclusionQuery(self);
	}
	pub inline fn endPipelineStatisticsQuery(self: RenderPassEncoder) void {
		return wgpuRenderPassEncoderEndPipelineStatisticsQuery(self);
	}
	pub inline fn executeBundles(self: RenderPassEncoder, bundleCount: usize, bundles: RenderBundle const *) void {
		return wgpuRenderPassEncoderExecuteBundles(self, bundleCount, bundles);
	}
	pub inline fn insertDebugMarker(self: RenderPassEncoder, markerLabel: ?[*:0]const u8) void {
		return wgpuRenderPassEncoderInsertDebugMarker(self, markerLabel);
	}
	pub inline fn popDebugGroup(self: RenderPassEncoder) void {
		return wgpuRenderPassEncoderPopDebugGroup(self);
	}
	pub inline fn pushDebugGroup(self: RenderPassEncoder, groupLabel: ?[*:0]const u8) void {
		return wgpuRenderPassEncoderPushDebugGroup(self, groupLabel);
	}
	pub inline fn setBindGroup(self: RenderPassEncoder, groupIndex: u32, group: BindGroup, dynamicOffsetCount: usize, dynamicOffsets: uint32_t const *) void {
		return wgpuRenderPassEncoderSetBindGroup(self, groupIndex, group, dynamicOffsetCount, dynamicOffsets);
	}
	pub inline fn setBlendConstant(self: RenderPassEncoder, color: *const Color) void {
		return wgpuRenderPassEncoderSetBlendConstant(self, color);
	}
	pub inline fn setIndexBuffer(self: RenderPassEncoder, buffer: Buffer, format: IndexFormat, offset: uint64_t, size: uint64_t) void {
		return wgpuRenderPassEncoderSetIndexBuffer(self, buffer, format, offset, size);
	}
	pub inline fn setLabel(self: RenderPassEncoder, label: ?[*:0]const u8) void {
		return wgpuRenderPassEncoderSetLabel(self, label);
	}
	pub inline fn setPipeline(self: RenderPassEncoder, pipeline: RenderPipeline) void {
		return wgpuRenderPassEncoderSetPipeline(self, pipeline);
	}
	pub inline fn setScissorRect(self: RenderPassEncoder, x: u32, y: u32, width: u32, height: u32) void {
		return wgpuRenderPassEncoderSetScissorRect(self, x, y, width, height);
	}
	pub inline fn setStencilReference(self: RenderPassEncoder, reference: u32) void {
		return wgpuRenderPassEncoderSetStencilReference(self, reference);
	}
	pub inline fn setVertexBuffer(self: RenderPassEncoder, slot: u32, buffer: Buffer, offset: uint64_t, size: uint64_t) void {
		return wgpuRenderPassEncoderSetVertexBuffer(self, slot, buffer, offset, size);
	}
	pub inline fn setViewport(self: RenderPassEncoder, x: float, y: float, width: float, height: float, minDepth: float, maxDepth: float) void {
		return wgpuRenderPassEncoderSetViewport(self, x, y, width, height, minDepth, maxDepth);
	}
	pub inline fn reference(self: RenderPassEncoder) void {
		return wgpuRenderPassEncoderReference(self);
	}
	pub inline fn release(self: RenderPassEncoder) void {
		return wgpuRenderPassEncoderRelease(self);
	}
};

pub const RenderPipeline = *opaque {
	pub inline fn getBindGroupLayout(self: RenderPipeline, groupIndex: u32) BindGroupLayout {
		return wgpuRenderPipelineGetBindGroupLayout(self, groupIndex);
	}
	pub inline fn setLabel(self: RenderPipeline, label: ?[*:0]const u8) void {
		return wgpuRenderPipelineSetLabel(self, label);
	}
	pub inline fn reference(self: RenderPipeline) void {
		return wgpuRenderPipelineReference(self);
	}
	pub inline fn release(self: RenderPipeline) void {
		return wgpuRenderPipelineRelease(self);
	}
};

pub const Sampler = *opaque {
	pub inline fn setLabel(self: Sampler, label: ?[*:0]const u8) void {
		return wgpuSamplerSetLabel(self, label);
	}
	pub inline fn reference(self: Sampler) void {
		return wgpuSamplerReference(self);
	}
	pub inline fn release(self: Sampler) void {
		return wgpuSamplerRelease(self);
	}
};

pub const ShaderModule = *opaque {
	pub inline fn getCompilationInfo(self: ShaderModule, callback: CompilationInfoCallback, userdata: ?*anyopaque) void {
		return wgpuShaderModuleGetCompilationInfo(self, callback, userdata);
	}
	pub inline fn setLabel(self: ShaderModule, label: ?[*:0]const u8) void {
		return wgpuShaderModuleSetLabel(self, label);
	}
	pub inline fn reference(self: ShaderModule) void {
		return wgpuShaderModuleReference(self);
	}
	pub inline fn release(self: ShaderModule) void {
		return wgpuShaderModuleRelease(self);
	}
};

pub const Surface = *opaque {
	pub inline fn configure(self: Surface, config: *const SurfaceConfiguration) void {
		return wgpuSurfaceConfigure(self, config);
	}
	pub inline fn getCapabilities(self: Surface, adapter: Adapter, capabilities: SurfaceCapabilities *) void {
		return wgpuSurfaceGetCapabilities(self, adapter, capabilities);
	}
	pub inline fn getCurrentTexture(self: Surface, surfaceTexture: SurfaceTexture *) void {
		return wgpuSurfaceGetCurrentTexture(self, surfaceTexture);
	}
	pub inline fn getPreferredFormat(self: Surface, adapter: Adapter) TextureFormat {
		return wgpuSurfaceGetPreferredFormat(self, adapter);
	}
	pub inline fn present(self: Surface) void {
		return wgpuSurfacePresent(self);
	}
	pub inline fn unconfigure(self: Surface) void {
		return wgpuSurfaceUnconfigure(self);
	}
	pub inline fn reference(self: Surface) void {
		return wgpuSurfaceReference(self);
	}
	pub inline fn release(self: Surface) void {
		return wgpuSurfaceRelease(self);
	}
	pub inline fn capabilitiesFreeMembers(self: Surface) void {
		return wgpuSurfaceCapabilitiesFreeMembers(self);
	}
};

pub const Texture = *opaque {
	pub inline fn createView(self: Texture, descriptor: *const TextureViewDescriptor) TextureView {
		return wgpuTextureCreateView(self, descriptor);
	}
	pub inline fn destroy(self: Texture) void {
		return wgpuTextureDestroy(self);
	}
	pub inline fn getDepthOrArrayLayers(self: Texture) u32 {
		return wgpuTextureGetDepthOrArrayLayers(self);
	}
	pub inline fn getDimension(self: Texture) TextureDimension {
		return wgpuTextureGetDimension(self);
	}
	pub inline fn getFormat(self: Texture) TextureFormat {
		return wgpuTextureGetFormat(self);
	}
	pub inline fn getHeight(self: Texture) u32 {
		return wgpuTextureGetHeight(self);
	}
	pub inline fn getMipLevelCount(self: Texture) u32 {
		return wgpuTextureGetMipLevelCount(self);
	}
	pub inline fn getSampleCount(self: Texture) u32 {
		return wgpuTextureGetSampleCount(self);
	}
	pub inline fn getUsage(self: Texture) TextureUsageFlags {
		return wgpuTextureGetUsage(self);
	}
	pub inline fn getWidth(self: Texture) u32 {
		return wgpuTextureGetWidth(self);
	}
	pub inline fn setLabel(self: Texture, label: ?[*:0]const u8) void {
		return wgpuTextureSetLabel(self, label);
	}
	pub inline fn reference(self: Texture) void {
		return wgpuTextureReference(self);
	}
	pub inline fn release(self: Texture) void {
		return wgpuTextureRelease(self);
	}
};

pub const TextureView = *opaque {
	pub inline fn setLabel(self: TextureView, label: ?[*:0]const u8) void {
		return wgpuTextureViewSetLabel(self, label);
	}
	pub inline fn reference(self: TextureView) void {
		return wgpuTextureViewReference(self);
	}
	pub inline fn release(self: TextureView) void {
		return wgpuTextureViewRelease(self);
	}
};

