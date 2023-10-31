const std = @import("std");
const wgpu = @import("wgpu.zig");



// Descriptors
pub const AdapterProperties = wgpu.WGPUAdapterProperties;
pub const AdapterProperties = struct {
	nextInChain: *ChainedStructOut = std.mem.zeroes(*ChainedStructOut),
	vendorID: u32 = std.mem.zeroes(u32),
	vendorName: ?[*:0]const u8 = std.mem.zeroes(?[*:0]const u8),
	architecture: ?[*:0]const u8 = std.mem.zeroes(?[*:0]const u8),
	deviceID: u32 = std.mem.zeroes(u32),
	name: ?[*:0]const u8 = std.mem.zeroes(?[*:0]const u8),
	driverDescription: ?[*:0]const u8 = std.mem.zeroes(?[*:0]const u8),
	adapterType: AdapterType = std.mem.zeroes(AdapterType),
	backendType: BackendType = std.mem.zeroes(BackendType),
};

pub const BindGroupEntry = wgpu.WGPUBindGroupEntry;
pub const BindGroupEntry = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	binding: u32 = std.mem.zeroes(u32),
	buffer: Buffer = std.mem.zeroes(Buffer),
	offset: u64 = std.mem.zeroes(u64),
	size: u64 = std.mem.zeroes(u64),
	sampler: Sampler = std.mem.zeroes(Sampler),
	textureView: TextureView = std.mem.zeroes(TextureView),
};

pub const BufferBindingLayout = wgpu.WGPUBufferBindingLayout;
pub const BufferBindingLayout = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	type: BufferBindingType = std.mem.zeroes(BufferBindingType),
	hasDynamicOffset: bool = std.mem.zeroes(bool),
	minBindingSize: u64 = std.mem.zeroes(u64),
};

pub const BufferDescriptor = wgpu.WGPUBufferDescriptor;
pub const BufferDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
	usage: BufferUsage = std.mem.zeroes(BufferUsage),
	size: u64 = std.mem.zeroes(u64),
	mappedAtCreation: bool = std.mem.zeroes(bool),
};

pub const CommandBufferDescriptor = wgpu.WGPUCommandBufferDescriptor;
pub const CommandBufferDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
};

pub const CommandEncoderDescriptor = wgpu.WGPUCommandEncoderDescriptor;
pub const CommandEncoderDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
};

pub const CompilationMessage = wgpu.WGPUCompilationMessage;
pub const CompilationMessage = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	message: *const  char = std.mem.zeroes(*const  char),
	type: CompilationMessageType = std.mem.zeroes(CompilationMessageType),
	lineNum: u64 = std.mem.zeroes(u64),
	linePos: u64 = std.mem.zeroes(u64),
	offset: u64 = std.mem.zeroes(u64),
	length: u64 = std.mem.zeroes(u64),
	utf16LinePos: u64 = std.mem.zeroes(u64),
	utf16Offset: u64 = std.mem.zeroes(u64),
	utf16Length: u64 = std.mem.zeroes(u64),
};

pub const ConstantEntry = wgpu.WGPUConstantEntry;
pub const ConstantEntry = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	key: ?[*:0]const u8 = std.mem.zeroes(?[*:0]const u8),
	value: double = std.mem.zeroes(double),
};

pub const InstanceDescriptor = wgpu.WGPUInstanceDescriptor;
pub const InstanceDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
};

pub const MultisampleState = wgpu.WGPUMultisampleState;
pub const MultisampleState = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	count: u32 = std.mem.zeroes(u32),
	mask: u32 = std.mem.zeroes(u32),
	alphaToCoverageEnabled: bool = std.mem.zeroes(bool),
};

pub const PipelineLayoutDescriptor = wgpu.WGPUPipelineLayoutDescriptor;
pub const PipelineLayoutDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
	bindGroupLayouts: *const BindGroupLayout = std.mem.zeroes(*const BindGroupLayout),
};

pub const PrimitiveState = wgpu.WGPUPrimitiveState;
pub const PrimitiveState = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	topology: PrimitiveTopology = std.mem.zeroes(PrimitiveTopology),
	stripIndexFormat: IndexFormat = std.mem.zeroes(IndexFormat),
	frontFace: FrontFace = std.mem.zeroes(FrontFace),
	cullMode: CullMode = std.mem.zeroes(CullMode),
};

pub const QuerySetDescriptor = wgpu.WGPUQuerySetDescriptor;
pub const QuerySetDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
	type: QueryType = std.mem.zeroes(QueryType),
	count: u32 = std.mem.zeroes(u32),
	pipelineStatistics: *const PipelineStatisticName = std.mem.zeroes(*const PipelineStatisticName),
};

pub const QueueDescriptor = wgpu.WGPUQueueDescriptor;
pub const QueueDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
};

pub const RenderBundleDescriptor = wgpu.WGPURenderBundleDescriptor;
pub const RenderBundleDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
};

pub const RenderBundleEncoderDescriptor = wgpu.WGPURenderBundleEncoderDescriptor;
pub const RenderBundleEncoderDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
	colorFormats: *const TextureFormat = std.mem.zeroes(*const TextureFormat),
	depthStencilFormat: TextureFormat = std.mem.zeroes(TextureFormat),
	depthReadOnly: bool = std.mem.zeroes(bool),
	stencilReadOnly: bool = std.mem.zeroes(bool),
	sampleCount: u32 = std.mem.zeroes(u32),
};

pub const RequestAdapterOptions = wgpu.WGPURequestAdapterOptions;
pub const RequestAdapterOptions = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	compatibleSurface: Surface = std.mem.zeroes(Surface),
	powerPreference: PowerPreference = std.mem.zeroes(PowerPreference),
	backendType: BackendType = std.mem.zeroes(BackendType),
	forceFallbackAdapter: bool = std.mem.zeroes(bool),
};

pub const SamplerBindingLayout = wgpu.WGPUSamplerBindingLayout;
pub const SamplerBindingLayout = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	type: SamplerBindingType = std.mem.zeroes(SamplerBindingType),
};

pub const SamplerDescriptor = wgpu.WGPUSamplerDescriptor;
pub const SamplerDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
	addressModeU: AddressMode = std.mem.zeroes(AddressMode),
	addressModeV: AddressMode = std.mem.zeroes(AddressMode),
	addressModeW: AddressMode = std.mem.zeroes(AddressMode),
	magFilter: FilterMode = std.mem.zeroes(FilterMode),
	minFilter: FilterMode = std.mem.zeroes(FilterMode),
	mipmapFilter: MipmapFilterMode = std.mem.zeroes(MipmapFilterMode),
	lodMinClamp: f32 = std.mem.zeroes(f32),
	lodMaxClamp: f32 = std.mem.zeroes(f32),
	compare: CompareFunction = std.mem.zeroes(CompareFunction),
	maxAnisotropy: uint16_t = std.mem.zeroes(uint16_t),
};

pub const ShaderModuleCompilationHint = wgpu.WGPUShaderModuleCompilationHint;
pub const ShaderModuleCompilationHint = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	entryPoint: ?[*:0]const u8 = std.mem.zeroes(?[*:0]const u8),
	layout: PipelineLayout = std.mem.zeroes(PipelineLayout),
};

pub const StorageTextureBindingLayout = wgpu.WGPUStorageTextureBindingLayout;
pub const StorageTextureBindingLayout = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	access: StorageTextureAccess = std.mem.zeroes(StorageTextureAccess),
	format: TextureFormat = std.mem.zeroes(TextureFormat),
	viewDimension: TextureViewDimension = std.mem.zeroes(TextureViewDimension),
};

pub const SurfaceCapabilities = wgpu.WGPUSurfaceCapabilities;
pub const SurfaceCapabilities = struct {
	nextInChain: *ChainedStructOut = std.mem.zeroes(*ChainedStructOut),
	formats: *TextureFormat = std.mem.zeroes(*TextureFormat),
	presentModes: *PresentMode = std.mem.zeroes(*PresentMode),
	alphaModes: *CompositeAlphaMode = std.mem.zeroes(*CompositeAlphaMode),
};

pub const SurfaceConfiguration = wgpu.WGPUSurfaceConfiguration;
pub const SurfaceConfiguration = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	device: Device = std.mem.zeroes(Device),
	format: TextureFormat = std.mem.zeroes(TextureFormat),
	usage: TextureUsage = std.mem.zeroes(TextureUsage),
	viewFormats: *const TextureFormat = std.mem.zeroes(*const TextureFormat),
	alphaMode: CompositeAlphaMode = std.mem.zeroes(CompositeAlphaMode),
	width: u32 = std.mem.zeroes(u32),
	height: u32 = std.mem.zeroes(u32),
	presentMode: PresentMode = std.mem.zeroes(PresentMode),
};

pub const SurfaceDescriptor = wgpu.WGPUSurfaceDescriptor;
pub const SurfaceDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
};

pub const TextureBindingLayout = wgpu.WGPUTextureBindingLayout;
pub const TextureBindingLayout = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	sampleType: TextureSampleType = std.mem.zeroes(TextureSampleType),
	viewDimension: TextureViewDimension = std.mem.zeroes(TextureViewDimension),
	multisampled: bool = std.mem.zeroes(bool),
};

pub const TextureDataLayout = wgpu.WGPUTextureDataLayout;
pub const TextureDataLayout = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	offset: u64 = std.mem.zeroes(u64),
	bytesPerRow: u32 = std.mem.zeroes(u32),
	rowsPerImage: u32 = std.mem.zeroes(u32),
};

pub const TextureViewDescriptor = wgpu.WGPUTextureViewDescriptor;
pub const TextureViewDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
	format: TextureFormat = std.mem.zeroes(TextureFormat),
	dimension: TextureViewDimension = std.mem.zeroes(TextureViewDimension),
	baseMipLevel: u32 = std.mem.zeroes(u32),
	baseArrayLayer: u32 = std.mem.zeroes(u32),
	aspect: TextureAspect = std.mem.zeroes(TextureAspect),
	mipLevelCount: u32 = std.mem.zeroes(u32),
	arrayLayerCount: u32 = std.mem.zeroes(u32),
};

pub const BindGroupDescriptor = wgpu.WGPUBindGroupDescriptor;
pub const BindGroupDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
	layout: BindGroupLayout = std.mem.zeroes(BindGroupLayout),
	entries: *const BindGroupEntry = std.mem.zeroes(*const BindGroupEntry),
};

pub const BindGroupLayoutEntry = wgpu.WGPUBindGroupLayoutEntry;
pub const BindGroupLayoutEntry = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	binding: u32 = std.mem.zeroes(u32),
	visibility: ShaderStage = std.mem.zeroes(ShaderStage),
	buffer: BufferBindingLayout = std.mem.zeroes(BufferBindingLayout),
	sampler: SamplerBindingLayout = std.mem.zeroes(SamplerBindingLayout),
	texture: TextureBindingLayout = std.mem.zeroes(TextureBindingLayout),
	storageTexture: StorageTextureBindingLayout = std.mem.zeroes(StorageTextureBindingLayout),
};

pub const CompilationInfo = wgpu.WGPUCompilationInfo;
pub const CompilationInfo = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	messages: *const CompilationMessage = std.mem.zeroes(*const CompilationMessage),
};

pub const ComputePassDescriptor = wgpu.WGPUComputePassDescriptor;
pub const ComputePassDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
	timestampWrites: *const  ComputePassTimestampWrites = std.mem.zeroes(*const  ComputePassTimestampWrites),
};

pub const DepthStencilState = wgpu.WGPUDepthStencilState;
pub const DepthStencilState = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	format: TextureFormat = std.mem.zeroes(TextureFormat),
	depthWriteEnabled: bool = std.mem.zeroes(bool),
	depthCompare: CompareFunction = std.mem.zeroes(CompareFunction),
	stencilFront: StencilFaceState = std.mem.zeroes(StencilFaceState),
	stencilBack: StencilFaceState = std.mem.zeroes(StencilFaceState),
	stencilReadMask: u32 = std.mem.zeroes(u32),
	stencilWriteMask: u32 = std.mem.zeroes(u32),
	depthBias: i32 = std.mem.zeroes(i32),
	depthBiasSlopeScale: f32 = std.mem.zeroes(f32),
	depthBiasClamp: f32 = std.mem.zeroes(f32),
};

pub const ImageCopyBuffer = wgpu.WGPUImageCopyBuffer;
pub const ImageCopyBuffer = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	layout: TextureDataLayout = std.mem.zeroes(TextureDataLayout),
	buffer: Buffer = std.mem.zeroes(Buffer),
};

pub const ImageCopyTexture = wgpu.WGPUImageCopyTexture;
pub const ImageCopyTexture = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	texture: Texture = std.mem.zeroes(Texture),
	mipLevel: u32 = std.mem.zeroes(u32),
	origin: Origin3D = std.mem.zeroes(Origin3D),
	aspect: TextureAspect = std.mem.zeroes(TextureAspect),
};

pub const ProgrammableStageDescriptor = wgpu.WGPUProgrammableStageDescriptor;
pub const ProgrammableStageDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	module: ShaderModule = std.mem.zeroes(ShaderModule),
	entryPoint: ?[*:0]const u8 = std.mem.zeroes(?[*:0]const u8),
	constants: *const ConstantEntry = std.mem.zeroes(*const ConstantEntry),
};

pub const RenderPassColorAttachment = wgpu.WGPURenderPassColorAttachment;
pub const RenderPassColorAttachment = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	view: TextureView = std.mem.zeroes(TextureView),
	resolveTarget: TextureView = std.mem.zeroes(TextureView),
	loadOp: LoadOp = std.mem.zeroes(LoadOp),
	storeOp: StoreOp = std.mem.zeroes(StoreOp),
	clearValue: Color = std.mem.zeroes(Color),
};

pub const RequiredLimits = wgpu.WGPURequiredLimits;
pub const RequiredLimits = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	limits: Limits = std.mem.zeroes(Limits),
};

pub const ShaderModuleDescriptor = wgpu.WGPUShaderModuleDescriptor;
pub const ShaderModuleDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
	hints: *const ShaderModuleCompilationHint = std.mem.zeroes(*const ShaderModuleCompilationHint),
};

pub const SupportedLimits = wgpu.WGPUSupportedLimits;
pub const SupportedLimits = struct {
	nextInChain: *ChainedStructOut = std.mem.zeroes(*ChainedStructOut),
	limits: Limits = std.mem.zeroes(Limits),
};

pub const TextureDescriptor = wgpu.WGPUTextureDescriptor;
pub const TextureDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
	usage: TextureUsage = std.mem.zeroes(TextureUsage),
	dimension: TextureDimension = std.mem.zeroes(TextureDimension),
	size: Extent3D = std.mem.zeroes(Extent3D),
	format: TextureFormat = std.mem.zeroes(TextureFormat),
	viewFormats: *const TextureFormat = std.mem.zeroes(*const TextureFormat),
	mipLevelCount: u32 = std.mem.zeroes(u32),
	sampleCount: u32 = std.mem.zeroes(u32),
};

pub const BindGroupLayoutDescriptor = wgpu.WGPUBindGroupLayoutDescriptor;
pub const BindGroupLayoutDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
	entries: *const BindGroupLayoutEntry = std.mem.zeroes(*const BindGroupLayoutEntry),
};

pub const ColorTargetState = wgpu.WGPUColorTargetState;
pub const ColorTargetState = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	format: TextureFormat = std.mem.zeroes(TextureFormat),
	blend: *const  BlendState = std.mem.zeroes(*const  BlendState),
	writeMask: ColorWriteMask = std.mem.zeroes(ColorWriteMask),
};

pub const ComputePipelineDescriptor = wgpu.WGPUComputePipelineDescriptor;
pub const ComputePipelineDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
	layout: PipelineLayout = std.mem.zeroes(PipelineLayout),
	compute: ProgrammableStageDescriptor = std.mem.zeroes(ProgrammableStageDescriptor),
};

pub const DeviceDescriptor = wgpu.WGPUDeviceDescriptor;
pub const DeviceDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
	requiredFeatures: *const FeatureName = std.mem.zeroes(*const FeatureName),
	requiredLimits: *const  RequiredLimits = std.mem.zeroes(*const  RequiredLimits),
	defaultQueue: QueueDescriptor = std.mem.zeroes(QueueDescriptor),
	deviceLostCallback: DeviceLostCallback = std.mem.zeroes(DeviceLostCallback),
	deviceLostUserdata: ?*anyopaque = std.mem.zeroes(?*anyopaque),
};

pub const RenderPassDescriptor = wgpu.WGPURenderPassDescriptor;
pub const RenderPassDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
	colorAttachments: *const RenderPassColorAttachment = std.mem.zeroes(*const RenderPassColorAttachment),
	depthStencilAttachment: *const  RenderPassDepthStencilAttachment = std.mem.zeroes(*const  RenderPassDepthStencilAttachment),
	occlusionQuerySet: QuerySet = std.mem.zeroes(QuerySet),
	timestampWrites: *const  RenderPassTimestampWrites = std.mem.zeroes(*const  RenderPassTimestampWrites),
};

pub const VertexState = wgpu.WGPUVertexState;
pub const VertexState = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	module: ShaderModule = std.mem.zeroes(ShaderModule),
	entryPoint: ?[*:0]const u8 = std.mem.zeroes(?[*:0]const u8),
	constants: *const ConstantEntry = std.mem.zeroes(*const ConstantEntry),
	buffers: *const VertexBufferLayout = std.mem.zeroes(*const VertexBufferLayout),
};

pub const FragmentState = wgpu.WGPUFragmentState;
pub const FragmentState = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	module: ShaderModule = std.mem.zeroes(ShaderModule),
	entryPoint: ?[*:0]const u8 = std.mem.zeroes(?[*:0]const u8),
	constants: *const ConstantEntry = std.mem.zeroes(*const ConstantEntry),
	targets: *const ColorTargetState = std.mem.zeroes(*const ColorTargetState),
};

pub const RenderPipelineDescriptor = wgpu.WGPURenderPipelineDescriptor;
pub const RenderPipelineDescriptor = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	label: *const  char = std.mem.zeroes(*const  char),
	layout: PipelineLayout = std.mem.zeroes(PipelineLayout),
	vertex: VertexState = std.mem.zeroes(VertexState),
	primitive: PrimitiveState = std.mem.zeroes(PrimitiveState),
	depthStencil: *const  DepthStencilState = std.mem.zeroes(*const  DepthStencilState),
	multisample: MultisampleState = std.mem.zeroes(MultisampleState),
	fragment: *const  FragmentState = std.mem.zeroes(*const  FragmentState),
};

pub const InstanceEnumerateAdapterOptions = wgpu.WGPUInstanceEnumerateAdapterOptions;
pub const InstanceEnumerateAdapterOptions = struct {
	nextInChain: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	backends: InstanceBackend = std.mem.zeroes(InstanceBackend),
};


// Structs
pub const ChainedStruct = wgpu.WGPUChainedStruct;
pub const ChainedStruct = struct {
	next: *const ChainedStruct = std.mem.zeroes(*const ChainedStruct),
	sType: SType = std.mem.zeroes(SType),
};

pub const ChainedStructOut = wgpu.WGPUChainedStructOut;
pub const ChainedStructOut = struct {
	next: *ChainedStructOut = std.mem.zeroes(*ChainedStructOut),
	sType: SType = std.mem.zeroes(SType),
};

pub const BlendComponent = wgpu.WGPUBlendComponent;
pub const BlendComponent = struct {
	operation: BlendOperation = std.mem.zeroes(BlendOperation),
	srcFactor: BlendFactor = std.mem.zeroes(BlendFactor),
	dstFactor: BlendFactor = std.mem.zeroes(BlendFactor),
};

pub const Color = wgpu.WGPUColor;
pub const Color = struct {
	r: double = std.mem.zeroes(double),
	g: double = std.mem.zeroes(double),
	b: double = std.mem.zeroes(double),
	a: double = std.mem.zeroes(double),
};

pub const ComputePassTimestampWrites = wgpu.WGPUComputePassTimestampWrites;
pub const ComputePassTimestampWrites = struct {
	querySet: QuerySet = std.mem.zeroes(QuerySet),
	beginningOfPassWriteIndex: u32 = std.mem.zeroes(u32),
	endOfPassWriteIndex: u32 = std.mem.zeroes(u32),
};

pub const Extent3D = wgpu.WGPUExtent3D;
pub const Extent3D = struct {
	width: u32 = std.mem.zeroes(u32),
	height: u32 = std.mem.zeroes(u32),
	depthOrArrayLayers: u32 = std.mem.zeroes(u32),
};

pub const Limits = wgpu.WGPULimits;
pub const Limits = struct {
	maxTextureDimension1D: u32 = std.mem.zeroes(u32),
	maxTextureDimension2D: u32 = std.mem.zeroes(u32),
	maxTextureDimension3D: u32 = std.mem.zeroes(u32),
	maxTextureArrayLayers: u32 = std.mem.zeroes(u32),
	maxBindGroups: u32 = std.mem.zeroes(u32),
	maxBindGroupsPlusVertexBuffers: u32 = std.mem.zeroes(u32),
	maxBindingsPerBindGroup: u32 = std.mem.zeroes(u32),
	maxDynamicUniformBuffersPerPipelineLayout: u32 = std.mem.zeroes(u32),
	maxDynamicStorageBuffersPerPipelineLayout: u32 = std.mem.zeroes(u32),
	maxSampledTexturesPerShaderStage: u32 = std.mem.zeroes(u32),
	maxSamplersPerShaderStage: u32 = std.mem.zeroes(u32),
	maxStorageBuffersPerShaderStage: u32 = std.mem.zeroes(u32),
	maxStorageTexturesPerShaderStage: u32 = std.mem.zeroes(u32),
	maxUniformBuffersPerShaderStage: u32 = std.mem.zeroes(u32),
	maxUniformBufferBindingSize: u64 = std.mem.zeroes(u64),
	maxStorageBufferBindingSize: u64 = std.mem.zeroes(u64),
	minUniformBufferOffsetAlignment: u32 = std.mem.zeroes(u32),
	minStorageBufferOffsetAlignment: u32 = std.mem.zeroes(u32),
	maxVertexBuffers: u32 = std.mem.zeroes(u32),
	maxBufferSize: u64 = std.mem.zeroes(u64),
	maxVertexAttributes: u32 = std.mem.zeroes(u32),
	maxVertexBufferArrayStride: u32 = std.mem.zeroes(u32),
	maxInterStageShaderComponents: u32 = std.mem.zeroes(u32),
	maxInterStageShaderVariables: u32 = std.mem.zeroes(u32),
	maxColorAttachments: u32 = std.mem.zeroes(u32),
	maxColorAttachmentBytesPerSample: u32 = std.mem.zeroes(u32),
	maxComputeWorkgroupStorageSize: u32 = std.mem.zeroes(u32),
	maxComputeInvocationsPerWorkgroup: u32 = std.mem.zeroes(u32),
	maxComputeWorkgroupSizeX: u32 = std.mem.zeroes(u32),
	maxComputeWorkgroupSizeY: u32 = std.mem.zeroes(u32),
	maxComputeWorkgroupSizeZ: u32 = std.mem.zeroes(u32),
	maxComputeWorkgroupsPerDimension: u32 = std.mem.zeroes(u32),
};

pub const Origin3D = wgpu.WGPUOrigin3D;
pub const Origin3D = struct {
	x: u32 = std.mem.zeroes(u32),
	y: u32 = std.mem.zeroes(u32),
	z: u32 = std.mem.zeroes(u32),
};

pub const PrimitiveDepthClipControl = wgpu.WGPUPrimitiveDepthClipControl;
pub const PrimitiveDepthClipControl = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	unclippedDepth: bool = std.mem.zeroes(bool),
};

pub const RenderPassDepthStencilAttachment = wgpu.WGPURenderPassDepthStencilAttachment;
pub const RenderPassDepthStencilAttachment = struct {
	view: TextureView = std.mem.zeroes(TextureView),
	depthLoadOp: LoadOp = std.mem.zeroes(LoadOp),
	depthStoreOp: StoreOp = std.mem.zeroes(StoreOp),
	depthClearValue: f32 = std.mem.zeroes(f32),
	depthReadOnly: bool = std.mem.zeroes(bool),
	stencilLoadOp: LoadOp = std.mem.zeroes(LoadOp),
	stencilStoreOp: StoreOp = std.mem.zeroes(StoreOp),
	stencilClearValue: u32 = std.mem.zeroes(u32),
	stencilReadOnly: bool = std.mem.zeroes(bool),
};

pub const RenderPassDescriptorMaxDrawCount = wgpu.WGPURenderPassDescriptorMaxDrawCount;
pub const RenderPassDescriptorMaxDrawCount = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	maxDrawCount: u64 = std.mem.zeroes(u64),
};

pub const RenderPassTimestampWrites = wgpu.WGPURenderPassTimestampWrites;
pub const RenderPassTimestampWrites = struct {
	querySet: QuerySet = std.mem.zeroes(QuerySet),
	beginningOfPassWriteIndex: u32 = std.mem.zeroes(u32),
	endOfPassWriteIndex: u32 = std.mem.zeroes(u32),
};

pub const ShaderModuleSPIRVDescriptor = wgpu.WGPUShaderModuleSPIRVDescriptor;
pub const ShaderModuleSPIRVDescriptor = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	codeSize: u32 = std.mem.zeroes(u32),
	code: ?[*]const u32 = std.mem.zeroes(?[*]const u32),
};

pub const ShaderModuleWGSLDescriptor = wgpu.WGPUShaderModuleWGSLDescriptor;
pub const ShaderModuleWGSLDescriptor = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	code: ?[*:0]const u8 = std.mem.zeroes(?[*:0]const u8),
};

pub const StencilFaceState = wgpu.WGPUStencilFaceState;
pub const StencilFaceState = struct {
	compare: CompareFunction = std.mem.zeroes(CompareFunction),
	failOp: StencilOperation = std.mem.zeroes(StencilOperation),
	depthFailOp: StencilOperation = std.mem.zeroes(StencilOperation),
	passOp: StencilOperation = std.mem.zeroes(StencilOperation),
};

pub const SurfaceDescriptorFromAndroidNativeWindow = wgpu.WGPUSurfaceDescriptorFromAndroidNativeWindow;
pub const SurfaceDescriptorFromAndroidNativeWindow = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	window: ?*anyopaque = std.mem.zeroes(?*anyopaque),
};

pub const SurfaceDescriptorFromCanvasHTMLSelector = wgpu.WGPUSurfaceDescriptorFromCanvasHTMLSelector;
pub const SurfaceDescriptorFromCanvasHTMLSelector = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	selector: ?[*:0]const u8 = std.mem.zeroes(?[*:0]const u8),
};

pub const SurfaceDescriptorFromMetalLayer = wgpu.WGPUSurfaceDescriptorFromMetalLayer;
pub const SurfaceDescriptorFromMetalLayer = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	layer: ?*anyopaque = std.mem.zeroes(?*anyopaque),
};

pub const SurfaceDescriptorFromWaylandSurface = wgpu.WGPUSurfaceDescriptorFromWaylandSurface;
pub const SurfaceDescriptorFromWaylandSurface = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	display: ?*anyopaque = std.mem.zeroes(?*anyopaque),
	surface: ?*anyopaque = std.mem.zeroes(?*anyopaque),
};

pub const SurfaceDescriptorFromWindowsHWND = wgpu.WGPUSurfaceDescriptorFromWindowsHWND;
pub const SurfaceDescriptorFromWindowsHWND = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	hinstance: ?*anyopaque = std.mem.zeroes(?*anyopaque),
	hwnd: ?*anyopaque = std.mem.zeroes(?*anyopaque),
};

pub const SurfaceDescriptorFromXcbWindow = wgpu.WGPUSurfaceDescriptorFromXcbWindow;
pub const SurfaceDescriptorFromXcbWindow = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	connection: ?*anyopaque = std.mem.zeroes(?*anyopaque),
	window: u32 = std.mem.zeroes(u32),
};

pub const SurfaceDescriptorFromXlibWindow = wgpu.WGPUSurfaceDescriptorFromXlibWindow;
pub const SurfaceDescriptorFromXlibWindow = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	display: ?*anyopaque = std.mem.zeroes(?*anyopaque),
	window: u32 = std.mem.zeroes(u32),
};

pub const SurfaceTexture = wgpu.WGPUSurfaceTexture;
pub const SurfaceTexture = struct {
	texture: Texture = std.mem.zeroes(Texture),
	suboptimal: bool = std.mem.zeroes(bool),
	status: SurfaceGetCurrentTextureStatus = std.mem.zeroes(SurfaceGetCurrentTextureStatus),
};

pub const VertexAttribute = wgpu.WGPUVertexAttribute;
pub const VertexAttribute = struct {
	format: VertexFormat = std.mem.zeroes(VertexFormat),
	offset: u64 = std.mem.zeroes(u64),
	shaderLocation: u32 = std.mem.zeroes(u32),
};

pub const BlendState = wgpu.WGPUBlendState;
pub const BlendState = struct {
	color: BlendComponent = std.mem.zeroes(BlendComponent),
	alpha: BlendComponent = std.mem.zeroes(BlendComponent),
};

pub const VertexBufferLayout = wgpu.WGPUVertexBufferLayout;
pub const VertexBufferLayout = struct {
	arrayStride: u64 = std.mem.zeroes(u64),
	stepMode: VertexStepMode = std.mem.zeroes(VertexStepMode),
	attributes: *const VertexAttribute = std.mem.zeroes(*const VertexAttribute),
};

pub const InstanceExtras = wgpu.WGPUInstanceExtras;
pub const InstanceExtras = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	backends: InstanceBackend = std.mem.zeroes(InstanceBackend),
	flags: Instance = std.mem.zeroes(Instance),
	dx12ShaderCompiler: Dx12Compiler = std.mem.zeroes(Dx12Compiler),
	gles3MinorVersion: Gles3MinorVersion = std.mem.zeroes(Gles3MinorVersion),
	dxilPath: *t char = std.mem.zeroes(*t char),
	dxcPath: *t char = std.mem.zeroes(*t char),
};

pub const DeviceExtras = wgpu.WGPUDeviceExtras;
pub const DeviceExtras = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	tracePath: *t char = std.mem.zeroes(*t char),
};

pub const NativeLimits = wgpu.WGPUNativeLimits;
pub const NativeLimits = struct {
	maxPushConstantSize: u32 = std.mem.zeroes(u32),
	maxNonSamplerBindings: u32 = std.mem.zeroes(u32),
};

pub const RequiredLimitsExtras = wgpu.WGPURequiredLimitsExtras;
pub const RequiredLimitsExtras = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	limits: NativeLimits = std.mem.zeroes(NativeLimits),
};

pub const SupportedLimitsExtras = wgpu.WGPUSupportedLimitsExtras;
pub const SupportedLimitsExtras = struct {
	chain: ChainedStructOut = std.mem.zeroes(ChainedStructOut),
	limits: NativeLimits = std.mem.zeroes(NativeLimits),
};

pub const PushConstantRange = wgpu.WGPUPushConstantRange;
pub const PushConstantRange = struct {
	stages: ShaderStage = std.mem.zeroes(ShaderStage),
	start: u32 = std.mem.zeroes(u32),
	end: u32 = std.mem.zeroes(u32),
};

pub const PipelineLayoutExtras = wgpu.WGPUPipelineLayoutExtras;
pub const PipelineLayoutExtras = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	pushConstantRanges: *PushConstantRang = std.mem.zeroes(*PushConstantRang),
};

pub const WrappedSubmissionIndex = wgpu.WGPUWrappedSubmissionIndex;
pub const WrappedSubmissionIndex = struct {
	queue: Queue = std.mem.zeroes(Queue),
	submissionIndex: SubmissionIndex = std.mem.zeroes(SubmissionIndex),
};

pub const ShaderDefine = wgpu.WGPUShaderDefine;
pub const ShaderDefine = struct {
	name: ?[*:0]const u8 = std.mem.zeroes(?[*:0]const u8),
	value: ?[*:0]const u8 = std.mem.zeroes(?[*:0]const u8),
};

pub const ShaderModuleGLSLDescriptor = wgpu.WGPUShaderModuleGLSLDescriptor;
pub const ShaderModuleGLSLDescriptor = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	stage: ShaderStage = std.mem.zeroes(ShaderStage),
	code: ?[*:0]const u8 = std.mem.zeroes(?[*:0]const u8),
	defines: *ShaderDefine = std.mem.zeroes(*ShaderDefine),
};

pub const StorageReport = wgpu.WGPUStorageReport;
pub const StorageReport = struct {
	numOccupied: usize = std.mem.zeroes(usize),
	numVacant: usize = std.mem.zeroes(usize),
	numError: usize = std.mem.zeroes(usize),
	elementSize: usize = std.mem.zeroes(usize),
};

pub const HubReport = wgpu.WGPUHubReport;
pub const HubReport = struct {
	adapters: StorageReport = std.mem.zeroes(StorageReport),
	devices: StorageReport = std.mem.zeroes(StorageReport),
	pipelineLayouts: StorageReport = std.mem.zeroes(StorageReport),
	shaderModules: StorageReport = std.mem.zeroes(StorageReport),
	bindGroupLayouts: StorageReport = std.mem.zeroes(StorageReport),
	bindGroups: StorageReport = std.mem.zeroes(StorageReport),
	commandBuffers: StorageReport = std.mem.zeroes(StorageReport),
	renderBundles: StorageReport = std.mem.zeroes(StorageReport),
	renderPipelines: StorageReport = std.mem.zeroes(StorageReport),
	computePipelines: StorageReport = std.mem.zeroes(StorageReport),
	querySets: StorageReport = std.mem.zeroes(StorageReport),
	buffers: StorageReport = std.mem.zeroes(StorageReport),
	textures: StorageReport = std.mem.zeroes(StorageReport),
	textureViews: StorageReport = std.mem.zeroes(StorageReport),
	samplers: StorageReport = std.mem.zeroes(StorageReport),
};

pub const GlobalReport = wgpu.WGPUGlobalReport;
pub const GlobalReport = struct {
	surfaces: StorageReport = std.mem.zeroes(StorageReport),
	backendType: BackendType = std.mem.zeroes(BackendType),
	vulkan: HubReport = std.mem.zeroes(HubReport),
	metal: HubReport = std.mem.zeroes(HubReport),
	dx12: HubReport = std.mem.zeroes(HubReport),
	dx11: HubReport = std.mem.zeroes(HubReport),
	gl: HubReport = std.mem.zeroes(HubReport),
};

pub const BindGroupEntryExtras = wgpu.WGPUBindGroupEntryExtras;
pub const BindGroupEntryExtras = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	buffers: *const Buffer = std.mem.zeroes(*const Buffer),
	samplers: *const Sampler = std.mem.zeroes(*const Sampler),
	textureViews: *const TextureView = std.mem.zeroes(*const TextureView),
};

pub const BindGroupLayoutEntryExtras = wgpu.WGPUBindGroupLayoutEntryExtras;
pub const BindGroupLayoutEntryExtras = struct {
	chain: ChainedStruct = std.mem.zeroes(ChainedStruct),
	count: u32 = std.mem.zeroes(u32),
};


// Enumerations
pub const AdapterType = enum(u32) {
	discrete_gpu = 0,
	integrated_gpu = 1,
	cpu = 2,
	unknown = 3,
};

pub const AddressMode = enum(u32) {
	repeat = 0,
	mirror_repeat = 1,
	clamp_to_edge = 2,
};

pub const BackendType = enum(u32) {
	undefined = 0,
	null = 1,
	web_gpu = 2,
	d3_d11 = 3,
	d3_d12 = 4,
	metal = 5,
	vulkan = 6,
	open_gl = 7,
	open_gles = 8,
};

pub const BlendFactor = enum(u32) {
	zero = 0,
	one = 1,
	src = 2,
	one_minus_src = 3,
	src_alpha = 4,
	one_minus_src_alpha = 5,
	dst = 6,
	one_minus_dst = 7,
	dst_alpha = 8,
	one_minus_dst_alpha = 9,
	src_alpha_saturated = 10,
	constant = 11,
	one_minus_constant = 12,
};

pub const BlendOperation = enum(u32) {
	add = 0,
	subtract = 1,
	reverse_subtract = 2,
	min = 3,
	max = 4,
};

pub const BufferBindingType = enum(u32) {
	undefined = 0,
	uniform = 1,
	storage = 2,
	read_only_storage = 3,
};

pub const BufferMapAsyncStatus = enum(u32) {
	success = 0,
	validation_error = 1,
	unknown = 2,
	device_lost = 3,
	destroyed_before_callback = 4,
	unmapped_before_callback = 5,
	mapping_already_pending = 6,
	offset_out_of_range = 7,
	size_out_of_range = 8,
};

pub const BufferMapState = enum(u32) {
	unmapped = 0,
	pending = 1,
	mapped = 2,
};

pub const CompareFunction = enum(u32) {
	undefined = 0,
	never = 1,
	less = 2,
	less_equal = 3,
	greater = 4,
	greater_equal = 5,
	equal = 6,
	not_equal = 7,
	always = 8,
};

pub const CompilationInfoRequestStatus = enum(u32) {
	success = 0,
	err = 1,
	device_lost = 2,
	unknown = 3,
};

pub const CompilationMessageType = enum(u32) {
	err = 0,
	warning = 1,
	info = 2,
};

pub const CompositeAlphaMode = enum(u32) {
	auto = 0,
	opaq = 1,
	premultiplied = 2,
	unpremultiplied = 3,
	inherit = 4,
};

pub const CreatePipelineAsyncStatus = enum(u32) {
	success = 0,
	validation_error = 1,
	internal_error = 2,
	device_lost = 3,
	device_destroyed = 4,
	unknown = 5,
};

pub const CullMode = enum(u32) {
	none = 0,
	front = 1,
	back = 2,
};

pub const DeviceLostReason = enum(u32) {
	undefined = 0,
	destroyed = 1,
};

pub const ErrorFilter = enum(u32) {
	validation = 0,
	out_of_memory = 1,
	internal = 2,
};

pub const ErrorType = enum(u32) {
	no_error = 0,
	validation = 1,
	out_of_memory = 2,
	internal = 3,
	unknown = 4,
	device_lost = 5,
};

pub const FeatureName = enum(u32) {
	undefined = 0,
	depth_clip_control = 1,
	depth32_float_stencil8 = 2,
	timestamp_query = 3,
	pipeline_statistics_query = 4,
	texture_compression_bc = 5,
	texture_compression_etc2 = 6,
	texture_compression_astc = 7,
	indirect_first_instance = 8,
	shader_f16 = 9,
	rg11_b10_ufloat_renderable = 10,
	bgra8_unorm_storage = 11,
	float32_filterable = 12,
};

pub const FilterMode = enum(u32) {
	nearest = 0,
	linear = 1,
};

pub const FrontFace = enum(u32) {
	ccw = 0,
	cw = 1,
};

pub const IndexFormat = enum(u32) {
	undefined = 0,
	uint16 = 1,
	uint32 = 2,
};

pub const LoadOp = enum(u32) {
	undefined = 0,
	clear = 1,
	load = 2,
};

pub const MipmapFilterMode = enum(u32) {
	nearest = 0,
	linear = 1,
};

pub const PipelineStatisticName = enum(u32) {
	vertex_shader_invocations = 0,
	clipper_invocations = 1,
	clipper_primitives_out = 2,
	fragment_shader_invocations = 3,
	compute_shader_invocations = 4,
};

pub const PowerPreference = enum(u32) {
	undefined = 0,
	low_power = 1,
	high_performance = 2,
};

pub const PresentMode = enum(u32) {
	fifo = 0,
	fifo_relaxed = 1,
	immediate = 2,
	mailbox = 3,
};

pub const PrimitiveTopology = enum(u32) {
	point_list = 0,
	line_list = 1,
	line_strip = 2,
	triangle_list = 3,
	triangle_strip = 4,
};

pub const QueryType = enum(u32) {
	occlusion = 0,
	pipeline_statistics = 1,
	timestamp = 2,
};

pub const QueueWorkDoneStatus = enum(u32) {
	success = 0,
	err = 1,
	unknown = 2,
	device_lost = 3,
};

pub const RequestAdapterStatus = enum(u32) {
	success = 0,
	unavailable = 1,
	err = 2,
	unknown = 3,
};

pub const RequestDeviceStatus = enum(u32) {
	success = 0,
	err = 1,
	unknown = 2,
};

pub const SType = enum(u32) {
	invalid = 0,
	surface_descriptor_from_metal_layer = 1,
	surface_descriptor_from_windows_hwnd = 2,
	surface_descriptor_from_xlib_window = 3,
	surface_descriptor_from_canvas_html_selector = 4,
	shader_module_spirv_descriptor = 5,
	shader_module_wgsl_descriptor = 6,
	primitive_depth_clip_control = 7,
	surface_descriptor_from_wayland_surface = 8,
	surface_descriptor_from_android_native_window = 9,
	surface_descriptor_from_xcb_window = 10,
	render_pass_descriptor_max_draw_count = 15,
};

pub const SamplerBindingType = enum(u32) {
	undefined = 0,
	filtering = 1,
	non_filtering = 2,
	comparison = 3,
};

pub const StencilOperation = enum(u32) {
	keep = 0,
	zero = 1,
	replace = 2,
	invert = 3,
	increment_clamp = 4,
	decrement_clamp = 5,
	increment_wrap = 6,
	decrement_wrap = 7,
};

pub const StorageTextureAccess = enum(u32) {
	undefined = 0,
	write_only = 1,
};

pub const StoreOp = enum(u32) {
	undefined = 0,
	store = 1,
	discard = 2,
};

pub const SurfaceGetCurrentTextureStatus = enum(u32) {
	success = 0,
	timeout = 1,
	outdated = 2,
	lost = 3,
	out_of_memory = 4,
	device_lost = 5,
};

pub const TextureAspect = enum(u32) {
	all = 0,
	stencil_only = 1,
	depth_only = 2,
};

pub const TextureDimension = enum(u32) {
	dim_1d = 0,
	dim_2d = 1,
	dim_3d = 2,
};

pub const TextureFormat = enum(u32) {
	undefined = 0,
	r8_unorm = 1,
	r8_snorm = 2,
	r8_uint = 3,
	r8_sint = 4,
	r16_uint = 5,
	r16_sint = 6,
	r16_float = 7,
	rg8_unorm = 8,
	rg8_snorm = 9,
	rg8_uint = 10,
	rg8_sint = 11,
	r32_float = 12,
	r32_uint = 13,
	r32_sint = 14,
	rg16_uint = 15,
	rg16_sint = 16,
	rg16_float = 17,
	rgba8_unorm = 18,
	rgba8_unorm_srgb = 19,
	rgba8_snorm = 20,
	rgba8_uint = 21,
	rgba8_sint = 22,
	bgra8_unorm = 23,
	bgra8_unorm_srgb = 24,
	rgb10_a2_unorm = 25,
	rg11_b10_ufloat = 26,
	rgb9_e5_ufloat = 27,
	rg32_float = 28,
	rg32_uint = 29,
	rg32_sint = 30,
	rgba16_uint = 31,
	rgba16_sint = 32,
	rgba16_float = 33,
	rgba32_float = 34,
	rgba32_uint = 35,
	rgba32_sint = 36,
	stencil8 = 37,
	depth16_unorm = 38,
	depth24_plus = 39,
	depth24_plus_stencil8 = 40,
	depth32_float = 41,
	depth32_float_stencil8 = 42,
	bc1_rgba_unorm = 43,
	bc1_rgba_unorm_srgb = 44,
	bc2_rgba_unorm = 45,
	bc2_rgba_unorm_srgb = 46,
	bc3_rgba_unorm = 47,
	bc3_rgba_unorm_srgb = 48,
	bc4_r_unorm = 49,
	bc4_r_snorm = 50,
	bc5_rg_unorm = 51,
	bc5_rg_snorm = 52,
	bc6_hrgb_ufloat = 53,
	bc6_hrgb_float = 54,
	bc7_rgba_unorm = 55,
	bc7_rgba_unorm_srgb = 56,
	etc2_rgb8_unorm = 57,
	etc2_rgb8_unorm_srgb = 58,
	etc2_rgb8_a1_unorm = 59,
	etc2_rgb8_a1_unorm_srgb = 60,
	etc2_rgba8_unorm = 61,
	etc2_rgba8_unorm_srgb = 62,
	eacr11_unorm = 63,
	eacr11_snorm = 64,
	eacrg11_unorm = 65,
	eacrg11_snorm = 66,
	astc4x4_unorm = 67,
	astc4x4_unorm_srgb = 68,
	astc5x4_unorm = 69,
	astc5x4_unorm_srgb = 70,
	astc5x5_unorm = 71,
	astc5x5_unorm_srgb = 72,
	astc6x5_unorm = 73,
	astc6x5_unorm_srgb = 74,
	astc6x6_unorm = 75,
	astc6x6_unorm_srgb = 76,
	astc8x5_unorm = 77,
	astc8x5_unorm_srgb = 78,
	astc8x6_unorm = 79,
	astc8x6_unorm_srgb = 80,
	astc8x8_unorm = 81,
	astc8x8_unorm_srgb = 82,
	astc10x5_unorm = 83,
	astc10x5_unorm_srgb = 84,
	astc10x6_unorm = 85,
	astc10x6_unorm_srgb = 86,
	astc10x8_unorm = 87,
	astc10x8_unorm_srgb = 88,
	astc10x10_unorm = 89,
	astc10x10_unorm_srgb = 90,
	astc12x10_unorm = 91,
	astc12x10_unorm_srgb = 92,
	astc12x12_unorm = 93,
	astc12x12_unorm_srgb = 94,
};

pub const TextureSampleType = enum(u32) {
	undefined = 0,
	float = 1,
	unfilterable_float = 2,
	depth = 3,
	sint = 4,
	uint = 5,
};

pub const TextureViewDimension = enum(u32) {
	undefined = 0,
	dim_1d = 1,
	dim_2d = 2,
	dim_2darray = 3,
	cube = 4,
	cube_array = 5,
	dim_3d = 6,
};

pub const VertexFormat = enum(u32) {
	undefined = 0,
	uint8x2 = 1,
	uint8x4 = 2,
	sint8x2 = 3,
	sint8x4 = 4,
	unorm8x2 = 5,
	unorm8x4 = 6,
	snorm8x2 = 7,
	snorm8x4 = 8,
	uint16x2 = 9,
	uint16x4 = 10,
	sint16x2 = 11,
	sint16x4 = 12,
	unorm16x2 = 13,
	unorm16x4 = 14,
	snorm16x2 = 15,
	snorm16x4 = 16,
	float16x2 = 17,
	float16x4 = 18,
	float32 = 19,
	float32x2 = 20,
	float32x3 = 21,
	float32x4 = 22,
	uint32 = 23,
	uint32x2 = 24,
	uint32x3 = 25,
	uint32x4 = 26,
	sint32 = 27,
	sint32x2 = 28,
	sint32x3 = 29,
	sint32x4 = 30,
};

pub const VertexStepMode = enum(u32) {
	vertex = 0,
	instance = 1,
	vertex_buffer_not_used = 2,
};

pub const BufferUsage = packed struct(u32) {
	map_read: bool = false,
	map_write: bool = false,
	copy_src: bool = false,
	copy_dst: bool = false,
	index: bool = false,
	vertex: bool = false,
	uniform: bool = false,
	storage: bool = false,
	indirect: bool = false,
	query_resolve: bool = false,
	_padding: u22 = 0,
};

pub const ColorWriteMask = packed struct(u32) {
	red: bool = false,
	green: bool = false,
	blue: bool = false,
	alpha: bool = false,
	all: bool = false,
	_padding: u27 = 0,
};

pub const MapMode = packed struct(u32) {
	read: bool = false,
	write: bool = false,
	_padding: u30 = 0,
};

pub const ShaderStage = packed struct(u32) {
	vertex: bool = false,
	fragment: bool = false,
	compute: bool = false,
	_padding: u29 = 0,
};

pub const TextureUsage = packed struct(u32) {
	copy_src: bool = false,
	copy_dst: bool = false,
	texture_binding: bool = false,
	storage_binding: bool = false,
	render_attachment: bool = false,
	_padding: u27 = 0,
};

pub const NativeSType = enum(u32) {
	device_extras = 196609,
	required_limits_extras = 196610,
	pipeline_layout_extras = 196611,
	shader_module_glsl_descriptor = 196612,
	supported_limits_extras = 196613,
	instance_extras = 196614,
	bind_group_entry_extras = 196615,
	bind_group_layout_entry_extras = 196616,
};

pub const NativeFeature = enum(u32) {
	push_constants = 196609,
	texture_adapter_specific_format_features = 196610,
	multi_draw_indirect = 196611,
	multi_draw_indirect_count = 196612,
	vertex_writable_storage = 196613,
	texture_binding_array = 196614,
	sampled_texture_and_storage_buffer_array_non_uniform_indexing = 196615,
};

pub const LogLevel = enum(u32) {
	off = 0,
	err = 1,
	warn = 2,
	info = 3,
	debug = 4,
	trace = 5,
};

pub const InstanceFlag = enum(u32) {
	default = 0,
	debug = 1,
	validation = 1,
	discard_hal_labels = 1,
};

pub const Dx12Compiler = enum(u32) {
	undefined = 0,
	fxc = 1,
	dxc = 2,
};

pub const Gles3MinorVersion = enum(u32) {
	automatic = 0,
	version0 = 1,
	version1 = 2,
	version2 = 3,
};


// Callback types
pub const BufferMapCallback = *const fn(status: BufferMapAsyncStatus, userdata: ?*anyopaque) callconv(.C) void;
pub const CompilationInfoCallback = *const fn(status: CompilationInfoRequestStatus, compilation_info: *const CompilationInfo, userdata: ?*anyopaque) callconv(.C) void;
pub const CreateComputePipelineAsyncCallback = *const fn(status: CreatePipelineAsyncStatus, pipeline: ComputePipeline, message: ?[*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;
pub const CreateRenderPipelineAsyncCallback = *const fn(status: CreatePipelineAsyncStatus, pipeline: RenderPipeline, message: ?[*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;
pub const DeviceLostCallback = *const fn(reason: DeviceLostReason, message: ?[*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;
pub const ErrorCallback = *const fn(type: ErrorType, message: ?[*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;
pub const QueueWorkDoneCallback = *const fn(status: QueueWorkDoneStatus, userdata: ?*anyopaque) callconv(.C) void;
pub const RequestAdapterCallback = *const fn(status: RequestAdapterStatus, adapter: Adapter, message: ?[*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;
pub const RequestDeviceCallback = *const fn(status: RequestDeviceStatus, device: Device, message: ?[*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;
pub const ProcDeviceSetUncapturedErrorCallback = *const fn(device: Device, callback: ErrorCallback, userdata: ?*anyopaque) callconv(.C) void;
pub const LogCallback = *const fn(level: LogLevel, message: ?[*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;

// Injected
pub fn createInstance() Instance {
    return wgpu.wgpuCreateInstance(null);
}

// Handles
pub const Adapter = *opaque {
	pub inline fn enumerateFeatures(self: Adapter, features: ?[*]FeatureName) usize {
		return wgpuAdapterEnumerateFeatures(self, features);
	}
 extern fn wgpuAdapterEnumerateFeatures(adapter: WGPUAdapter, features: [*c]WGPUFeatureName) usize;

	pub inline fn getLimits(self: Adapter, limits: *SupportedLimits) bool {
		return wgpuAdapterGetLimits(self, limits);
	}
 extern fn wgpuAdapterGetLimits(adapter: WGPUAdapter, limits: [*c]WGPUSupportedLimits) WGPUBool;

	pub inline fn getProperties(self: Adapter, properties: *AdapterProperties) void {
		return wgpuAdapterGetProperties(self, properties);
	}
 extern fn wgpuAdapterGetProperties(adapter: WGPUAdapter, properties: [*c]WGPUAdapterProperties) void;

	pub inline fn hasFeature(self: Adapter, feature: FeatureName) bool {
		return wgpuAdapterHasFeature(self, feature);
	}
 extern fn wgpuAdapterHasFeature(adapter: WGPUAdapter, feature: WGPUFeatureName) WGPUBool;

	pub inline fn requestDevice(self: Adapter, descriptor: ?*const DeviceDescriptor, callback: RequestDeviceCallback, userdata: ?*anyopaque) void {
		return wgpuAdapterRequestDevice(self, descriptor, callback, userdata);
	}
 extern fn wgpuAdapterRequestDevice(adapter: WGPUAdapter, descriptor: [*c]const WGPUDeviceDescriptor, callback: WGPURequestDeviceCallback, userdata: ?*anyopaque) void;

	pub inline fn reference(self: Adapter) void {
		return wgpuAdapterReference(self);
	}
 extern fn wgpuAdapterReference(adapter: WGPUAdapter) void;

	pub inline fn release(self: Adapter) void {
		return wgpuAdapterRelease(self);
	}
 extern fn wgpuAdapterRelease(adapter: WGPUAdapter) void;

};

pub const BindGroup = *opaque {
	pub inline fn setLabel(self: BindGroup, label: ?[*:0]const u8) void {
		return wgpuBindGroupSetLabel(self, label);
	}
 extern fn wgpuBindGroupSetLabel(bindGroup: WGPUBindGroup, label: [*c]const u8) void;

	pub inline fn reference(self: BindGroup) void {
		return wgpuBindGroupReference(self);
	}
 extern fn wgpuBindGroupReference(bindGroup: WGPUBindGroup) void;

	pub inline fn release(self: BindGroup) void {
		return wgpuBindGroupRelease(self);
	}
 extern fn wgpuBindGroupRelease(bindGroup: WGPUBindGroup) void;

};

pub const BindGroupLayout = *opaque {
	pub inline fn setLabel(self: BindGroupLayout, label: ?[*:0]const u8) void {
		return wgpuBindGroupLayoutSetLabel(self, label);
	}
 extern fn wgpuBindGroupLayoutSetLabel(bindGroupLayout: WGPUBindGroupLayout, label: [*c]const u8) void;

	pub inline fn reference(self: BindGroupLayout) void {
		return wgpuBindGroupLayoutReference(self);
	}
 extern fn wgpuBindGroupLayoutReference(bindGroupLayout: WGPUBindGroupLayout) void;

	pub inline fn release(self: BindGroupLayout) void {
		return wgpuBindGroupLayoutRelease(self);
	}
 extern fn wgpuBindGroupLayoutRelease(bindGroupLayout: WGPUBindGroupLayout) void;

};

pub const Buffer = *opaque {
	pub inline fn destroy(self: Buffer) void {
		return wgpuBufferDestroy(self);
	}
 extern fn wgpuBufferDestroy(buffer: WGPUBuffer) void;

	pub inline fn getConstMappedRange(self: Buffer, offset: usize, size: usize) ?*const anyopaque {
		return wgpuBufferGetConstMappedRange(self, offset, size);
	}
 extern fn wgpuBufferGetConstMappedRange(buffer: WGPUBuffer, offset: usize, size: usize) ?*const anyopaque;

	pub inline fn getMapState(self: Buffer) BufferMapState {
		return wgpuBufferGetMapState(self);
	}
 extern fn wgpuBufferGetMapState(buffer: WGPUBuffer) WGPUBufferMapState;

	pub inline fn getMappedRange(self: Buffer, offset: usize, size: usize) ?*anyopaque {
		return wgpuBufferGetMappedRange(self, offset, size);
	}
 extern fn wgpuBufferGetMappedRange(buffer: WGPUBuffer, offset: usize, size: usize) ?*anyopaque;

	pub inline fn getSize(self: Buffer) u64 {
		return wgpuBufferGetSize(self);
	}
 extern fn wgpuBufferGetSize(buffer: WGPUBuffer) u64;

	pub inline fn getUsage(self: Buffer) BufferUsage {
		return wgpuBufferGetUsage(self);
	}
 extern fn wgpuBufferGetUsage(buffer: WGPUBuffer) WGPUBufferUsageFlags;

	pub inline fn mapAsync(self: Buffer, mode: MapMode, offset: usize, size: usize, callback: BufferMapCallback, userdata: ?*anyopaque) void {
		return wgpuBufferMapAsync(self, mode, offset, size, callback, userdata);
	}
 extern fn wgpuBufferMapAsync(buffer: WGPUBuffer, mode: WGPUMapModeFlags, offset: usize, size: usize, callback: WGPUBufferMapCallback, userdata: ?*anyopaque) void;

	pub inline fn setLabel(self: Buffer, label: ?[*:0]const u8) void {
		return wgpuBufferSetLabel(self, label);
	}
 extern fn wgpuBufferSetLabel(buffer: WGPUBuffer, label: [*c]const u8) void;

	pub inline fn unmap(self: Buffer) void {
		return wgpuBufferUnmap(self);
	}
 extern fn wgpuBufferUnmap(buffer: WGPUBuffer) void;

	pub inline fn reference(self: Buffer) void {
		return wgpuBufferReference(self);
	}
 extern fn wgpuBufferReference(buffer: WGPUBuffer) void;

	pub inline fn release(self: Buffer) void {
		return wgpuBufferRelease(self);
	}
 extern fn wgpuBufferRelease(buffer: WGPUBuffer) void;

};

pub const CommandBuffer = *opaque {
	pub inline fn setLabel(self: CommandBuffer, label: ?[*:0]const u8) void {
		return wgpuCommandBufferSetLabel(self, label);
	}
 extern fn wgpuCommandBufferSetLabel(commandBuffer: WGPUCommandBuffer, label: [*c]const u8) void;

	pub inline fn reference(self: CommandBuffer) void {
		return wgpuCommandBufferReference(self);
	}
 extern fn wgpuCommandBufferReference(commandBuffer: WGPUCommandBuffer) void;

	pub inline fn release(self: CommandBuffer) void {
		return wgpuCommandBufferRelease(self);
	}
 extern fn wgpuCommandBufferRelease(commandBuffer: WGPUCommandBuffer) void;

};

pub const CommandEncoder = *opaque {
	pub inline fn beginComputePass(self: CommandEncoder, descriptor: ?*const ComputePassDescriptor) ComputePassEncoder {
		return wgpuCommandEncoderBeginComputePass(self, descriptor);
	}
 extern fn wgpuCommandEncoderBeginComputePass(commandEncoder: WGPUCommandEncoder, descriptor: [*c]const WGPUComputePassDescriptor) WGPUComputePassEncoder;

	pub inline fn beginRenderPass(self: CommandEncoder, descriptor: *const RenderPassDescriptor) RenderPassEncoder {
		return wgpuCommandEncoderBeginRenderPass(self, descriptor);
	}
 extern fn wgpuCommandEncoderBeginRenderPass(commandEncoder: WGPUCommandEncoder, descriptor: [*c]const WGPURenderPassDescriptor) WGPURenderPassEncoder;

	pub inline fn clearBuffer(self: CommandEncoder, buffer: Buffer, offset: u64, size: u64) void {
		return wgpuCommandEncoderClearBuffer(self, buffer, offset, size);
	}
 extern fn wgpuCommandEncoderClearBuffer(commandEncoder: WGPUCommandEncoder, buffer: WGPUBuffer, offset: u64, size: u64) void;

	pub inline fn copyBufferToBuffer(self: CommandEncoder, source: Buffer, source_offset: u64, destination: Buffer, destination_offset: u64, size: u64) void {
		return wgpuCommandEncoderCopyBufferToBuffer(self, source, source_offset, destination, destination_offset, size);
	}
 extern fn wgpuCommandEncoderCopyBufferToBuffer(commandEncoder: WGPUCommandEncoder, source: WGPUBuffer, sourceOffset: u64, destination: WGPUBuffer, destinationOffset: u64, size: u64) void;

	pub inline fn copyBufferToTexture(self: CommandEncoder, source: *const ImageCopyBuffer, destination: *const ImageCopyTexture, copy_size: *const Extent3D) void {
		return wgpuCommandEncoderCopyBufferToTexture(self, source, destination, copy_size);
	}
 extern fn wgpuCommandEncoderCopyBufferToTexture(commandEncoder: WGPUCommandEncoder, source: [*c]const WGPUImageCopyBuffer, destination: [*c]const WGPUImageCopyTexture, copySize: [*c]const WGPUExtent3D) void;

	pub inline fn copyTextureToBuffer(self: CommandEncoder, source: *const ImageCopyTexture, destination: *const ImageCopyBuffer, copy_size: *const Extent3D) void {
		return wgpuCommandEncoderCopyTextureToBuffer(self, source, destination, copy_size);
	}
 extern fn wgpuCommandEncoderCopyTextureToBuffer(commandEncoder: WGPUCommandEncoder, source: [*c]const WGPUImageCopyTexture, destination: [*c]const WGPUImageCopyBuffer, copySize: [*c]const WGPUExtent3D) void;

	pub inline fn copyTextureToTexture(self: CommandEncoder, source: *const ImageCopyTexture, destination: *const ImageCopyTexture, copy_size: *const Extent3D) void {
		return wgpuCommandEncoderCopyTextureToTexture(self, source, destination, copy_size);
	}
 extern fn wgpuCommandEncoderCopyTextureToTexture(commandEncoder: WGPUCommandEncoder, source: [*c]const WGPUImageCopyTexture, destination: [*c]const WGPUImageCopyTexture, copySize: [*c]const WGPUExtent3D) void;

	pub inline fn finish(self: CommandEncoder, descriptor: ?*const CommandBufferDescriptor) CommandBuffer {
		return wgpuCommandEncoderFinish(self, descriptor);
	}
 extern fn wgpuCommandEncoderFinish(commandEncoder: WGPUCommandEncoder, descriptor: [*c]const WGPUCommandBufferDescriptor) WGPUCommandBuffer;

	pub inline fn insertDebugMarker(self: CommandEncoder, marker_label: ?[*:0]const u8) void {
		return wgpuCommandEncoderInsertDebugMarker(self, marker_label);
	}
 extern fn wgpuCommandEncoderInsertDebugMarker(commandEncoder: WGPUCommandEncoder, markerLabel: [*c]const u8) void;

	pub inline fn popDebugGroup(self: CommandEncoder) void {
		return wgpuCommandEncoderPopDebugGroup(self);
	}
 extern fn wgpuCommandEncoderPopDebugGroup(commandEncoder: WGPUCommandEncoder) void;

	pub inline fn pushDebugGroup(self: CommandEncoder, group_label: ?[*:0]const u8) void {
		return wgpuCommandEncoderPushDebugGroup(self, group_label);
	}
 extern fn wgpuCommandEncoderPushDebugGroup(commandEncoder: WGPUCommandEncoder, groupLabel: [*c]const u8) void;

	pub inline fn resolveQuerySet(self: CommandEncoder, query_set: QuerySet, first_query: u32, query_count: u32, destination: Buffer, destination_offset: u64) void {
		return wgpuCommandEncoderResolveQuerySet(self, query_set, first_query, query_count, destination, destination_offset);
	}
 extern fn wgpuCommandEncoderResolveQuerySet(commandEncoder: WGPUCommandEncoder, querySet: WGPUQuerySet, firstQuery: u32, queryCount: u32, destination: WGPUBuffer, destinationOffset: u64) void;

	pub inline fn setLabel(self: CommandEncoder, label: ?[*:0]const u8) void {
		return wgpuCommandEncoderSetLabel(self, label);
	}
 extern fn wgpuCommandEncoderSetLabel(commandEncoder: WGPUCommandEncoder, label: [*c]const u8) void;

	pub inline fn writeTimestamp(self: CommandEncoder, query_set: QuerySet, query_index: u32) void {
		return wgpuCommandEncoderWriteTimestamp(self, query_set, query_index);
	}
 extern fn wgpuCommandEncoderWriteTimestamp(commandEncoder: WGPUCommandEncoder, querySet: WGPUQuerySet, queryIndex: u32) void;

	pub inline fn reference(self: CommandEncoder) void {
		return wgpuCommandEncoderReference(self);
	}
 extern fn wgpuCommandEncoderReference(commandEncoder: WGPUCommandEncoder) void;

	pub inline fn release(self: CommandEncoder) void {
		return wgpuCommandEncoderRelease(self);
	}
 extern fn wgpuCommandEncoderRelease(commandEncoder: WGPUCommandEncoder) void;

};

pub const ComputePassEncoder = *opaque {
	pub inline fn beginPipelineStatisticsQuery(self: ComputePassEncoder, query_set: QuerySet, query_index: u32) void {
		return wgpuComputePassEncoderBeginPipelineStatisticsQuery(self, query_set, query_index);
	}
 extern fn wgpuComputePassEncoderBeginPipelineStatisticsQuery(computePassEncoder: WGPUComputePassEncoder, querySet: WGPUQuerySet, queryIndex: u32) void;

	pub inline fn dispatchWorkgroups(self: ComputePassEncoder, workgroup_count_x: u32, workgroup_count_y: u32, workgroup_count_z: u32) void {
		return wgpuComputePassEncoderDispatchWorkgroups(self, workgroup_count_x, workgroup_count_y, workgroup_count_z);
	}
 extern fn wgpuComputePassEncoderDispatchWorkgroups(computePassEncoder: WGPUComputePassEncoder, workgroupCountX: u32, workgroupCountY: u32, workgroupCountZ: u32) void;

	pub inline fn dispatchWorkgroupsIndirect(self: ComputePassEncoder, indirect_buffer: Buffer, indirect_offset: u64) void {
		return wgpuComputePassEncoderDispatchWorkgroupsIndirect(self, indirect_buffer, indirect_offset);
	}
 extern fn wgpuComputePassEncoderDispatchWorkgroupsIndirect(computePassEncoder: WGPUComputePassEncoder, indirectBuffer: WGPUBuffer, indirectOffset: u64) void;

	pub inline fn end(self: ComputePassEncoder) void {
		return wgpuComputePassEncoderEnd(self);
	}
 extern fn wgpuComputePassEncoderEnd(computePassEncoder: WGPUComputePassEncoder) void;

	pub inline fn endPipelineStatisticsQuery(self: ComputePassEncoder) void {
		return wgpuComputePassEncoderEndPipelineStatisticsQuery(self);
	}
 extern fn wgpuComputePassEncoderEndPipelineStatisticsQuery(computePassEncoder: WGPUComputePassEncoder) void;

	pub inline fn insertDebugMarker(self: ComputePassEncoder, marker_label: ?[*:0]const u8) void {
		return wgpuComputePassEncoderInsertDebugMarker(self, marker_label);
	}
 extern fn wgpuComputePassEncoderInsertDebugMarker(computePassEncoder: WGPUComputePassEncoder, markerLabel: [*c]const u8) void;

	pub inline fn popDebugGroup(self: ComputePassEncoder) void {
		return wgpuComputePassEncoderPopDebugGroup(self);
	}
 extern fn wgpuComputePassEncoderPopDebugGroup(computePassEncoder: WGPUComputePassEncoder) void;

	pub inline fn pushDebugGroup(self: ComputePassEncoder, group_label: ?[*:0]const u8) void {
		return wgpuComputePassEncoderPushDebugGroup(self, group_label);
	}
 extern fn wgpuComputePassEncoderPushDebugGroup(computePassEncoder: WGPUComputePassEncoder, groupLabel: [*c]const u8) void;

	pub inline fn setBindGroup(self: ComputePassEncoder, group_index: u32, group: BindGroup, dynamic_offset_count: usize, dynamic_offsets: ?[*]const u32) void {
		return wgpuComputePassEncoderSetBindGroup(self, group_index, group, dynamic_offset_count, dynamic_offsets);
	}
 extern fn wgpuComputePassEncoderSetBindGroup(computePassEncoder: WGPUComputePassEncoder, groupIndex: u32, group: WGPUBindGroup, dynamicOffsetCount: usize, dynamicOffsets: [*c]const u32) void;

	pub inline fn setLabel(self: ComputePassEncoder, label: ?[*:0]const u8) void {
		return wgpuComputePassEncoderSetLabel(self, label);
	}
 extern fn wgpuComputePassEncoderSetLabel(computePassEncoder: WGPUComputePassEncoder, label: [*c]const u8) void;

	pub inline fn setPipeline(self: ComputePassEncoder, pipeline: ComputePipeline) void {
		return wgpuComputePassEncoderSetPipeline(self, pipeline);
	}
 extern fn wgpuComputePassEncoderSetPipeline(computePassEncoder: WGPUComputePassEncoder, pipeline: WGPUComputePipeline) void;

	pub inline fn reference(self: ComputePassEncoder) void {
		return wgpuComputePassEncoderReference(self);
	}
 extern fn wgpuComputePassEncoderReference(computePassEncoder: WGPUComputePassEncoder) void;

	pub inline fn release(self: ComputePassEncoder) void {
		return wgpuComputePassEncoderRelease(self);
	}
 extern fn wgpuComputePassEncoderRelease(computePassEncoder: WGPUComputePassEncoder) void;

};

pub const ComputePipeline = *opaque {
	pub inline fn getBindGroupLayout(self: ComputePipeline, group_index: u32) BindGroupLayout {
		return wgpuComputePipelineGetBindGroupLayout(self, group_index);
	}
 extern fn wgpuComputePipelineGetBindGroupLayout(computePipeline: WGPUComputePipeline, groupIndex: u32) WGPUBindGroupLayout;

	pub inline fn setLabel(self: ComputePipeline, label: ?[*:0]const u8) void {
		return wgpuComputePipelineSetLabel(self, label);
	}
 extern fn wgpuComputePipelineSetLabel(computePipeline: WGPUComputePipeline, label: [*c]const u8) void;

	pub inline fn reference(self: ComputePipeline) void {
		return wgpuComputePipelineReference(self);
	}
 extern fn wgpuComputePipelineReference(computePipeline: WGPUComputePipeline) void;

	pub inline fn release(self: ComputePipeline) void {
		return wgpuComputePipelineRelease(self);
	}
 extern fn wgpuComputePipelineRelease(computePipeline: WGPUComputePipeline) void;

};

pub const Device = *opaque {
	pub inline fn createBindGroup(self: Device, descriptor: *const BindGroupDescriptor) BindGroup {
		return wgpuDeviceCreateBindGroup(self, descriptor);
	}
 extern fn wgpuDeviceCreateBindGroup(device: WGPUDevice, descriptor: [*c]const WGPUBindGroupDescriptor) WGPUBindGroup;

	pub inline fn createBindGroupLayout(self: Device, descriptor: *const BindGroupLayoutDescriptor) BindGroupLayout {
		return wgpuDeviceCreateBindGroupLayout(self, descriptor);
	}
 extern fn wgpuDeviceCreateBindGroupLayout(device: WGPUDevice, descriptor: [*c]const WGPUBindGroupLayoutDescriptor) WGPUBindGroupLayout;

	pub inline fn createBuffer(self: Device, descriptor: *const BufferDescriptor) Buffer {
		return wgpuDeviceCreateBuffer(self, descriptor);
	}
 extern fn wgpuDeviceCreateBuffer(device: WGPUDevice, descriptor: [*c]const WGPUBufferDescriptor) WGPUBuffer;

	pub inline fn createCommandEncoder(self: Device, descriptor: ?*const CommandEncoderDescriptor) CommandEncoder {
		return wgpuDeviceCreateCommandEncoder(self, descriptor);
	}
 extern fn wgpuDeviceCreateCommandEncoder(device: WGPUDevice, descriptor: [*c]const WGPUCommandEncoderDescriptor) WGPUCommandEncoder;

	pub inline fn createComputePipeline(self: Device, descriptor: *const ComputePipelineDescriptor) ComputePipeline {
		return wgpuDeviceCreateComputePipeline(self, descriptor);
	}
 extern fn wgpuDeviceCreateComputePipeline(device: WGPUDevice, descriptor: [*c]const WGPUComputePipelineDescriptor) WGPUComputePipeline;

	pub inline fn createComputePipelineAsync(self: Device, descriptor: *const ComputePipelineDescriptor, callback: CreateComputePipelineAsyncCallback, userdata: ?*anyopaque) void {
		return wgpuDeviceCreateComputePipelineAsync(self, descriptor, callback, userdata);
	}
 extern fn wgpuDeviceCreateComputePipelineAsync(device: WGPUDevice, descriptor: [*c]const WGPUComputePipelineDescriptor, callback: WGPUCreateComputePipelineAsyncCallback, userdata: ?*anyopaque) void;

	pub inline fn createPipelineLayout(self: Device, descriptor: *const PipelineLayoutDescriptor) PipelineLayout {
		return wgpuDeviceCreatePipelineLayout(self, descriptor);
	}
 extern fn wgpuDeviceCreatePipelineLayout(device: WGPUDevice, descriptor: [*c]const WGPUPipelineLayoutDescriptor) WGPUPipelineLayout;

	pub inline fn createQuerySet(self: Device, descriptor: *const QuerySetDescriptor) QuerySet {
		return wgpuDeviceCreateQuerySet(self, descriptor);
	}
 extern fn wgpuDeviceCreateQuerySet(device: WGPUDevice, descriptor: [*c]const WGPUQuerySetDescriptor) WGPUQuerySet;

	pub inline fn createRenderBundleEncoder(self: Device, descriptor: *const RenderBundleEncoderDescriptor) RenderBundleEncoder {
		return wgpuDeviceCreateRenderBundleEncoder(self, descriptor);
	}
 extern fn wgpuDeviceCreateRenderBundleEncoder(device: WGPUDevice, descriptor: [*c]const WGPURenderBundleEncoderDescriptor) WGPURenderBundleEncoder;

	pub inline fn createRenderPipeline(self: Device, descriptor: *const RenderPipelineDescriptor) RenderPipeline {
		return wgpuDeviceCreateRenderPipeline(self, descriptor);
	}
 extern fn wgpuDeviceCreateRenderPipeline(device: WGPUDevice, descriptor: [*c]const WGPURenderPipelineDescriptor) WGPURenderPipeline;

	pub inline fn createRenderPipelineAsync(self: Device, descriptor: *const RenderPipelineDescriptor, callback: CreateRenderPipelineAsyncCallback, userdata: ?*anyopaque) void {
		return wgpuDeviceCreateRenderPipelineAsync(self, descriptor, callback, userdata);
	}
 extern fn wgpuDeviceCreateRenderPipelineAsync(device: WGPUDevice, descriptor: [*c]const WGPURenderPipelineDescriptor, callback: WGPUCreateRenderPipelineAsyncCallback, userdata: ?*anyopaque) void;

	pub inline fn createSampler(self: Device, descriptor: ?*const SamplerDescriptor) Sampler {
		return wgpuDeviceCreateSampler(self, descriptor);
	}
 extern fn wgpuDeviceCreateSampler(device: WGPUDevice, descriptor: [*c]const WGPUSamplerDescriptor) WGPUSampler;

	pub inline fn createShaderModule(self: Device, descriptor: *const ShaderModuleDescriptor) ShaderModule {
		return wgpuDeviceCreateShaderModule(self, descriptor);
	}
 extern fn wgpuDeviceCreateShaderModule(device: WGPUDevice, descriptor: [*c]const WGPUShaderModuleDescriptor) WGPUShaderModule;

	pub inline fn createTexture(self: Device, descriptor: *const TextureDescriptor) Texture {
		return wgpuDeviceCreateTexture(self, descriptor);
	}
 extern fn wgpuDeviceCreateTexture(device: WGPUDevice, descriptor: [*c]const WGPUTextureDescriptor) WGPUTexture;

	pub inline fn destroy(self: Device) void {
		return wgpuDeviceDestroy(self);
	}
 extern fn wgpuDeviceDestroy(device: WGPUDevice) void;

	pub inline fn enumerateFeatures(self: Device, features: ?[*]FeatureName) usize {
		return wgpuDeviceEnumerateFeatures(self, features);
	}
 extern fn wgpuDeviceEnumerateFeatures(device: WGPUDevice, features: [*c]WGPUFeatureName) usize;

	pub inline fn getLimits(self: Device, limits: *SupportedLimits) bool {
		return wgpuDeviceGetLimits(self, limits);
	}
 extern fn wgpuDeviceGetLimits(device: WGPUDevice, limits: [*c]WGPUSupportedLimits) WGPUBool;

	pub inline fn getQueue(self: Device) Queue {
		return wgpuDeviceGetQueue(self);
	}
 extern fn wgpuDeviceGetQueue(device: WGPUDevice) WGPUQueue;

	pub inline fn hasFeature(self: Device, feature: FeatureName) bool {
		return wgpuDeviceHasFeature(self, feature);
	}
 extern fn wgpuDeviceHasFeature(device: WGPUDevice, feature: WGPUFeatureName) WGPUBool;

	pub inline fn popErrorScope(self: Device, callback: ErrorCallback, userdata: ?*anyopaque) void {
		return wgpuDevicePopErrorScope(self, callback, userdata);
	}
 extern fn wgpuDevicePopErrorScope(device: WGPUDevice, callback: WGPUErrorCallback, userdata: ?*anyopaque) void;

	pub inline fn pushErrorScope(self: Device, filter: ErrorFilter) void {
		return wgpuDevicePushErrorScope(self, filter);
	}
 extern fn wgpuDevicePushErrorScope(device: WGPUDevice, filter: WGPUErrorFilter) void;

	pub inline fn setLabel(self: Device, label: ?[*:0]const u8) void {
		return wgpuDeviceSetLabel(self, label);
	}
 extern fn wgpuDeviceSetLabel(device: WGPUDevice, label: [*c]const u8) void;

	pub inline fn setUncapturedErrorCallback(self: Device, callback: ErrorCallback, userdata: ?*anyopaque) void {
		return wgpuDeviceSetUncapturedErrorCallback(self, callback, userdata);
	}
 extern fn wgpuDeviceSetUncapturedErrorCallback(device: WGPUDevice, callback: WGPUErrorCallback, userdata: ?*anyopaque) void;

	pub inline fn reference(self: Device) void {
		return wgpuDeviceReference(self);
	}
 extern fn wgpuDeviceReference(device: WGPUDevice) void;

	pub inline fn release(self: Device) void {
		return wgpuDeviceRelease(self);
	}
 extern fn wgpuDeviceRelease(device: WGPUDevice) void;

};

pub const Instance = *opaque {
	pub inline fn createSurface(self: Instance, descriptor: *const SurfaceDescriptor) Surface {
		return wgpuInstanceCreateSurface(self, descriptor);
	}
 extern fn wgpuInstanceCreateSurface(instance: WGPUInstance, descriptor: [*c]const WGPUSurfaceDescriptor) WGPUSurface;

	pub inline fn processEvents(self: Instance) void {
		return wgpuInstanceProcessEvents(self);
	}
 extern fn wgpuInstanceProcessEvents(instance: WGPUInstance) void;

	pub inline fn requestAdapter(self: Instance, options: ?*const RequestAdapterOptions, callback: RequestAdapterCallback, userdata: ?*anyopaque) void {
		return wgpuInstanceRequestAdapter(self, options, callback, userdata);
	}
 extern fn wgpuInstanceRequestAdapter(instance: WGPUInstance, options: [*c]const WGPURequestAdapterOptions, callback: WGPURequestAdapterCallback, userdata: ?*anyopaque) void;

	pub inline fn reference(self: Instance) void {
		return wgpuInstanceReference(self);
	}
 extern fn wgpuInstanceReference(instance: WGPUInstance) void;

	pub inline fn release(self: Instance) void {
		return wgpuInstanceRelease(self);
	}
 extern fn wgpuInstanceRelease(instance: WGPUInstance) void;

};

pub const PipelineLayout = *opaque {
	pub inline fn setLabel(self: PipelineLayout, label: ?[*:0]const u8) void {
		return wgpuPipelineLayoutSetLabel(self, label);
	}
 extern fn wgpuPipelineLayoutSetLabel(pipelineLayout: WGPUPipelineLayout, label: [*c]const u8) void;

	pub inline fn reference(self: PipelineLayout) void {
		return wgpuPipelineLayoutReference(self);
	}
 extern fn wgpuPipelineLayoutReference(pipelineLayout: WGPUPipelineLayout) void;

	pub inline fn release(self: PipelineLayout) void {
		return wgpuPipelineLayoutRelease(self);
	}
 extern fn wgpuPipelineLayoutRelease(pipelineLayout: WGPUPipelineLayout) void;

};

pub const QuerySet = *opaque {
	pub inline fn destroy(self: QuerySet) void {
		return wgpuQuerySetDestroy(self);
	}
 extern fn wgpuQuerySetDestroy(querySet: WGPUQuerySet) void;

	pub inline fn getCount(self: QuerySet) u32 {
		return wgpuQuerySetGetCount(self);
	}
 extern fn wgpuQuerySetGetCount(querySet: WGPUQuerySet) u32;

	pub inline fn getType(self: QuerySet) QueryType {
		return wgpuQuerySetGetType(self);
	}
 extern fn wgpuQuerySetGetType(querySet: WGPUQuerySet) WGPUQueryType;

	pub inline fn setLabel(self: QuerySet, label: ?[*:0]const u8) void {
		return wgpuQuerySetSetLabel(self, label);
	}
 extern fn wgpuQuerySetSetLabel(querySet: WGPUQuerySet, label: [*c]const u8) void;

	pub inline fn reference(self: QuerySet) void {
		return wgpuQuerySetReference(self);
	}
 extern fn wgpuQuerySetReference(querySet: WGPUQuerySet) void;

	pub inline fn release(self: QuerySet) void {
		return wgpuQuerySetRelease(self);
	}
 extern fn wgpuQuerySetRelease(querySet: WGPUQuerySet) void;

};

pub const Queue = *opaque {
	pub inline fn onSubmittedWorkDone(self: Queue, callback: QueueWorkDoneCallback, userdata: ?*anyopaque) void {
		return wgpuQueueOnSubmittedWorkDone(self, callback, userdata);
	}
 extern fn wgpuQueueOnSubmittedWorkDone(queue: WGPUQueue, callback: WGPUQueueWorkDoneCallback, userdata: ?*anyopaque) void;

	pub inline fn setLabel(self: Queue, label: ?[*:0]const u8) void {
		return wgpuQueueSetLabel(self, label);
	}
 extern fn wgpuQueueSetLabel(queue: WGPUQueue, label: [*c]const u8) void;

	pub inline fn submit(self: Queue, command_count: usize, commands: *const CommandBuffer) void {
		return wgpuQueueSubmit(self, command_count, commands);
	}
 extern fn wgpuQueueSubmit(queue: WGPUQueue, commandCount: usize, commands: [*c]const WGPUCommandBuffer) void;

	pub inline fn writeBuffer(self: Queue, buffer: Buffer, buffer_offset: u64, data: ?*const anyopaque, size: usize) void {
		return wgpuQueueWriteBuffer(self, buffer, buffer_offset, data, size);
	}
 extern fn wgpuQueueWriteBuffer(queue: WGPUQueue, buffer: WGPUBuffer, bufferOffset: u64, data: ?*const anyopaque, size: usize) void;

	pub inline fn writeTexture(self: Queue, destination: *const ImageCopyTexture, data: ?*const anyopaque, data_size: usize, data_layout: *const TextureDataLayout, write_size: *const Extent3D) void {
		return wgpuQueueWriteTexture(self, destination, data, data_size, data_layout, write_size);
	}
 extern fn wgpuQueueWriteTexture(queue: WGPUQueue, destination: [*c]const WGPUImageCopyTexture, data: ?*const anyopaque, dataSize: usize, dataLayout: [*c]const WGPUTextureDataLayout, writeSize: [*c]const WGPUExtent3D) void;

	pub inline fn reference(self: Queue) void {
		return wgpuQueueReference(self);
	}
 extern fn wgpuQueueReference(queue: WGPUQueue) void;

	pub inline fn release(self: Queue) void {
		return wgpuQueueRelease(self);
	}
 extern fn wgpuQueueRelease(queue: WGPUQueue) void;

};

pub const RenderBundle = *opaque {
	pub inline fn setLabel(self: RenderBundle, label: ?[*:0]const u8) void {
		return wgpuRenderBundleSetLabel(self, label);
	}
 extern fn wgpuRenderBundleSetLabel(renderBundle: WGPURenderBundle, label: [*c]const u8) void;

	pub inline fn reference(self: RenderBundle) void {
		return wgpuRenderBundleReference(self);
	}
 extern fn wgpuRenderBundleReference(renderBundle: WGPURenderBundle) void;

	pub inline fn release(self: RenderBundle) void {
		return wgpuRenderBundleRelease(self);
	}
 extern fn wgpuRenderBundleRelease(renderBundle: WGPURenderBundle) void;

};

pub const RenderBundleEncoder = *opaque {
	pub inline fn draw(self: RenderBundleEncoder, vertex_count: u32, instance_count: u32, first_vertex: u32, first_instance: u32) void {
		return wgpuRenderBundleEncoderDraw(self, vertex_count, instance_count, first_vertex, first_instance);
	}
 extern fn wgpuRenderBundleEncoderDraw(renderBundleEncoder: WGPURenderBundleEncoder, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) void;

	pub inline fn drawIndexed(self: RenderBundleEncoder, index_count: u32, instance_count: u32, first_index: u32, base_vertex: i32, first_instance: u32) void {
		return wgpuRenderBundleEncoderDrawIndexed(self, index_count, instance_count, first_index, base_vertex, first_instance);
	}
 extern fn wgpuRenderBundleEncoderDrawIndexed(renderBundleEncoder: WGPURenderBundleEncoder, indexCount: u32, instanceCount: u32, firstIndex: u32, baseVertex: i32, firstInstance: u32) void;

	pub inline fn drawIndexedIndirect(self: RenderBundleEncoder, indirect_buffer: Buffer, indirect_offset: u64) void {
		return wgpuRenderBundleEncoderDrawIndexedIndirect(self, indirect_buffer, indirect_offset);
	}
 extern fn wgpuRenderBundleEncoderDrawIndexedIndirect(renderBundleEncoder: WGPURenderBundleEncoder, indirectBuffer: WGPUBuffer, indirectOffset: u64) void;

	pub inline fn drawIndirect(self: RenderBundleEncoder, indirect_buffer: Buffer, indirect_offset: u64) void {
		return wgpuRenderBundleEncoderDrawIndirect(self, indirect_buffer, indirect_offset);
	}
 extern fn wgpuRenderBundleEncoderDrawIndirect(renderBundleEncoder: WGPURenderBundleEncoder, indirectBuffer: WGPUBuffer, indirectOffset: u64) void;

	pub inline fn finish(self: RenderBundleEncoder, descriptor: ?*const RenderBundleDescriptor) RenderBundle {
		return wgpuRenderBundleEncoderFinish(self, descriptor);
	}
 extern fn wgpuRenderBundleEncoderFinish(renderBundleEncoder: WGPURenderBundleEncoder, descriptor: [*c]const WGPURenderBundleDescriptor) WGPURenderBundle;

	pub inline fn insertDebugMarker(self: RenderBundleEncoder, marker_label: ?[*:0]const u8) void {
		return wgpuRenderBundleEncoderInsertDebugMarker(self, marker_label);
	}
 extern fn wgpuRenderBundleEncoderInsertDebugMarker(renderBundleEncoder: WGPURenderBundleEncoder, markerLabel: [*c]const u8) void;

	pub inline fn popDebugGroup(self: RenderBundleEncoder) void {
		return wgpuRenderBundleEncoderPopDebugGroup(self);
	}
 extern fn wgpuRenderBundleEncoderPopDebugGroup(renderBundleEncoder: WGPURenderBundleEncoder) void;

	pub inline fn pushDebugGroup(self: RenderBundleEncoder, group_label: ?[*:0]const u8) void {
		return wgpuRenderBundleEncoderPushDebugGroup(self, group_label);
	}
 extern fn wgpuRenderBundleEncoderPushDebugGroup(renderBundleEncoder: WGPURenderBundleEncoder, groupLabel: [*c]const u8) void;

	pub inline fn setBindGroup(self: RenderBundleEncoder, group_index: u32, group: BindGroup, dynamic_offset_count: usize, dynamic_offsets: ?[*]const u32) void {
		return wgpuRenderBundleEncoderSetBindGroup(self, group_index, group, dynamic_offset_count, dynamic_offsets);
	}
 extern fn wgpuRenderBundleEncoderSetBindGroup(renderBundleEncoder: WGPURenderBundleEncoder, groupIndex: u32, group: WGPUBindGroup, dynamicOffsetCount: usize, dynamicOffsets: [*c]const u32) void;

	pub inline fn setIndexBuffer(self: RenderBundleEncoder, buffer: Buffer, format: IndexFormat, offset: u64, size: u64) void {
		return wgpuRenderBundleEncoderSetIndexBuffer(self, buffer, format, offset, size);
	}
 extern fn wgpuRenderBundleEncoderSetIndexBuffer(renderBundleEncoder: WGPURenderBundleEncoder, buffer: WGPUBuffer, format: WGPUIndexFormat, offset: u64, size: u64) void;

	pub inline fn setLabel(self: RenderBundleEncoder, label: ?[*:0]const u8) void {
		return wgpuRenderBundleEncoderSetLabel(self, label);
	}
 extern fn wgpuRenderBundleEncoderSetLabel(renderBundleEncoder: WGPURenderBundleEncoder, label: [*c]const u8) void;

	pub inline fn setPipeline(self: RenderBundleEncoder, pipeline: RenderPipeline) void {
		return wgpuRenderBundleEncoderSetPipeline(self, pipeline);
	}
 extern fn wgpuRenderBundleEncoderSetPipeline(renderBundleEncoder: WGPURenderBundleEncoder, pipeline: WGPURenderPipeline) void;

	pub inline fn setVertexBuffer(self: RenderBundleEncoder, slot: u32, buffer: Buffer, offset: u64, size: u64) void {
		return wgpuRenderBundleEncoderSetVertexBuffer(self, slot, buffer, offset, size);
	}
 extern fn wgpuRenderBundleEncoderSetVertexBuffer(renderBundleEncoder: WGPURenderBundleEncoder, slot: u32, buffer: WGPUBuffer, offset: u64, size: u64) void;

	pub inline fn reference(self: RenderBundleEncoder) void {
		return wgpuRenderBundleEncoderReference(self);
	}
 extern fn wgpuRenderBundleEncoderReference(renderBundleEncoder: WGPURenderBundleEncoder) void;

	pub inline fn release(self: RenderBundleEncoder) void {
		return wgpuRenderBundleEncoderRelease(self);
	}
 extern fn wgpuRenderBundleEncoderRelease(renderBundleEncoder: WGPURenderBundleEncoder) void;

};

pub const RenderPassEncoder = *opaque {
	pub inline fn beginOcclusionQuery(self: RenderPassEncoder, query_index: u32) void {
		return wgpuRenderPassEncoderBeginOcclusionQuery(self, query_index);
	}
 extern fn wgpuRenderPassEncoderBeginOcclusionQuery(renderPassEncoder: WGPURenderPassEncoder, queryIndex: u32) void;

	pub inline fn beginPipelineStatisticsQuery(self: RenderPassEncoder, query_set: QuerySet, query_index: u32) void {
		return wgpuRenderPassEncoderBeginPipelineStatisticsQuery(self, query_set, query_index);
	}
 extern fn wgpuRenderPassEncoderBeginPipelineStatisticsQuery(renderPassEncoder: WGPURenderPassEncoder, querySet: WGPUQuerySet, queryIndex: u32) void;

	pub inline fn draw(self: RenderPassEncoder, vertex_count: u32, instance_count: u32, first_vertex: u32, first_instance: u32) void {
		return wgpuRenderPassEncoderDraw(self, vertex_count, instance_count, first_vertex, first_instance);
	}
 extern fn wgpuRenderPassEncoderDraw(renderPassEncoder: WGPURenderPassEncoder, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) void;

	pub inline fn drawIndexed(self: RenderPassEncoder, index_count: u32, instance_count: u32, first_index: u32, base_vertex: i32, first_instance: u32) void {
		return wgpuRenderPassEncoderDrawIndexed(self, index_count, instance_count, first_index, base_vertex, first_instance);
	}
 extern fn wgpuRenderPassEncoderDrawIndexed(renderPassEncoder: WGPURenderPassEncoder, indexCount: u32, instanceCount: u32, firstIndex: u32, baseVertex: i32, firstInstance: u32) void;

	pub inline fn drawIndexedIndirect(self: RenderPassEncoder, indirect_buffer: Buffer, indirect_offset: u64) void {
		return wgpuRenderPassEncoderDrawIndexedIndirect(self, indirect_buffer, indirect_offset);
	}
 extern fn wgpuRenderPassEncoderDrawIndexedIndirect(renderPassEncoder: WGPURenderPassEncoder, indirectBuffer: WGPUBuffer, indirectOffset: u64) void;

	pub inline fn drawIndirect(self: RenderPassEncoder, indirect_buffer: Buffer, indirect_offset: u64) void {
		return wgpuRenderPassEncoderDrawIndirect(self, indirect_buffer, indirect_offset);
	}
 extern fn wgpuRenderPassEncoderDrawIndirect(renderPassEncoder: WGPURenderPassEncoder, indirectBuffer: WGPUBuffer, indirectOffset: u64) void;

	pub inline fn end(self: RenderPassEncoder) void {
		return wgpuRenderPassEncoderEnd(self);
	}
 extern fn wgpuRenderPassEncoderEnd(renderPassEncoder: WGPURenderPassEncoder) void;

	pub inline fn endOcclusionQuery(self: RenderPassEncoder) void {
		return wgpuRenderPassEncoderEndOcclusionQuery(self);
	}
 extern fn wgpuRenderPassEncoderEndOcclusionQuery(renderPassEncoder: WGPURenderPassEncoder) void;

	pub inline fn endPipelineStatisticsQuery(self: RenderPassEncoder) void {
		return wgpuRenderPassEncoderEndPipelineStatisticsQuery(self);
	}
 extern fn wgpuRenderPassEncoderEndPipelineStatisticsQuery(renderPassEncoder: WGPURenderPassEncoder) void;

	pub inline fn executeBundles(self: RenderPassEncoder, bundle_count: usize, bundles: *const RenderBundle) void {
		return wgpuRenderPassEncoderExecuteBundles(self, bundle_count, bundles);
	}
 extern fn wgpuRenderPassEncoderExecuteBundles(renderPassEncoder: WGPURenderPassEncoder, bundleCount: usize, bundles: [*c]const WGPURenderBundle) void;

	pub inline fn insertDebugMarker(self: RenderPassEncoder, marker_label: ?[*:0]const u8) void {
		return wgpuRenderPassEncoderInsertDebugMarker(self, marker_label);
	}
 extern fn wgpuRenderPassEncoderInsertDebugMarker(renderPassEncoder: WGPURenderPassEncoder, markerLabel: [*c]const u8) void;

	pub inline fn popDebugGroup(self: RenderPassEncoder) void {
		return wgpuRenderPassEncoderPopDebugGroup(self);
	}
 extern fn wgpuRenderPassEncoderPopDebugGroup(renderPassEncoder: WGPURenderPassEncoder) void;

	pub inline fn pushDebugGroup(self: RenderPassEncoder, group_label: ?[*:0]const u8) void {
		return wgpuRenderPassEncoderPushDebugGroup(self, group_label);
	}
 extern fn wgpuRenderPassEncoderPushDebugGroup(renderPassEncoder: WGPURenderPassEncoder, groupLabel: [*c]const u8) void;

	pub inline fn setBindGroup(self: RenderPassEncoder, group_index: u32, group: BindGroup, dynamic_offset_count: usize, dynamic_offsets: ?[*]const u32) void {
		return wgpuRenderPassEncoderSetBindGroup(self, group_index, group, dynamic_offset_count, dynamic_offsets);
	}
 extern fn wgpuRenderPassEncoderSetBindGroup(renderPassEncoder: WGPURenderPassEncoder, groupIndex: u32, group: WGPUBindGroup, dynamicOffsetCount: usize, dynamicOffsets: [*c]const u32) void;

	pub inline fn setBlendConstant(self: RenderPassEncoder, color: *const Color) void {
		return wgpuRenderPassEncoderSetBlendConstant(self, color);
	}
 extern fn wgpuRenderPassEncoderSetBlendConstant(renderPassEncoder: WGPURenderPassEncoder, color: [*c]const WGPUColor) void;

	pub inline fn setIndexBuffer(self: RenderPassEncoder, buffer: Buffer, format: IndexFormat, offset: u64, size: u64) void {
		return wgpuRenderPassEncoderSetIndexBuffer(self, buffer, format, offset, size);
	}
 extern fn wgpuRenderPassEncoderSetIndexBuffer(renderPassEncoder: WGPURenderPassEncoder, buffer: WGPUBuffer, format: WGPUIndexFormat, offset: u64, size: u64) void;

	pub inline fn setLabel(self: RenderPassEncoder, label: ?[*:0]const u8) void {
		return wgpuRenderPassEncoderSetLabel(self, label);
	}
 extern fn wgpuRenderPassEncoderSetLabel(renderPassEncoder: WGPURenderPassEncoder, label: [*c]const u8) void;

	pub inline fn setPipeline(self: RenderPassEncoder, pipeline: RenderPipeline) void {
		return wgpuRenderPassEncoderSetPipeline(self, pipeline);
	}
 extern fn wgpuRenderPassEncoderSetPipeline(renderPassEncoder: WGPURenderPassEncoder, pipeline: WGPURenderPipeline) void;

	pub inline fn setScissorRect(self: RenderPassEncoder, x: u32, y: u32, width: u32, height: u32) void {
		return wgpuRenderPassEncoderSetScissorRect(self, x, y, width, height);
	}
 extern fn wgpuRenderPassEncoderSetScissorRect(renderPassEncoder: WGPURenderPassEncoder, x: u32, y: u32, width: u32, height: u32) void;

	pub inline fn setStencilReference(self: RenderPassEncoder, ref: u32) void {
		return wgpuRenderPassEncoderSetStencilReference(self, ref);
	}
 extern fn wgpuRenderPassEncoderSetStencilReference(renderPassEncoder: WGPURenderPassEncoder, reference: u32) void;

	pub inline fn setVertexBuffer(self: RenderPassEncoder, slot: u32, buffer: Buffer, offset: u64, size: u64) void {
		return wgpuRenderPassEncoderSetVertexBuffer(self, slot, buffer, offset, size);
	}
 extern fn wgpuRenderPassEncoderSetVertexBuffer(renderPassEncoder: WGPURenderPassEncoder, slot: u32, buffer: WGPUBuffer, offset: u64, size: u64) void;

	pub inline fn setViewport(self: RenderPassEncoder, x: f32, y: f32, width: f32, height: f32, min_depth: f32, max_depth: f32) void {
		return wgpuRenderPassEncoderSetViewport(self, x, y, width, height, min_depth, max_depth);
	}
 extern fn wgpuRenderPassEncoderSetViewport(renderPassEncoder: WGPURenderPassEncoder, x: f32, y: f32, width: f32, height: f32, minDepth: f32, maxDepth: f32) void;

	pub inline fn reference(self: RenderPassEncoder) void {
		return wgpuRenderPassEncoderReference(self);
	}
 extern fn wgpuRenderPassEncoderReference(renderPassEncoder: WGPURenderPassEncoder) void;

	pub inline fn release(self: RenderPassEncoder) void {
		return wgpuRenderPassEncoderRelease(self);
	}
 extern fn wgpuRenderPassEncoderRelease(renderPassEncoder: WGPURenderPassEncoder) void;

};

pub const RenderPipeline = *opaque {
	pub inline fn getBindGroupLayout(self: RenderPipeline, group_index: u32) BindGroupLayout {
		return wgpuRenderPipelineGetBindGroupLayout(self, group_index);
	}
 extern fn wgpuRenderPipelineGetBindGroupLayout(renderPipeline: WGPURenderPipeline, groupIndex: u32) WGPUBindGroupLayout;

	pub inline fn setLabel(self: RenderPipeline, label: ?[*:0]const u8) void {
		return wgpuRenderPipelineSetLabel(self, label);
	}
 extern fn wgpuRenderPipelineSetLabel(renderPipeline: WGPURenderPipeline, label: [*c]const u8) void;

	pub inline fn reference(self: RenderPipeline) void {
		return wgpuRenderPipelineReference(self);
	}
 extern fn wgpuRenderPipelineReference(renderPipeline: WGPURenderPipeline) void;

	pub inline fn release(self: RenderPipeline) void {
		return wgpuRenderPipelineRelease(self);
	}
 extern fn wgpuRenderPipelineRelease(renderPipeline: WGPURenderPipeline) void;

};

pub const Sampler = *opaque {
	pub inline fn setLabel(self: Sampler, label: ?[*:0]const u8) void {
		return wgpuSamplerSetLabel(self, label);
	}
 extern fn wgpuSamplerSetLabel(sampler: WGPUSampler, label: [*c]const u8) void;

	pub inline fn reference(self: Sampler) void {
		return wgpuSamplerReference(self);
	}
 extern fn wgpuSamplerReference(sampler: WGPUSampler) void;

	pub inline fn release(self: Sampler) void {
		return wgpuSamplerRelease(self);
	}
 extern fn wgpuSamplerRelease(sampler: WGPUSampler) void;

};

pub const ShaderModule = *opaque {
	pub inline fn getCompilationInfo(self: ShaderModule, callback: CompilationInfoCallback, userdata: ?*anyopaque) void {
		return wgpuShaderModuleGetCompilationInfo(self, callback, userdata);
	}
 extern fn wgpuShaderModuleGetCompilationInfo(shaderModule: WGPUShaderModule, callback: WGPUCompilationInfoCallback, userdata: ?*anyopaque) void;

	pub inline fn setLabel(self: ShaderModule, label: ?[*:0]const u8) void {
		return wgpuShaderModuleSetLabel(self, label);
	}
 extern fn wgpuShaderModuleSetLabel(shaderModule: WGPUShaderModule, label: [*c]const u8) void;

	pub inline fn reference(self: ShaderModule) void {
		return wgpuShaderModuleReference(self);
	}
 extern fn wgpuShaderModuleReference(shaderModule: WGPUShaderModule) void;

	pub inline fn release(self: ShaderModule) void {
		return wgpuShaderModuleRelease(self);
	}
 extern fn wgpuShaderModuleRelease(shaderModule: WGPUShaderModule) void;

};

pub const Surface = *opaque {
	pub inline fn configure(self: Surface, config: *const SurfaceConfiguration) void {
		return wgpuSurfaceConfigure(self, config);
	}
 extern fn wgpuSurfaceConfigure(surface: WGPUSurface, config: [*c]const WGPUSurfaceConfiguration) void;

	pub inline fn getCapabilities(self: Surface, adapter: Adapter, capabilities: *SurfaceCapabilities) void {
		return wgpuSurfaceGetCapabilities(self, adapter, capabilities);
	}
 extern fn wgpuSurfaceGetCapabilities(surface: WGPUSurface, adapter: WGPUAdapter, capabilities: [*c]WGPUSurfaceCapabilities) void;

	pub inline fn getCurrentTexture(self: Surface, surface_texture: *SurfaceTexture) void {
		return wgpuSurfaceGetCurrentTexture(self, surface_texture);
	}
 extern fn wgpuSurfaceGetCurrentTexture(surface: WGPUSurface, surfaceTexture: [*c]WGPUSurfaceTexture) void;

	pub inline fn getPreferredFormat(self: Surface, adapter: Adapter) TextureFormat {
		return wgpuSurfaceGetPreferredFormat(self, adapter);
	}
 extern fn wgpuSurfaceGetPreferredFormat(surface: WGPUSurface, adapter: WGPUAdapter) WGPUTextureFormat;

	pub inline fn present(self: Surface) void {
		return wgpuSurfacePresent(self);
	}
 extern fn wgpuSurfacePresent(surface: WGPUSurface) void;

	pub inline fn unconfigure(self: Surface) void {
		return wgpuSurfaceUnconfigure(self);
	}
 extern fn wgpuSurfaceUnconfigure(surface: WGPUSurface) void;

	pub inline fn reference(self: Surface) void {
		return wgpuSurfaceReference(self);
	}
 extern fn wgpuSurfaceReference(surface: WGPUSurface) void;

	pub inline fn release(self: Surface) void {
		return wgpuSurfaceRelease(self);
	}
 extern fn wgpuSurfaceRelease(surface: WGPUSurface) void;

	pub inline fn capabilitiesFreeMembers(self: Surface) void {
		return wgpuSurfaceCapabilitiesFreeMembers(self);
	}
 extern fn wgpuSurfaceCapabilitiesFreeMembers(capabilities: WGPUSurfaceCapabilities) void;

};

pub const Texture = *opaque {
	pub inline fn createView(self: Texture, descriptor: ?*const TextureViewDescriptor) TextureView {
		return wgpuTextureCreateView(self, descriptor);
	}
 extern fn wgpuTextureCreateView(texture: WGPUTexture, descriptor: [*c]const WGPUTextureViewDescriptor) WGPUTextureView;

	pub inline fn destroy(self: Texture) void {
		return wgpuTextureDestroy(self);
	}
 extern fn wgpuTextureDestroy(texture: WGPUTexture) void;

	pub inline fn getDepthOrArrayLayers(self: Texture) u32 {
		return wgpuTextureGetDepthOrArrayLayers(self);
	}
 extern fn wgpuTextureGetDepthOrArrayLayers(texture: WGPUTexture) u32;

	pub inline fn getDimension(self: Texture) TextureDimension {
		return wgpuTextureGetDimension(self);
	}
 extern fn wgpuTextureGetDimension(texture: WGPUTexture) WGPUTextureDimension;

	pub inline fn getFormat(self: Texture) TextureFormat {
		return wgpuTextureGetFormat(self);
	}
 extern fn wgpuTextureGetFormat(texture: WGPUTexture) WGPUTextureFormat;

	pub inline fn getHeight(self: Texture) u32 {
		return wgpuTextureGetHeight(self);
	}
 extern fn wgpuTextureGetHeight(texture: WGPUTexture) u32;

	pub inline fn getMipLevelCount(self: Texture) u32 {
		return wgpuTextureGetMipLevelCount(self);
	}
 extern fn wgpuTextureGetMipLevelCount(texture: WGPUTexture) u32;

	pub inline fn getSampleCount(self: Texture) u32 {
		return wgpuTextureGetSampleCount(self);
	}
 extern fn wgpuTextureGetSampleCount(texture: WGPUTexture) u32;

	pub inline fn getUsage(self: Texture) TextureUsage {
		return wgpuTextureGetUsage(self);
	}
 extern fn wgpuTextureGetUsage(texture: WGPUTexture) WGPUTextureUsageFlags;

	pub inline fn getWidth(self: Texture) u32 {
		return wgpuTextureGetWidth(self);
	}
 extern fn wgpuTextureGetWidth(texture: WGPUTexture) u32;

	pub inline fn setLabel(self: Texture, label: ?[*:0]const u8) void {
		return wgpuTextureSetLabel(self, label);
	}
 extern fn wgpuTextureSetLabel(texture: WGPUTexture, label: [*c]const u8) void;

	pub inline fn reference(self: Texture) void {
		return wgpuTextureReference(self);
	}
 extern fn wgpuTextureReference(texture: WGPUTexture) void;

	pub inline fn release(self: Texture) void {
		return wgpuTextureRelease(self);
	}
 extern fn wgpuTextureRelease(texture: WGPUTexture) void;

};

pub const TextureView = *opaque {
	pub inline fn setLabel(self: TextureView, label: ?[*:0]const u8) void {
		return wgpuTextureViewSetLabel(self, label);
	}
 extern fn wgpuTextureViewSetLabel(textureView: WGPUTextureView, label: [*c]const u8) void;

	pub inline fn reference(self: TextureView) void {
		return wgpuTextureViewReference(self);
	}
 extern fn wgpuTextureViewReference(textureView: WGPUTextureView) void;

	pub inline fn release(self: TextureView) void {
		return wgpuTextureViewRelease(self);
	}
 extern fn wgpuTextureViewRelease(textureView: WGPUTextureView) void;

};

