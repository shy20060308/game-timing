#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static uint _363 = 0u;
static float4 _395 = 0.0f.xxxx;
static float4x4 _396 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
static bool4 _397 = bool4(false, false, false, false);
static float3 _399 = 0.0f.xxx;
static float4 _400 = 0.0f.xxxx;
static float _401 = 0.0f;
static float2 _402 = 0.0f.xx;

cbuffer View
{
    row_major float4x4 View_View_TranslatedWorldToClip : packoffset(c0);
    row_major float4x4 View_View_RelativeWorldToClip : packoffset(c4);
    row_major float4x4 View_View_TranslatedWorldToView : packoffset(c12);
    row_major float4x4 View_View_ViewToClip : packoffset(c28);
    row_major float4x4 View_View_SVPositionToTranslatedWorld : packoffset(c44);
    float3 View_View_ViewOriginHigh : packoffset(c60);
    float3 View_View_ViewForward : packoffset(c61);
    float4 View_View_InvDeviceZToWorldZTransform : packoffset(c66);
    float4 View_View_ScreenPositionScaleBias : packoffset(c67);
    float3 View_View_ViewOriginLow : packoffset(c68);
    float3 View_View_TranslatedWorldCameraOrigin : packoffset(c69);
    float3 View_View_PreViewTranslationHigh : packoffset(c72);
    float3 View_View_PreViewTranslationLow : packoffset(c73);
    float3 View_View_ViewTilePosition : packoffset(c109);
    float3 View_View_RelativePreViewTranslationTO : packoffset(c112);
    row_major float4x4 View_View_ClipToPrevClip : packoffset(c124);
    float4 View_View_ViewRectMin : packoffset(c135);
    float4 View_View_ViewSizeAndInvSize : packoffset(c136);
    float4 View_View_LightProbeSizeRatioAndInvSizeRatio : packoffset(c138);
    float View_View_PreExposure : packoffset(c143.z);
    float View_View_OneOverPreExposure : packoffset(c143.w);
    float4 View_View_DiffuseOverrideParameter : packoffset(c144);
    float4 View_View_SpecularOverrideParameter : packoffset(c145);
    float4 View_View_NormalOverrideParameter : packoffset(c146);
    float2 View_View_RoughnessOverrideParameter : packoffset(c147);
    float View_View_OutOfBoundsMask : packoffset(c148);
    float View_View_CullingSign : packoffset(c149.w);
    float View_View_GameTime : packoffset(c150.y);
    float View_View_MaterialTextureMipBias : packoffset(c151);
    uint View_View_StateFrameIndexMod8 : packoffset(c152.y);
    float View_View_CameraCut : packoffset(c153.y);
    float View_View_UnlitViewmodeMask : packoffset(c153.z);
    float3 View_View_PrecomputedIndirectSpecularColorScale : packoffset(c167);
    float4 View_View_AtmosphereLightDirection[2] : packoffset(c168);
    float4 View_View_AtmosphereLightIlluminanceOnGroundPostTransmittance[2] : packoffset(c170);
    float4 View_View_AtmosphereLightDiscCosHalfApexAngle_PPTrans[2] : packoffset(c176);
    float4 View_View_SkyPlanetTranslatedWorldCenterAndViewHeight : packoffset(c180);
    float View_View_SkyAtmosphereHeightFogContribution : packoffset(c186.y);
    float View_View_SkyAtmosphereBottomRadiusKm : packoffset(c186.z);
    float View_View_SkyAtmosphereTopRadiusKm : packoffset(c186.w);
    float4 View_View_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize : packoffset(c187);
    float View_View_SkyAtmosphereAerialPerspectiveStartDepthKm : packoffset(c188);
    float View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution : packoffset(c188.y);
    float View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv : packoffset(c188.z);
    float View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv : packoffset(c189);
    float View_View_SkyAtmosphereApplyCameraAerialPerspectiveVolume : packoffset(c189.y);
    float View_View_RenderingReflectionCaptureMask : packoffset(c190.w);
    float View_View_RealTimeReflectionCapture : packoffset(c191);
    float4 View_View_SkyLightColor : packoffset(c194);
    float View_View_ReflectionCubemapMaxMip : packoffset(c204.z);
    float3 View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight : packoffset(c206);
    int View_View_StereoPassIndex : packoffset(c206.w);
    float3 View_View_VolumetricFogInvGridSize : packoffset(c237);
    float3 View_View_VolumetricFogGridZParams : packoffset(c238);
    float2 View_View_VolumetricFogScreenToResourceUV : packoffset(c241.z);
    float2 View_View_VolumetricFogUVMax : packoffset(c242);
    float View_View_VolumetricFogMaxDistance : packoffset(c242.z);
    float3 View_View_VolumetricLightmapWorldToUVScale : packoffset(c243);
    float3 View_View_VolumetricLightmapWorldToUVAdd : packoffset(c244);
    float3 View_View_VolumetricLightmapIndirectionTextureSize : packoffset(c245);
    float View_View_VolumetricLightmapBrickSize : packoffset(c245.w);
    float3 View_View_VolumetricLightmapBrickTexelSize : packoffset(c246);
    float View_View_MinRoughness : packoffset(c255.y);
    int4 View_View_EnvironmentComponentsFlags : packoffset(c302);
};

StructuredBuffer<float4> View_SkyIrradianceEnvironmentMap;
StructuredBuffer<float4> Scene_GPUScene_GPUScenePrimitiveSceneData;
cbuffer TranslucentBasePass
{
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumLocalLights : packoffset(c0);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumReflectionCaptures : packoffset(c0.y);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_HasDirectionalLight : packoffset(c0.z);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumGridCells : packoffset(c0.w);
    int3 TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize : packoffset(c1);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_MaxCulledLightsPerCell : packoffset(c1.w);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridPixelSizeShift : packoffset(c2);
    float3 TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams : packoffset(c3);
    float3 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDirection : packoffset(c4);
    float TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius : packoffset(c4.w);
    float TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSoftSourceRadius : packoffset(c5);
    float3 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightColor : packoffset(c6);
    float TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSpecularScale : packoffset(c7);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask : packoffset(c7.y);
    float2 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD : packoffset(c7.z);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades : packoffset(c8);
    int TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM : packoffset(c8.y);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths : packoffset(c9);
    row_major float4x4 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[4] : packoffset(c10);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[4] : packoffset(c26);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize : packoffset(c30);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightUseStaticShadowing : packoffset(c31.y);
    row_major float4x4 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToStaticShadow : packoffset(c34);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectLightingShowFlag : packoffset(c38);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters : packoffset(c92);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane : packoffset(c97);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionOrigin : packoffset(c98);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionXAxis : packoffset(c99);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionYAxis : packoffset(c100);
    row_major float3x4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_InverseTransposeMirrorMatrix : packoffset(c101);
    float3 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters : packoffset(c104);
    float2 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters2 : packoffset(c105);
    row_major float4x4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ProjectionWithExtraFOV[2] : packoffset(c106);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenScaleBias[2] : packoffset(c114);
    float2 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenBound : packoffset(c116);
    uint TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_bIsStereo : packoffset(c116.z);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters : packoffset(c118);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters2 : packoffset(c119);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogColorParameter : packoffset(c120);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3 : packoffset(c121);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Fog_SkyAtmosphereAmbientContributionColorScale : packoffset(c122);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Fog_InscatteringLightDirection : packoffset(c123);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Fog_DirectionalInscatteringColor : packoffset(c124);
    float2 TranslucentBasePass_TranslucentBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation : packoffset(c125);
    float3 TranslucentBasePass_TranslucentBasePass_Shared_Fog_FogInscatteringTextureParameters : packoffset(c126);
    float TranslucentBasePass_TranslucentBasePass_Shared_Fog_ApplyVolumetricFog : packoffset(c126.w);
    float TranslucentBasePass_TranslucentBasePass_Shared_Fog_VolumetricFogStartDistance : packoffset(c127);
    uint TranslucentBasePass_TranslucentBasePass_Shared_UseBasePassSkylight : packoffset(c151);
    float4 TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor : packoffset(c172);
    float4 TranslucentBasePass_TranslucentBasePass_PrevScreenPositionScaleBias : packoffset(c173);
    float2 TranslucentBasePass_TranslucentBasePass_PrevSceneColorBilinearUVMin : packoffset(c174);
    float2 TranslucentBasePass_TranslucentBasePass_PrevSceneColorBilinearUVMax : packoffset(c174.z);
    float TranslucentBasePass_TranslucentBasePass_PrevSceneColorPreExposureInv : packoffset(c175);
    int TranslucentBasePass_TranslucentBasePass_SSRQuality : packoffset(c175.y);
    float TranslucentBasePass_TranslucentBasePass_ApplyVolumetricCloudOnTransparent : packoffset(c179.z);
    float TranslucentBasePass_TranslucentBasePass_SoftBlendingDistanceKm : packoffset(c179.w);
    float TranslucentBasePass_TranslucentBasePass_ReprojectionRadiusScale : packoffset(c182);
    float TranslucentBasePass_TranslucentBasePass_InvClipmapFadeSize : packoffset(c182.w);
    uint TranslucentBasePass_TranslucentBasePass_RadianceProbeClipmapResolution : packoffset(c183.z);
    uint TranslucentBasePass_TranslucentBasePass_NumRadianceProbeClipmaps : packoffset(c183.w);
    uint TranslucentBasePass_TranslucentBasePass_RadianceProbeResolution : packoffset(c184);
    uint TranslucentBasePass_TranslucentBasePass_FinalProbeResolution : packoffset(c184.y);
    uint TranslucentBasePass_TranslucentBasePass_FinalRadianceAtlasMaxMip : packoffset(c184.z);
    float4 TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[6] : packoffset(c189);
    float4 TranslucentBasePass_TranslucentBasePass_PaddedWorldPositionToRadianceProbeCoordBias[6] : packoffset(c195);
    float4 TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[6] : packoffset(c201);
    float2 TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution : packoffset(c207);
    uint TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask : packoffset(c209);
    uint TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionDivideShift : packoffset(c209.y);
    uint TranslucentBasePass_TranslucentBasePass_Enabled : packoffset(c211.z);
    float TranslucentBasePass_TranslucentBasePass_RelativeDepthThreshold : packoffset(c211.w);
    float TranslucentBasePass_TranslucentBasePass_SpecularScale : packoffset(c212);
    float TranslucentBasePass_TranslucentBasePass_Contrast : packoffset(c212.y);
    float3 TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams : packoffset(c216);
    int3 TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize : packoffset(c217);
};

StructuredBuffer<float4> TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer;
StructuredBuffer<uint> TranslucentBasePass_Shared_Forward_NumCulledLightsGrid;
StructuredBuffer<float4> TranslucentBasePass_ProbeWorldOffset;
cbuffer ReflectionCaptureSM5
{
    float4 ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[341] : packoffset(c0);
    float4 ReflectionCaptureSM5_ReflectionCaptureSM5_PositionLow[341] : packoffset(c341);
    float4 ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[341] : packoffset(c682);
    float4 ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[341] : packoffset(c1023);
    row_major float4x4 ReflectionCaptureSM5_ReflectionCaptureSM5_BoxTransform[341] : packoffset(c1364);
    float4 ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[341] : packoffset(c2728);
};

cbuffer VirtualShadowMap
{
    uint VirtualShadowMap_VirtualShadowMap_bClipmapGreedyLevelSelection : packoffset(c5.y);
};

ByteAddressBuffer VirtualShadowMap_ProjectionData;
StructuredBuffer<uint> VirtualShadowMap_PageTable;
cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[6] : packoffset(c0);
};

Texture3D<uint4> View_VolumetricLightmapIndirectionTexture;
Texture3D<float4> View_DirectionalLightShadowingBrickTexture;
SamplerState View_SharedPointClampedSampler;
SamplerState View_SharedBilinearClampedSampler;
Texture2D<float4> View_TransmittanceLutTexture;
SamplerState View_TransmittanceLutTextureSampler;
Texture2D<float4> View_DistantSkyLightLutTexture;
SamplerState View_DistantSkyLightLutTextureSampler;
Texture3D<float4> View_CameraAerialPerspectiveVolume;
SamplerState View_CameraAerialPerspectiveVolumeSampler;
Texture2D<float4> TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlas;
SamplerState TranslucentBasePass_Shared_Forward_ShadowmapSampler;
Texture2D<float4> TranslucentBasePass_Shared_Forward_DirectionalLightStaticShadowmap;
SamplerState TranslucentBasePass_Shared_Forward_StaticShadowmapSampler;
Buffer<uint4> TranslucentBasePass_Shared_Forward_CulledLightDataGrid16Bit;
TextureCube<float4> TranslucentBasePass_Shared_Reflection_SkyLightCubemap;
SamplerState TranslucentBasePass_Shared_Reflection_SkyLightCubemapSampler;
TextureCubeArray<float4> TranslucentBasePass_Shared_Reflection_ReflectionCubemap;
SamplerState TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler;
Texture2D<float4> TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionTexture;
TextureCube<float4> TranslucentBasePass_Shared_Fog_FogInscatteringColorCubemap;
SamplerState TranslucentBasePass_Shared_Fog_FogInscatteringColorSampler;
Texture3D<float4> TranslucentBasePass_Shared_Fog_IntegratedLightScattering;
Texture2D<float4> TranslucentBasePass_SceneTextures_SceneDepthTexture;
SamplerState TranslucentBasePass_SceneTextures_PointClampSampler;
Texture3D<uint4> TranslucentBasePass_RadianceProbeIndirectionTexture;
Texture2D<float4> TranslucentBasePass_RadianceCacheFinalRadianceAtlas;
Texture2DArray<float4> TranslucentBasePass_Radiance;
Texture2D<float4> TranslucentBasePass_SceneDepth;
Texture3D<float4> TranslucentBasePass_TranslucencyGIVolumeHistory0;
Texture3D<float4> TranslucentBasePass_TranslucencyGIVolumeHistory1;
SamplerState TranslucentBasePass_TranslucencyGIVolumeSampler;
Texture2D<float4> TranslucentBasePass_HZBTexture;
SamplerState TranslucentBasePass_HZBSampler;
Texture2D<float4> TranslucentBasePass_PrevSceneColor;
SamplerState TranslucentBasePass_PrevSceneColorSampler;
Texture2D<float4> TranslucentBasePass_VolumetricCloudColor;
SamplerState TranslucentBasePass_VolumetricCloudColorSampler;
Texture2D<float4> TranslucentBasePass_VolumetricCloudDepth;
SamplerState TranslucentBasePass_VolumetricCloudDepthSampler;
Texture2DArray<uint4> VirtualShadowMap_PhysicalPagePool;
Texture2D<float4> Material_Texture2D_0;
SamplerState Material_Texture2D_0Sampler;

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float4 in_var_TEXCOORD10_centroid;
static float4 in_var_TEXCOORD11_centroid;
static float4 in_var_TEXCOORD0[1];
static uint in_var_PRIMITIVE_ID;
static float3 in_var_TEXCOORD9;
static float4 out_var_SV_Target0;

struct SPIRV_Cross_Input
{
    float4 in_var_TEXCOORD10_centroid : TEXCOORD10_centroid;
    float4 in_var_TEXCOORD11_centroid : TEXCOORD11_centroid;
    float4 in_var_TEXCOORD0[1] : TEXCOORD0;
    nointerpolation uint in_var_PRIMITIVE_ID : PRIMITIVE_ID;
    float3 in_var_TEXCOORD9 : TEXCOORD9;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
};

uint spvPackHalf2x16(float2 value)
{
    uint2 Packed = f32tof16(value);
    return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value)
{
    return f16tof32(uint2(value & 0xffff, value >> 16));
}

void frag_main()
{
    float _461 = 1.0f / gl_FragCoord.w;
    float2 _540 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _548 = float4(mad(_540, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), gl_FragCoord.z, 1.0f) * _461;
    float4 _552 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _556 = _552.xyz / _552.w.xxx;
    float3 _557 = _556 - View_View_RelativePreViewTranslationTO;
    precise float3 _97 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _557);
    precise float3 _100 = _557 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _97);
    float _559 = _548.w;
    float2 _564 = mad(_548.xy / _559.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    bool _566 = View_View_ViewToClip[3].w >= 1.0f;
    float3 _567 = -View_View_ViewForward;
    float3 _569 = normalize(-_556);
    float3 _579 = float3(_566 ? _567.x : _569.x, _566 ? _567.y : _569.y, _566 ? _567.z : _569.z);
    uint _580 = in_var_PRIMITIVE_ID * 42u;
    float4 _605 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, mad(float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_Material_PreshaderBuffer[0].x.xx, float2(View_View_GameTime * 0.0500000007450580596923828125f, 0.0f)), View_View_MaterialTextureMipBias);
    float2 _607 = mad(_605.xy, 2.0f.xx, (-1.0f).xx);
    float4 _622 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, mad(float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_Material_PreshaderBuffer[0].y.xx, float2(View_View_GameTime * (-0.0500000007450580596923828125f), 0.0f)), View_View_MaterialTextureMipBias);
    float2 _624 = mad(_622.xy, 2.0f.xx, (-1.0f).xx);
    float3 _646 = normalize(mul(normalize((((float4(_607, sqrt(clamp(1.0f - dot(_607, _607), 0.0f, 1.0f)), 1.0f).xyz + float4(_624, sqrt(clamp(1.0f - dot(_624, _624), 0.0f, 1.0f)), 1.0f).xyz) * Material_Material_PreshaderBuffer[1].xyz) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), float3x3(in_var_TEXCOORD10_centroid.xyz, cross(in_var_TEXCOORD11_centroid.xyz, in_var_TEXCOORD10_centroid.xyz) * in_var_TEXCOORD11_centroid.w, in_var_TEXCOORD11_centroid.xyz))) * ((View_View_CullingSign * (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_580].x) & 64u) != 0u) ? (-1.0f) : 1.0f)) * float(gl_FrontFacing ? 1 : (-1)));
    float _676 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _676 = _559;
            break;
        }
        else
        {
            float _662 = _548.z;
            _676 = mad(_662, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_662, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float4 _680 = TranslucentBasePass_SceneTextures_SceneDepthTexture.SampleLevel(TranslucentBasePass_SceneTextures_PointClampSampler, _564, 0.0f);
    float _681 = _680.x;
    float3 _712 = clamp(Material_Material_PreshaderBuffer[3].xyz, 0.0f.xxx, 1.0f.xxx);
    float _713 = clamp(Material_Material_PreshaderBuffer[3].w, 0.0f, 1.0f);
    float _718 = mad(clamp(Material_Material_PreshaderBuffer[4].y, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _719 = clamp(Material_Material_PreshaderBuffer[4].w * clamp(((mad(_681, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_681, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w))) - _676) * Material_Material_PreshaderBuffer[4].z, 0.0f, 1.0f), 0.0f, 1.0f);
    float _769 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_580].x) & 4u) != 0u)
    {
        float3 _737 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _557, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _748 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_737.x), int(_737.y), int(_737.z), 0).xyz, 0)));
        _769 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_748.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_737 / _748.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _769 = 1.0f;
    }
    float4 _770 = float4(_769, 1.0f, 1.0f, 1.0f);
    float3 _783 = ((_712 - (_712 * _713)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _790 = (lerp((0.07999999821186065673828125f * clamp(Material_Material_PreshaderBuffer[4].x, 0.0f, 1.0f)).xxx, _712, _713.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _793 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _798 = 0.0f.xxx;
    if (_793)
    {
        _798 = _783 + (_790 * 0.449999988079071044921875f);
    }
    else
    {
        _798 = _783;
    }
    bool3 _799 = _793.xxx;
    float3 _800 = float3(_799.x ? 0.0f.xxx.x : _790.x, _799.y ? 0.0f.xxx.y : _790.y, _799.z ? 0.0f.xxx.z : _790.z);
    float3 _941 = 0.0f.xxx;
    if (TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z > 0)
    {
        float4 _860 = float4(_97, 1.0f);
        precise float4 _101 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _102 = _860 + _101;
        precise float4 _103 = _102 - _860;
        precise float4 _104 = _102 - _103;
        precise float4 _105 = _860 - _104;
        precise float4 _106 = _101 - _103;
        precise float4 _107 = _105 + _106;
        float4 _871 = mul(_102 + (float4(_100, 0.0f) + _107), View_View_RelativeWorldToClip);
        float _872 = _871.w;
        float3 _891 = float3(mad((_871.xy / _872.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_872, TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.x, TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.y)) * TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.z) / float(TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z));
        float4 _895 = TranslucentBasePass_TranslucencyGIVolumeHistory0.SampleLevel(TranslucentBasePass_TranslucencyGIVolumeSampler, _891, 0.0f);
        float3 _896 = _895.xyz;
        float3 _900 = TranslucentBasePass_TranslucencyGIVolumeHistory1.SampleLevel(TranslucentBasePass_TranslucencyGIVolumeSampler, _891, 0.0f).xyz;
        float4 _902 = 0.0f.xxxx;
        _902.x = _895.x;
        float4 _904 = 0.0f.xxxx;
        _904.x = _895.y;
        float4 _906 = 0.0f.xxxx;
        _906.x = _895.z;
        float3 _910 = _896 / (dot(_896, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) + 9.9999997473787516355514526367188e-06f).xxx;
        float3 _912 = _900 * _910.x;
        float3 _915 = _900 * _910.y;
        float3 _918 = _900 * _910.z;
        float4 _922 = 0.0f.xxxx;
        _922.y = (-0.48860299587249755859375f) * _646.y;
        _922.z = 0.48860299587249755859375f * _646.z;
        _922.w = (-0.48860299587249755859375f) * _646.x;
        _922.x = 0.886227548122406005859375f;
        float3 _931 = _922.yzw * 2.094395160675048828125f;
        float4 _932 = float4(_922.x, _931.x, _931.y, _931.z);
        float3 _934 = 0.0f.xxx;
        _934.x = dot(float4(_902.x, _912.x, _912.y, _912.z), _932);
        _934.y = dot(float4(_904.x, _915.x, _915.y, _915.z), _932);
        _934.z = dot(float4(_906.x, _918.x, _918.y, _918.z), _932);
        _941 = max(0.0f.xxx, _934) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        float3 _856 = 0.0f.xxx;
        if (TranslucentBasePass_TranslucentBasePass_Shared_UseBasePassSkylight > 0u)
        {
            float4 _815 = float4(_646, 1.0f);
            float3 _819 = 0.0f.xxx;
            _819.x = dot(View_SkyIrradianceEnvironmentMap[0u], _815);
            _819.y = dot(View_SkyIrradianceEnvironmentMap[1u], _815);
            _819.z = dot(View_SkyIrradianceEnvironmentMap[2u], _815);
            float4 _830 = _815.xyzz * _815.yzzx;
            float3 _834 = 0.0f.xxx;
            _834.x = dot(View_SkyIrradianceEnvironmentMap[3u], _830);
            _834.y = dot(View_SkyIrradianceEnvironmentMap[4u], _830);
            _834.z = dot(View_SkyIrradianceEnvironmentMap[5u], _830);
            _856 = (max(0.0f.xxx, (_819 + _834) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_646.x, _646.x, -(_646.y * _646.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
        }
        else
        {
            _856 = 0.0f.xxx;
        }
        _941 = _856;
    }
    uint2 _980 = uint2(_540 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    uint _990 = (((min(uint(max(0.0f, log2(mad(_461, TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams.x, TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams.y)) * TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams.z)), uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize.y)) + _980.y) * uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize.x)) + _980.x;
    float3 _1068 = 0.0f.xxx;
    if (View_View_AtmosphereLightDiscCosHalfApexAngle_PPTrans[0u].y > 0.0f)
    {
        float3 _997 = (_556 - View_View_SkyPlanetTranslatedWorldCenterAndViewHeight.xyz) * 9.9999997473787516355514526367188e-06f;
        float3 _1067 = 0.0f.xxx;
        do
        {
            float3 _1007 = _997 - float4(0.0f, 0.0f, 0.0f, View_View_SkyAtmosphereBottomRadiusKm).xyz;
            float _1009 = dot(View_View_AtmosphereLightDirection[0u].xyz, View_View_AtmosphereLightDirection[0u].xyz);
            float _1010 = dot(View_View_AtmosphereLightDirection[0u].xyz, _1007);
            float _1011 = 2.0f * _1010;
            float _1017 = mad(_1011, _1011, -((4.0f * _1009) * mad(-View_View_SkyAtmosphereBottomRadiusKm, View_View_SkyAtmosphereBottomRadiusKm, dot(_1007, _1007))));
            float2 _1029 = 0.0f.xx;
            [flatten]
            if (_1017 >= 0.0f)
            {
                _1029 = ((_1010 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1017))) / (2.0f * _1009).xx;
            }
            else
            {
                _1029 = (-1.0f).xx;
            }
            if ((_1029.x > 0.0f) || (_1029.y > 0.0f))
            {
                _1067 = 0.0f.xxx;
                break;
            }
            float _1037 = length(_997);
            float _1040 = dot(View_View_AtmosphereLightDirection[0u].xyz, _997 / _1037.xxx);
            float _1042 = -(View_View_SkyAtmosphereBottomRadiusKm * View_View_SkyAtmosphereBottomRadiusKm);
            float _1045 = sqrt(max(0.0f, mad(View_View_SkyAtmosphereTopRadiusKm, View_View_SkyAtmosphereTopRadiusKm, _1042)));
            float _1048 = sqrt(max(0.0f, mad(_1037, _1037, _1042)));
            float _1057 = View_View_SkyAtmosphereTopRadiusKm - _1037;
            _1067 = View_TransmittanceLutTexture.SampleLevel(View_TransmittanceLutTextureSampler, float2((max(0.0f, mad(-_1037, _1040, sqrt(mad(_1037 * _1037, mad(_1040, _1040, -1.0f), View_View_SkyAtmosphereTopRadiusKm * View_View_SkyAtmosphereTopRadiusKm)))) - _1057) / ((_1048 + _1045) - _1057), _1048 / _1045), 0.0f).xyz;
            break;
        } while(false);
        _1068 = _1067;
    }
    else
    {
        _1068 = 1.0f.xxx;
    }
    uint _1071 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_580].x);
    uint _1084 = (uint((_1071 & 2048u) != 0u) | (uint((_1071 & 4096u) != 0u) << 1u)) | (uint((_1071 & 8192u) != 0u) << 2u);
    float4 _1880 = 0.0f.xxxx;
    float4 _1881 = 0.0f.xxxx;
    float4 _1882 = 0.0f.xxxx;
    [branch]
    if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        float4 _1113 = float4(_401, float((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 2u) >> 1u), float((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 4u) >> 2u), float((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 8u) >> 3u));
        _1113.x = 1.0f;
        float _1156 = 0.0f;
        [branch]
        if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightUseStaticShadowing > 0u)
        {
            float4 _1128 = mul(float4(_556, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToStaticShadow);
            float2 _1132 = _1128.xy / _1128.w.xx;
            bool2 _1133 = bool2(_1132.x >= 0.0f.xx.x, _1132.y >= 0.0f.xx.y);
            bool2 _1134 = bool2(_1132.x <= 1.0f.xx.x, _1132.y <= 1.0f.xx.y);
            float _1155 = 0.0f;
            if (all(bool2(_1133.x && _1134.x, _1133.y && _1134.y)))
            {
                float4 _1148 = TranslucentBasePass_Shared_Forward_DirectionalLightStaticShadowmap.SampleLevel(TranslucentBasePass_Shared_Forward_StaticShadowmapSampler, _1132, 0.0f);
                float _1149 = _1148.x;
                _1155 = float((_1128.z < _1149) || (_1149 > 0.9900000095367431640625f));
            }
            else
            {
                _1155 = 1.0f;
            }
            _1156 = _1155;
        }
        else
        {
            _1156 = 1.0f;
        }
        float4 _1157 = _770;
        _1157.x = _1156;
        float _1236 = 0.0f;
        if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades > 0u)
        {
            float4 _1165 = _559.xxxx;
            float4 _1167 = float4(bool4(_1165.x >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.x, _1165.y >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.y, _1165.z >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.z, _1165.w >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.w));
            uint _1175 = uint(((_1167.x + _1167.y) + _1167.z) + _1167.w);
            float _1235 = 0.0f;
            if (_1175 < TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades)
            {
                float4 _1185 = mul(float4(_556, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[_1175]);
                float2 _1189 = _1185.xy / _1185.w.xx;
                bool2 _1193 = bool2(_1189.x >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_1175].xy.x, _1189.y >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_1175].xy.y);
                bool2 _1195 = bool2(_1189.x <= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_1175].zw.x, _1189.y <= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_1175].zw.y);
                float _1234 = 0.0f;
                if (all(bool2(_1193.x && _1195.x, _1193.y && _1195.y)))
                {
                    float2 _1213 = mad(_1189, TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.xy, (-0.5f).xx);
                    float2 _1214 = frac(_1213);
                    float4 _1225 = clamp((TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlas.GatherRed(TranslucentBasePass_Shared_Forward_ShadowmapSampler, (floor(_1213) + 1.0f.xx) * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.zw) * 4000.0f) - mad(1.0f - _1185.z, 4000.0f, -1.0f).xxxx, 0.0f.xxxx, 1.0f.xxxx);
                    float2 _1229 = lerp(_1225.wx, _1225.zy, _1214.xx);
                    _1234 = lerp(_1229.x, _1229.y, _1214.y);
                }
                else
                {
                    _1234 = 1.0f;
                }
                _1235 = _1234;
            }
            else
            {
                _1235 = 1.0f;
            }
            _1236 = _1235;
        }
        else
        {
            _1236 = 1.0f;
        }
        float _1638 = 0.0f;
        [branch]
        if (true && (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM != (-1)))
        {
            float _1636 = 0.0f;
            do
            {
                uint _1247 = uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM) * 288u;
                uint _1249 = (_1247 + 208u) >> 2u;
                uint _1261 = (_1247 + 224u) >> 2u;
                uint _1278 = (_1247 + 240u) >> 2u;
                precise float3 _108 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1249 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1249 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1249 + 2u) * 4 + 0))) - View_View_PreViewTranslationHigh;
                precise float3 _109 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1261 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1261 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1261 + 2u) * 4 + 0))) - View_View_PreViewTranslationLow;
                precise float3 _110 = _108 + _109;
                int _1311 = max(0, (int(floor(log2(length(_556 + (asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1278 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1278 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1278 + 2u) * 4 + 0))) + _110))) + ((VirtualShadowMap_VirtualShadowMap_bClipmapGreedyLevelSelection != 0u) ? 0.0f : asfloat(VirtualShadowMap_ProjectionData.Load(((_1247 + 236u) >> 2u) * 4 + 0))))) - int(VirtualShadowMap_ProjectionData.Load(((_1247 + 264u) >> 2u) * 4 + 0))));
                if (_1311 < int(VirtualShadowMap_ProjectionData.Load(((_1247 + 268u) >> 2u) * 4 + 0)))
                {
                    int _1315 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM + _1311;
                    uint _1316 = uint(_1315);
                    uint _1317 = _1316 * 288u;
                    uint _1319 = (_1317 + 32u) >> 2u;
                    uint _1334 = (_1317 + 48u) >> 2u;
                    uint _1343 = (_1317 + 64u) >> 2u;
                    float4x4 _1357 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    _1357[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1343 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1343 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1343 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1343 + 3u) * 4 + 0)));
                    uint _1359 = (_1317 + 80u) >> 2u;
                    _1357[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1359 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1359 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1359 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1359 + 3u) * 4 + 0)));
                    uint _1375 = (_1317 + 96u) >> 2u;
                    _1357[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1375 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1375 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1375 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1375 + 3u) * 4 + 0)));
                    uint _1391 = (_1317 + 112u) >> 2u;
                    _1357[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1391 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1391 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1391 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1391 + 3u) * 4 + 0)));
                    uint _1407 = (_1317 + 208u) >> 2u;
                    uint _1419 = (_1317 + 224u) >> 2u;
                    precise float3 _111 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1407 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1407 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1407 + 2u) * 4 + 0))) - View_View_PreViewTranslationHigh;
                    precise float3 _112 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1419 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1419 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1419 + 2u) * 4 + 0))) - View_View_PreViewTranslationLow;
                    precise float3 _113 = _111 + _112;
                    float4 _1435 = mul(float4(_556 + _113, 1.0f), _1357);
                    float2 _1436 = _1435.xy;
                    uint2 _1438 = uint2(_1436 * 128.0f);
                    uint _1454 = 0u;
                    do
                    {
                        if (uint(int(_1316)) < 8192u)
                        {
                            _1454 = _1316;
                            break;
                        }
                        _1454 = (8192u + ((_1316 - 8192u) * 21845u)) + (_1438.x + (_1438.y << 7u));
                        break;
                    } while(false);
                    uint _1462 = (VirtualShadowMap_PageTable[_1454] >> 20u) & 63u;
                    bool _1464 = (VirtualShadowMap_PageTable[_1454] & 2147483648u) != 0u;
                    float _1627 = 0.0f;
                    bool _1628 = false;
                    if (_1464)
                    {
                        float _1603 = 0.0f;
                        float _1604 = 0.0f;
                        uint2 _1605 = uint2(0u, 0u);
                        uint2 _1606 = uint2(0u, 0u);
                        bool _1607 = false;
                        if (_1462 > 0u)
                        {
                            uint _1477 = (_1317 + 256u) >> 2u;
                            uint _1480 = _1477 + 1u;
                            uint _1485 = uint(int(_1316 + _1462));
                            uint _1488 = ((_1485 * 288u) + 256u) >> 2u;
                            int _1500 = int(_1462);
                            uint2 _1508 = ((_1438 - uint2(int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_1477 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_1480 * 4 + 0))))) + uint2((int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_1488 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1488 + 1u) * 4 + 0)))) << (_1500.xx & int2(31, 31)))) >> (_1462.xx & uint2(31u, 31u));
                            uint2 _1509 = _1508 * uint2(128u, 128u);
                            uint _1523 = uint(_1315 + _1500) * 288u;
                            uint _1525 = (_1523 + 48u) >> 2u;
                            uint _1540 = (_1523 + 256u) >> 2u;
                            float _1561 = (_1500 >= 0) ? (1.0f / float(1u << (uint(_1500) & 31u))) : float(1u << (uint(-_1500) & 31u));
                            uint _1590 = 0u;
                            do
                            {
                                if (uint(int(_1485)) < 8192u)
                                {
                                    _1590 = _1485;
                                    break;
                                }
                                _1590 = (8192u + ((_1485 - 8192u) * 21845u)) + (_1508.x + (_1508.y << 7u));
                                break;
                            } while(false);
                            _1603 = _1561;
                            _1604 = mad(-_1561, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1334 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1334 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1334 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1334 + 3u) * 4 + 0))).z, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1525 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1525 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1525 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1525 + 3u) * 4 + 0))).z);
                            _1605 = clamp(uint2(((_1436 * _1561) + ((float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_1540 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1540 + 1u) * 4 + 0)))) - (float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_1477 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_1480 * 4 + 0)))) * _1561)) * 0.25f).xy) * 16384.0f), _1509, _1509 + uint2(127u, 127u));
                            _1606 = uint2(VirtualShadowMap_PageTable[_1590] & 1023u, (VirtualShadowMap_PageTable[_1590] >> 10u) & 1023u);
                            _1607 = ((VirtualShadowMap_PageTable[_1590] & 2147483648u) != 0u) && (((VirtualShadowMap_PageTable[_1590] >> 20u) & 63u) == 0u);
                        }
                        else
                        {
                            _1603 = 1.0f;
                            _1604 = 0.0f;
                            _1605 = uint2(_1436 * 16384.0f);
                            _1606 = uint2(VirtualShadowMap_PageTable[_1454] & 1023u, (VirtualShadowMap_PageTable[_1454] >> 10u) & 1023u);
                            _1607 = _1464 && (_1462 == 0u);
                        }
                        float _1625 = 0.0f;
                        if (_1607)
                        {
                            int4 _1616 = int4(uint4((_1606 * uint2(128u, 128u)) + (_1605 & uint2(127u, 127u)), 0u, 0u));
                            _1625 = (asfloat(VirtualShadowMap_PhysicalPagePool.Load(int4(_1616.xyz, _1616.w)).x) - _1604) / _1603;
                        }
                        else
                        {
                            _1625 = 0.0f;
                        }
                        _1627 = _1625;
                        _1628 = _1607 ? true : false;
                    }
                    else
                    {
                        _1627 = 0.0f;
                        _1628 = false;
                    }
                    if (_1628)
                    {
                        _1636 = (mad(max(0.0f, 0.0f), asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1319 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1319 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1319 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1319 + 3u) * 4 + 0))).z, _1627) > _1435.z) ? 0.0f : 1.0f;
                        break;
                    }
                }
                _1636 = 1.0f;
                break;
            } while(false);
            _1638 = _1236 * _1636;
        }
        else
        {
            _1638 = _1236;
        }
        float _1645 = clamp(mad(_559, TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
        float _1647 = lerp(_1638, lerp(1.0f, dot(_1157, _1113), dot(_1113, 1.0f.xxxx)), _1645 * _1645);
        float3 _1858 = 0.0f.xxx;
        float3 _1859 = 0.0f.xxx;
        [branch]
        if ((_1647 + min(_1647, 1.0f)) > 0.0f)
        {
            float _1655 = max(_718, View_View_MinRoughness);
            float _1656 = dot(TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDirection, TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDirection);
            float _1659 = rsqrt(_1656);
            float3 _1660 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDirection * _1659;
            float _1661 = dot(_646, _1660);
            float _1679 = 0.0f;
            if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1668 = sqrt(clamp((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1656 + 1.0f)), 0.0f, 1.0f));
                float _1678 = 0.0f;
                if (_1661 < _1668)
                {
                    float _1674 = _1668 + max(_1661, -_1668);
                    _1678 = (_1674 * _1674) / (4.0f * _1668);
                }
                else
                {
                    _1678 = _1661;
                }
                _1679 = _1678;
            }
            else
            {
                _1679 = _1661;
            }
            float _1680 = clamp(_1679, 0.0f, 1.0f);
            float _1681 = max(_1655, View_View_MinRoughness);
            float _1686 = clamp((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius * _1659) * mad(-_1681, _1681, 1.0f), 0.0f, 1.0f);
            float _1688 = clamp(TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1659, 0.0f, 1.0f);
            float _1696 = dot(_646, _579);
            float _1697 = dot(_579, _1660);
            float _1699 = rsqrt(mad(2.0f, _1697, 2.0f));
            bool _1705 = _1686 > 0.0f;
            float _1784 = 0.0f;
            float _1785 = 0.0f;
            if (_1705)
            {
                float _1710 = sqrt(mad(-_1686, _1686, 1.0f));
                float _1711 = 2.0f * _1661;
                float _1712 = -_1697;
                float _1713 = mad(_1711, _1696, _1712);
                float _1782 = 0.0f;
                float _1783 = 0.0f;
                if (_1713 >= _1710)
                {
                    _1782 = 1.0f;
                    _1783 = abs(_1696);
                }
                else
                {
                    float _1718 = -_1713;
                    float _1721 = _1686 * rsqrt(mad(_1718, _1713, 1.0f));
                    float _1722 = mad(_1718, _1661, _1696);
                    float _1726 = mad(_1718, _1697, mad(2.0f * _1696, _1696, -1.0f));
                    float _1737 = _1721 * sqrt(clamp(mad(_1711 * _1696, _1697, mad(_1712, _1697, mad(-_1696, _1696, mad(-_1661, _1661, 1.0f)))), 0.0f, 1.0f));
                    float _1739 = (_1737 * 2.0f) * _1696;
                    float _1740 = mad(_1661, _1710, _1696);
                    float _1741 = mad(_1721, _1722, _1740);
                    float _1743 = mad(_1721, _1726, mad(_1697, _1710, 1.0f));
                    float _1744 = _1737 * _1743;
                    float _1745 = _1741 * _1743;
                    float _1750 = _1745 * mad(-0.5f, _1744, (0.25f * _1739) * _1741);
                    float _1760 = mad(_1741, mad(_1740, _1743 * _1743, _1745 * mad(-0.5f, mad(_1697, _1710, _1743), -0.5f)), mad(_1744, _1744, (_1739 * _1741) * mad(_1739, _1741, _1744 * (-2.0f))));
                    float _1764 = (2.0f * _1750) / mad(_1760, _1760, _1750 * _1750);
                    float _1765 = _1764 * _1760;
                    float _1767 = mad(-_1764, _1750, 1.0f);
                    float _1773 = mad(_1697, _1710, mad(_1767, _1721 * _1726, _1765 * _1739));
                    float _1775 = rsqrt(mad(2.0f, _1773, 2.0f));
                    _1782 = clamp((mad(_1661, _1710, mad(_1767, _1721 * _1722, _1765 * _1737)) + _1696) * _1775, 0.0f, 1.0f);
                    _1783 = clamp(mad(_1775, _1773, _1775), 0.0f, 1.0f);
                }
                _1784 = _1782;
                _1785 = _1783;
            }
            else
            {
                _1784 = clamp((_1661 + _1696) * _1699, 0.0f, 1.0f);
                _1785 = clamp(mad(_1699, _1697, _1699), 0.0f, 1.0f);
            }
            float _1788 = clamp(abs(_1696) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float3 _1790 = 1.0f.xxx * _1680;
            float3 _1852 = 0.0f.xxx;
            if (((0u | (asuint(clamp(mad(-max(0.0f, TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
            {
                _1852 = 0.0f.xxx;
            }
            else
            {
                float _1797 = _1655 * _1655;
                float _1807 = 0.0f;
                if (_1688 > 0.0f)
                {
                    _1807 = clamp(mad(_1797, _1797, (_1688 * _1688) / mad(_1785, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                }
                else
                {
                    _1807 = _1797 * _1797;
                }
                float _1821 = 0.0f;
                if (_1705)
                {
                    _1821 = _1807 / (_1807 + (((0.25f * _1686) * mad(3.0f, asfloat(532487669 + (asint(_1807) >> 1)), _1686)) / (_1785 + 0.001000000047497451305389404296875f)));
                }
                else
                {
                    _1821 = 1.0f;
                }
                float _1824 = mad(mad(_1784, _1807, -_1784), _1784, 1.0f);
                float _1829 = sqrt(_1807);
                float _1830 = 1.0f - _1829;
                float _1836 = 1.0f - _1785;
                float _1837 = _1836 * _1836;
                float _1838 = _1837 * _1837;
                _1852 = _1790 * (((clamp(50.0f * _800.y, 0.0f, 1.0f) * (_1838 * _1836)).xxx + (_800 * mad(-_1838, _1836, 1.0f))) * (((_1807 / ((3.1415927410125732421875f * _1824) * _1824)) * _1821) * (0.5f / mad(_1680, mad(_1788, _1830, _1829), _1788 * mad(_1680, _1830, _1829)))));
            }
            float3 _1855 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightColor * _1647;
            _1858 = mad(((_798 * 0.3183098733425140380859375f) * _1790) * 1.0f, _1855, 0.0f.xxx);
            _1859 = (_1852 * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1855;
        }
        else
        {
            _1858 = 0.0f.xxx;
            _1859 = 0.0f.xxx;
        }
        float4 _1863 = float4(_1858, 0.0f);
        float4 _1867 = float4(_1859, 0.0f);
        float4 _1878 = 0.0f.xxxx;
        float4 _1879 = 0.0f.xxxx;
        [flatten]
        if ((((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _1084) != 0u)
        {
            float3 _1873 = _1863.xyz * _1068;
            float3 _1876 = _1867.xyz * _1068;
            _1878 = float4(_1873.x, _1873.y, _1873.z, _1863.w);
            _1879 = float4(_1876.x, _1876.y, _1876.z, _1867.w);
        }
        else
        {
            _1878 = 0.0f.xxxx;
            _1879 = 0.0f.xxxx;
        }
        _1880 = _1157;
        _1881 = _1878;
        _1882 = _1879;
    }
    else
    {
        _1880 = _770;
        _1881 = 0.0f.xxxx;
        _1882 = 0.0f.xxxx;
    }
    uint _1883 = _990 * 2u;
    uint _1889 = _1883 + 1u;
    uint _1894 = min(min(TranslucentBasePass_Shared_Forward_NumCulledLightsGrid[_1883], TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumLocalLights), TranslucentBasePass_TranslucentBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1896 = 0.0f.xxxx;
    float4 _1899 = 0.0f.xxxx;
    _1896 = _1881;
    _1899 = _1882;
    float4 _1897 = 0.0f.xxxx;
    float4 _1900 = 0.0f.xxxx;
    [loop]
    for (uint _1901 = 0u; _1901 < _1894; _1896 = _1897, _1899 = _1900, _1901++)
    {
        uint _1910 = TranslucentBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(TranslucentBasePass_Shared_Forward_NumCulledLightsGrid[_1889] + _1901).x * 6u;
        uint _1913 = _1910 + 1u;
        uint _1916 = _1910 + 2u;
        uint _1919 = _1910 + 3u;
        uint _1922 = _1910 + 4u;
        uint _1926 = asuint(TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer[_1916].w);
        uint _1932 = asuint(TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer[_1913].y);
        uint _1948 = asuint(TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer[_1919].z);
        float2 _1950 = spvUnpackHalf2x16(_1948 & 65535u);
        float _1951 = _1950.x;
        float2 _1954 = spvUnpackHalf2x16(asuint(TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer[_1919].w));
        float _1955 = _1954.x;
        bool _1960 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer[_1913].w == 0.0f;
        float4 _1981 = float4(float(_1926 & 1u), float((_1926 & 2u) >> 1u), float((_1926 & 4u) >> 2u), float((_1926 & 8u) >> 3u));
        uint _1982 = _1926 >> 4u;
        float3 _1998 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer[_1910].xyz - _556;
        float _1999 = dot(_1998, _1998);
        float _2016 = 0.0f;
        if (_1960)
        {
            float _2011 = _1999 * (TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer[_1910].w * TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer[_1910].w);
            float _2014 = clamp(mad(-_2011, _2011, 1.0f), 0.0f, 1.0f);
            _2016 = _2014 * _2014;
        }
        else
        {
            float3 _2005 = _1998 * TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer[_1910].w;
            _2016 = pow(1.0f - clamp(dot(_2005, _2005), 0.0f, 1.0f), TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer[_1913].w);
        }
        float _2027 = 0.0f;
        if (((_1926 >> 16u) & 3u) == 2u)
        {
            float _2024 = clamp((dot(_1998 * rsqrt(_1999), TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer[_1916].xyz) - TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer[_1919].x) * TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer[_1919].y, 0.0f, 1.0f);
            _2027 = _2016 * (_2024 * _2024);
        }
        else
        {
            _2027 = _2016;
        }
        float3 _2322 = 0.0f.xxx;
        float3 _2323 = 0.0f.xxx;
        [branch]
        if (_2027 > 0.0f)
        {
            float _2039 = 0.0f;
            [branch]
            if (uint((_1926 & 255u) != 0u) != 0u)
            {
                _2039 = dot(float4(float(_1982 & 1u), float((_1982 & 2u) >> 1u), float((_1982 & 4u) >> 2u), float((_1982 & 8u) >> 3u)), 1.0f.xxxx) * lerp(1.0f, dot(_1880, _1981), dot(_1981, 1.0f.xxxx));
            }
            else
            {
                _2039 = 1.0f;
            }
            float3 _2320 = 0.0f.xxx;
            float3 _2321 = 0.0f.xxx;
            [branch]
            if ((_2039 + _2039) > 0.0f)
            {
                float3 _2045 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer[_1922].xyz * (0.5f * _1955);
                float3 _2046 = _1998 - _2045;
                float3 _2047 = _1998 + _2045;
                float _2050 = max(_718, View_View_MinRoughness);
                bool _2051 = _1955 > 0.0f;
                float _2076 = 0.0f;
                float _2077 = 0.0f;
                float _2078 = 0.0f;
                [branch]
                if (_2051)
                {
                    float _2063 = rsqrt(dot(_2046, _2046));
                    float _2064 = rsqrt(dot(_2047, _2047));
                    float _2065 = _2063 * _2064;
                    float _2067 = dot(_2046, _2047) * _2065;
                    _2076 = _2067;
                    _2077 = 0.5f * mad(dot(_646, _2046), _2063, dot(_646, _2047) * _2064);
                    _2078 = _2065 / mad(_2063, _2064, mad(_2067, 0.5f, 0.5f));
                }
                else
                {
                    float _2055 = dot(_2046, _2046);
                    _2076 = 1.0f;
                    _2077 = dot(_646, _2046 * rsqrt(_2055));
                    _2078 = 1.0f / (_2055 + 1.0f);
                }
                float _2096 = 0.0f;
                if (_1951 > 0.0f)
                {
                    float _2085 = sqrt(clamp((_1951 * _1951) * _2078, 0.0f, 1.0f));
                    float _2095 = 0.0f;
                    if (_2077 < _2085)
                    {
                        float _2091 = _2085 + max(_2077, -_2085);
                        _2095 = (_2091 * _2091) / (4.0f * _2085);
                    }
                    else
                    {
                        _2095 = _2077;
                    }
                    _2096 = _2095;
                }
                else
                {
                    _2096 = _2077;
                }
                float _2097 = clamp(_2096, 0.0f, 1.0f);
                float3 _2115 = 0.0f.xxx;
                if (_2051)
                {
                    float3 _2102 = reflect(-_579, _646);
                    float3 _2103 = _2047 - _2046;
                    float _2104 = dot(_2102, _2103);
                    _2115 = _2046 + (_2103 * clamp(dot(_2046, (_2102 * _2104) - _2103) / mad(_1955, _1955, -(_2104 * _2104)), 0.0f, 1.0f));
                }
                else
                {
                    _2115 = _2046;
                }
                float _2117 = rsqrt(dot(_2115, _2115));
                float3 _2118 = _2115 * _2117;
                float _2119 = max(_2050, View_View_MinRoughness);
                float _2124 = clamp((_1951 * _2117) * mad(-_2119, _2119, 1.0f), 0.0f, 1.0f);
                float _2126 = clamp(spvUnpackHalf2x16(_1948 >> 16u).x * _2117, 0.0f, 1.0f);
                float _2134 = dot(_646, _2118);
                float _2135 = dot(_646, _579);
                float _2136 = dot(_579, _2118);
                float _2138 = rsqrt(mad(2.0f, _2136, 2.0f));
                bool _2144 = _2124 > 0.0f;
                float _2223 = 0.0f;
                float _2224 = 0.0f;
                if (_2144)
                {
                    float _2149 = sqrt(mad(-_2124, _2124, 1.0f));
                    float _2150 = 2.0f * _2134;
                    float _2151 = -_2136;
                    float _2152 = mad(_2150, _2135, _2151);
                    float _2221 = 0.0f;
                    float _2222 = 0.0f;
                    if (_2152 >= _2149)
                    {
                        _2221 = 1.0f;
                        _2222 = abs(_2135);
                    }
                    else
                    {
                        float _2157 = -_2152;
                        float _2160 = _2124 * rsqrt(mad(_2157, _2152, 1.0f));
                        float _2161 = mad(_2157, _2134, _2135);
                        float _2165 = mad(_2157, _2136, mad(2.0f * _2135, _2135, -1.0f));
                        float _2176 = _2160 * sqrt(clamp(mad(_2150 * _2135, _2136, mad(_2151, _2136, mad(-_2135, _2135, mad(-_2134, _2134, 1.0f)))), 0.0f, 1.0f));
                        float _2178 = (_2176 * 2.0f) * _2135;
                        float _2179 = mad(_2134, _2149, _2135);
                        float _2180 = mad(_2160, _2161, _2179);
                        float _2182 = mad(_2160, _2165, mad(_2136, _2149, 1.0f));
                        float _2183 = _2176 * _2182;
                        float _2184 = _2180 * _2182;
                        float _2189 = _2184 * mad(-0.5f, _2183, (0.25f * _2178) * _2180);
                        float _2199 = mad(_2180, mad(_2179, _2182 * _2182, _2184 * mad(-0.5f, mad(_2136, _2149, _2182), -0.5f)), mad(_2183, _2183, (_2178 * _2180) * mad(_2178, _2180, _2183 * (-2.0f))));
                        float _2203 = (2.0f * _2189) / mad(_2199, _2199, _2189 * _2189);
                        float _2204 = _2203 * _2199;
                        float _2206 = mad(-_2203, _2189, 1.0f);
                        float _2212 = mad(_2136, _2149, mad(_2206, _2160 * _2165, _2204 * _2178));
                        float _2214 = rsqrt(mad(2.0f, _2212, 2.0f));
                        _2221 = clamp((mad(_2134, _2149, mad(_2206, _2160 * _2161, _2204 * _2176)) + _2135) * _2214, 0.0f, 1.0f);
                        _2222 = clamp(mad(_2214, _2212, _2214), 0.0f, 1.0f);
                    }
                    _2223 = _2221;
                    _2224 = _2222;
                }
                else
                {
                    _2223 = clamp((_2134 + _2135) * _2138, 0.0f, 1.0f);
                    _2224 = clamp(mad(_2138, _2136, _2138), 0.0f, 1.0f);
                }
                float _2227 = clamp(abs(_2135) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _2230 = 1.0f.xxx * ((_1960 ? _2078 : 1.0f) * _2097);
                float3 _2314 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(_1955, _1951), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _2314 = 0.0f.xxx;
                }
                else
                {
                    float _2237 = _2050 * _2050;
                    float _2247 = 0.0f;
                    if (_2126 > 0.0f)
                    {
                        _2247 = clamp(mad(_2237, _2237, (_2126 * _2126) / mad(_2224, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _2247 = _2237 * _2237;
                    }
                    float _2261 = 0.0f;
                    float _2262 = 0.0f;
                    if (_2144)
                    {
                        float _2259 = _2247 + (((0.25f * _2124) * mad(3.0f, asfloat(532487669 + (asint(_2247) >> 1)), _2124)) / (_2224 + 0.001000000047497451305389404296875f));
                        _2261 = _2247 / _2259;
                        _2262 = _2259;
                    }
                    else
                    {
                        _2261 = 1.0f;
                        _2262 = _2247;
                    }
                    float _2283 = 0.0f;
                    if (_2076 < 1.0f)
                    {
                        float _2269 = sqrt((1.00010001659393310546875f - _2076) / (1.0f + _2076));
                        _2283 = _2261 * sqrt(_2262 / (_2262 + (((0.25f * _2269) * mad(3.0f, asfloat(532487669 + (asint(_2262) >> 1)), _2269)) / (_2224 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _2283 = _2261;
                    }
                    float _2286 = mad(mad(_2223, _2247, -_2223), _2223, 1.0f);
                    float _2291 = sqrt(_2247);
                    float _2292 = 1.0f - _2291;
                    float _2298 = 1.0f - _2224;
                    float _2299 = _2298 * _2298;
                    float _2300 = _2299 * _2299;
                    _2314 = _2230 * (((clamp(50.0f * _800.y, 0.0f, 1.0f) * (_2300 * _2298)).xxx + (_800 * mad(-_2300, _2298, 1.0f))) * (((_2247 / ((3.1415927410125732421875f * _2286) * _2286)) * _2283) * (0.5f / mad(_2097, mad(_2227, _2292, _2291), _2227 * mad(_2097, _2292, _2291)))));
                }
                float3 _2317 = ((float3(float((_1932 >> 0u) & 1023u), float((_1932 >> 10u) & 1023u), float((_1932 >> 20u) & 1023u)) * TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer[_1913].x) * _2027) * _2039;
                _2320 = mad(((_798 * 0.3183098733425140380859375f) * _2230) * 1.0f, _2317, 0.0f.xxx);
                _2321 = (_2314 * spvUnpackHalf2x16(asuint(TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer[_1922].w) & 65535u).x) * _2317;
            }
            else
            {
                _2320 = 0.0f.xxx;
                _2321 = 0.0f.xxx;
            }
            _2322 = _2320;
            _2323 = _2321;
        }
        else
        {
            _2322 = 0.0f.xxx;
            _2323 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1926 >> 8u) & 7u) & _1084) != 0u)
        {
            _1897 = _1896 + float4(_2322, 0.0f);
            _1900 = _1899 + float4(_2323, 0.0f);
        }
        else
        {
            _1897 = _1896;
            _1900 = _1899;
        }
    }
    bool4 _2341 = (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    float3 _2350 = (_646 * (2.0f * dot(_579, _646))) - _579;
    bool _2386 = false;
    if (TranslucentBasePass_TranslucentBasePass_Enabled > 0u)
    {
        float _2376 = 0.0f;
        do
        {
            [flatten]
            if (_566)
            {
                _2376 = mad(_559, View_View_ViewToClip[2u].z, View_View_ViewToClip[3u].z);
                break;
            }
            else
            {
                _2376 = 1.0f / ((_559 + View_View_InvDeviceZToWorldZTransform.w) * View_View_InvDeviceZToWorldZTransform.z);
                break;
            }
            break; // unreachable workaround
        } while(false);
        _2386 = (float(abs(asint(TranslucentBasePass_SceneDepth.SampleLevel(View_SharedPointClampedSampler, _564, 0.0f).x) - asint(_2376))) <= TranslucentBasePass_TranslucentBasePass_RelativeDepthThreshold) ? true : false;
    }
    else
    {
        _2386 = false;
    }
    bool _2387 = _2386 && true;
    bool _2391 = !_2387;
    uint _2457 = 0u;
    bool _2458 = false;
    if ((TranslucentBasePass_TranslucentBasePass_FinalProbeResolution > 0u) && _2391)
    {
        uint _2413 = 0u;
        float _2403 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy + (float2(32.66500091552734375f, 11.81499958038330078125f) * float(View_View_StateFrameIndexMod8)), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
        float3 _2405 = (View_View_ViewTilePosition * 2097152.0f) + _557;
        uint _2454 = 0u;
        do
        {
            uint _2451 = 0u;
            bool _2452 = false;
            uint _2409 = 0u;
            for (;;)
            {
                _2413 = TranslucentBasePass_TranslucentBasePass_NumRadianceProbeClipmaps;
                if (_2409 < _2413)
                {
                    float3 _2423 = (_2405 * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_2409].y) + TranslucentBasePass_TranslucentBasePass_PaddedWorldPositionToRadianceProbeCoordBias[_2409].xyz;
                    float3 _2428 = clamp((_2423 - 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_InvClipmapFadeSize, 0.0f.xxx, 1.0f.xxx);
                    float3 _2436 = clamp(((float(TranslucentBasePass_TranslucentBasePass_RadianceProbeClipmapResolution).xxx - 0.5f.xxx) - _2423) * TranslucentBasePass_TranslucentBasePass_InvClipmapFadeSize, 0.0f.xxx, 1.0f.xxx);
                    if (min(min(_2428.x, min(_2428.y, _2428.z)), min(_2436.x, min(_2436.y, _2436.z))) > _2403)
                    {
                        _2451 = _2409;
                        _2452 = true;
                        break;
                    }
                    _2409++;
                    continue;
                }
                else
                {
                    _2451 = _363;
                    _2452 = false;
                    break;
                }
            }
            if (_2452)
            {
                _2454 = _2451;
                break;
            }
            _2454 = _2413;
            break;
        } while(false);
        _2457 = _2454;
        _2458 = (_2454 < _2413) ? true : false;
    }
    else
    {
        _2457 = 0u;
        _2458 = false;
    }
    float3 _3647 = 0.0f.xxx;
    if (_2387)
    {
        _3647 = (pow((TranslucentBasePass_Radiance.Sample(View_SharedPointClampedSampler, float3(_564, 0.0f)).xyz * View_View_OneOverPreExposure) * 5.5555553436279296875f, TranslucentBasePass_TranslucentBasePass_Contrast.xxx) * 0.180000007152557373046875f) * TranslucentBasePass_TranslucentBasePass_SpecularScale;
    }
    else
    {
        float3 _3628 = 0.0f.xxx;
        if (_2458)
        {
            float3 _2720 = (View_View_ViewTilePosition * 2097152.0f) + _557;
            float3 _2728 = ((_2720 * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_2457].y) + TranslucentBasePass_TranslucentBasePass_PaddedWorldPositionToRadianceProbeCoordBias[_2457].xyz) - 0.5f.xxx;
            int3 _2730 = int3(floor(_2728));
            float3 _2731 = frac(_2728);
            uint3 _2732 = uint3(_2730);
            uint _2738 = _2457 * TranslucentBasePass_TranslucentBasePass_RadianceProbeClipmapResolution;
            int4 _2743 = int4(uint4(_2732.x + _2738, _2732.yz, 0u));
            uint4 _2747 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_2743.xyz, _2743.w));
            uint _2748 = _2747.x;
            float3 _2760 = ((float3(_2732) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_2457].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_2457].xyz) + TranslucentBasePass_ProbeWorldOffset[_2748].xyz;
            float _2763 = TranslucentBasePass_TranslucentBasePass_ReprojectionRadiusScale * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_2457].x;
            float3 _2769 = _2720 - float4(_2760, _2763).xyz;
            float _2771 = dot(_2350, _2350);
            float _2772 = dot(_2350, _2769);
            float _2773 = 2.0f * _2772;
            float _2774 = -_2763;
            float _2776 = 4.0f * _2771;
            float _2779 = mad(_2773, _2773, -(_2776 * mad(_2774, _2763, dot(_2769, _2769))));
            float2 _2791 = 0.0f.xx;
            [flatten]
            if (_2779 >= 0.0f)
            {
                _2791 = ((_2772 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2779))) / (2.0f * _2771).xx;
            }
            else
            {
                _2791 = (-1.0f).xx;
            }
            float3 _2795 = (_2720 + (_2350 * _2791.y)) - _2760;
            float3 _2800 = normalize(_2795);
            float3 _2801 = abs(_2800);
            float _2804 = sqrt(1.0f - _2801.z);
            float _2805 = _2801.x;
            float _2806 = _2801.y;
            float _2810 = min(_2805, _2806) / (max(_2805, _2806) + 5.4210108624275221700372640043497e-20f);
            float _2816 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _2810, 0.0419038832187652587890625f), _2810, 0.08817707002162933349609375f), _2810, -0.2473337352275848388671875f), _2810, 0.006157201714813709259033203125f), _2810, 0.63622653484344482421875f), _2810, 4.0675854506844189018011093139648e-06f);
            float _2819 = (_2805 < _2806) ? (1.0f - _2816) : _2816;
            float2 _2823 = float2(mad(-_2819, _2804, _2804), _2819 * _2804);
            bool2 _2826 = (_2800.z < 0.0f).xx;
            float2 _2828 = 1.0f.xx - _2823.yx;
            uint2 _2838 = TranslucentBasePass_TranslucentBasePass_FinalProbeResolution.xx;
            uint _2844 = TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionDivideShift & 31u;
            float _2850 = float(TranslucentBasePass_TranslucentBasePass_RadianceProbeResolution);
            float2 _2857 = float(1u << (TranslucentBasePass_TranslucentBasePass_FinalRadianceAtlasMaxMip & 31u)).xx;
            bool3 _2865 = (_2748 == 4294967295u).xxx;
            float3 _2870 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_2838 * uint2(_2748 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _2748 >> _2844)) + ((((asfloat(asuint(float2(_2826.x ? _2828.x : _2823.x, _2826.y ? _2828.y : _2823.y)) ^ (asuint(_2800.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _2850) + _2857)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _2874 = uint3(_2730 + int3(0, 0, 1));
            int4 _2880 = int4(uint4(_2874.x + _2738, _2874.yz, 0u));
            uint4 _2883 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_2880.xyz, _2880.w));
            uint _2884 = _2883.x;
            float3 _2891 = ((float3(_2874) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_2457].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_2457].xyz) + TranslucentBasePass_ProbeWorldOffset[_2884].xyz;
            float3 _2897 = _2720 - float4(_2891, _2763).xyz;
            float _2899 = dot(_2350, _2897);
            float _2900 = 2.0f * _2899;
            float _2904 = mad(_2900, _2900, -(_2776 * mad(_2774, _2763, dot(_2897, _2897))));
            float2 _2916 = 0.0f.xx;
            [flatten]
            if (_2904 >= 0.0f)
            {
                _2916 = ((_2899 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2904))) / (2.0f * _2771).xx;
            }
            else
            {
                _2916 = (-1.0f).xx;
            }
            float3 _2920 = (_2720 + (_2350 * _2916.y)) - _2891;
            float3 _2925 = normalize(_2920);
            float3 _2926 = abs(_2925);
            float _2929 = sqrt(1.0f - _2926.z);
            float _2930 = _2926.x;
            float _2931 = _2926.y;
            float _2935 = min(_2930, _2931) / (max(_2930, _2931) + 5.4210108624275221700372640043497e-20f);
            float _2941 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _2935, 0.0419038832187652587890625f), _2935, 0.08817707002162933349609375f), _2935, -0.2473337352275848388671875f), _2935, 0.006157201714813709259033203125f), _2935, 0.63622653484344482421875f), _2935, 4.0675854506844189018011093139648e-06f);
            float _2944 = (_2930 < _2931) ? (1.0f - _2941) : _2941;
            float2 _2948 = float2(mad(-_2944, _2929, _2929), _2944 * _2929);
            bool2 _2951 = (_2925.z < 0.0f).xx;
            float2 _2953 = 1.0f.xx - _2948.yx;
            bool3 _2973 = (_2884 == 4294967295u).xxx;
            float3 _2976 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_2838 * uint2(_2884 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _2884 >> _2844)) + ((((asfloat(asuint(float2(_2951.x ? _2953.x : _2948.x, _2951.y ? _2953.y : _2948.y)) ^ (asuint(_2925.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _2850) + _2857)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _2980 = uint3(_2730 + int3(0, 1, 0));
            int4 _2986 = int4(uint4(_2980.x + _2738, _2980.yz, 0u));
            uint4 _2989 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_2986.xyz, _2986.w));
            uint _2990 = _2989.x;
            float3 _2997 = ((float3(_2980) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_2457].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_2457].xyz) + TranslucentBasePass_ProbeWorldOffset[_2990].xyz;
            float3 _3003 = _2720 - float4(_2997, _2763).xyz;
            float _3005 = dot(_2350, _3003);
            float _3006 = 2.0f * _3005;
            float _3010 = mad(_3006, _3006, -(_2776 * mad(_2774, _2763, dot(_3003, _3003))));
            float2 _3022 = 0.0f.xx;
            [flatten]
            if (_3010 >= 0.0f)
            {
                _3022 = ((_3005 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3010))) / (2.0f * _2771).xx;
            }
            else
            {
                _3022 = (-1.0f).xx;
            }
            float3 _3026 = (_2720 + (_2350 * _3022.y)) - _2997;
            float3 _3031 = normalize(_3026);
            float3 _3032 = abs(_3031);
            float _3035 = sqrt(1.0f - _3032.z);
            float _3036 = _3032.x;
            float _3037 = _3032.y;
            float _3041 = min(_3036, _3037) / (max(_3036, _3037) + 5.4210108624275221700372640043497e-20f);
            float _3047 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3041, 0.0419038832187652587890625f), _3041, 0.08817707002162933349609375f), _3041, -0.2473337352275848388671875f), _3041, 0.006157201714813709259033203125f), _3041, 0.63622653484344482421875f), _3041, 4.0675854506844189018011093139648e-06f);
            float _3050 = (_3036 < _3037) ? (1.0f - _3047) : _3047;
            float2 _3054 = float2(mad(-_3050, _3035, _3035), _3050 * _3035);
            bool2 _3057 = (_3031.z < 0.0f).xx;
            float2 _3059 = 1.0f.xx - _3054.yx;
            bool3 _3079 = (_2990 == 4294967295u).xxx;
            float3 _3082 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_2838 * uint2(_2990 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _2990 >> _2844)) + ((((asfloat(asuint(float2(_3057.x ? _3059.x : _3054.x, _3057.y ? _3059.y : _3054.y)) ^ (asuint(_3031.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _2850) + _2857)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _3086 = uint3(_2730 + int3(0, 1, 1));
            int4 _3092 = int4(uint4(_3086.x + _2738, _3086.yz, 0u));
            uint4 _3095 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3092.xyz, _3092.w));
            uint _3096 = _3095.x;
            float3 _3103 = ((float3(_3086) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_2457].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_2457].xyz) + TranslucentBasePass_ProbeWorldOffset[_3096].xyz;
            float3 _3109 = _2720 - float4(_3103, _2763).xyz;
            float _3111 = dot(_2350, _3109);
            float _3112 = 2.0f * _3111;
            float _3116 = mad(_3112, _3112, -(_2776 * mad(_2774, _2763, dot(_3109, _3109))));
            float2 _3128 = 0.0f.xx;
            [flatten]
            if (_3116 >= 0.0f)
            {
                _3128 = ((_3111 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3116))) / (2.0f * _2771).xx;
            }
            else
            {
                _3128 = (-1.0f).xx;
            }
            float3 _3132 = (_2720 + (_2350 * _3128.y)) - _3103;
            float3 _3137 = normalize(_3132);
            float3 _3138 = abs(_3137);
            float _3141 = sqrt(1.0f - _3138.z);
            float _3142 = _3138.x;
            float _3143 = _3138.y;
            float _3147 = min(_3142, _3143) / (max(_3142, _3143) + 5.4210108624275221700372640043497e-20f);
            float _3153 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3147, 0.0419038832187652587890625f), _3147, 0.08817707002162933349609375f), _3147, -0.2473337352275848388671875f), _3147, 0.006157201714813709259033203125f), _3147, 0.63622653484344482421875f), _3147, 4.0675854506844189018011093139648e-06f);
            float _3156 = (_3142 < _3143) ? (1.0f - _3153) : _3153;
            float2 _3160 = float2(mad(-_3156, _3141, _3141), _3156 * _3141);
            bool2 _3163 = (_3137.z < 0.0f).xx;
            float2 _3165 = 1.0f.xx - _3160.yx;
            bool3 _3185 = (_3096 == 4294967295u).xxx;
            float3 _3188 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_2838 * uint2(_3096 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3096 >> _2844)) + ((((asfloat(asuint(float2(_3163.x ? _3165.x : _3160.x, _3163.y ? _3165.y : _3160.y)) ^ (asuint(_3137.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _2850) + _2857)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _3192 = uint3(_2730 + int3(1, 0, 0));
            int4 _3198 = int4(uint4(_3192.x + _2738, _3192.yz, 0u));
            uint4 _3201 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3198.xyz, _3198.w));
            uint _3202 = _3201.x;
            float3 _3209 = ((float3(_3192) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_2457].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_2457].xyz) + TranslucentBasePass_ProbeWorldOffset[_3202].xyz;
            float3 _3215 = _2720 - float4(_3209, _2763).xyz;
            float _3217 = dot(_2350, _3215);
            float _3218 = 2.0f * _3217;
            float _3222 = mad(_3218, _3218, -(_2776 * mad(_2774, _2763, dot(_3215, _3215))));
            float2 _3234 = 0.0f.xx;
            [flatten]
            if (_3222 >= 0.0f)
            {
                _3234 = ((_3217 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3222))) / (2.0f * _2771).xx;
            }
            else
            {
                _3234 = (-1.0f).xx;
            }
            float3 _3238 = (_2720 + (_2350 * _3234.y)) - _3209;
            float3 _3243 = normalize(_3238);
            float3 _3244 = abs(_3243);
            float _3247 = sqrt(1.0f - _3244.z);
            float _3248 = _3244.x;
            float _3249 = _3244.y;
            float _3253 = min(_3248, _3249) / (max(_3248, _3249) + 5.4210108624275221700372640043497e-20f);
            float _3259 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3253, 0.0419038832187652587890625f), _3253, 0.08817707002162933349609375f), _3253, -0.2473337352275848388671875f), _3253, 0.006157201714813709259033203125f), _3253, 0.63622653484344482421875f), _3253, 4.0675854506844189018011093139648e-06f);
            float _3262 = (_3248 < _3249) ? (1.0f - _3259) : _3259;
            float2 _3266 = float2(mad(-_3262, _3247, _3247), _3262 * _3247);
            bool2 _3269 = (_3243.z < 0.0f).xx;
            float2 _3271 = 1.0f.xx - _3266.yx;
            bool3 _3291 = (_3202 == 4294967295u).xxx;
            float3 _3294 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_2838 * uint2(_3202 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3202 >> _2844)) + ((((asfloat(asuint(float2(_3269.x ? _3271.x : _3266.x, _3269.y ? _3271.y : _3266.y)) ^ (asuint(_3243.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _2850) + _2857)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _3298 = uint3(_2730 + int3(1, 0, 1));
            int4 _3304 = int4(uint4(_3298.x + _2738, _3298.yz, 0u));
            uint4 _3307 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3304.xyz, _3304.w));
            uint _3308 = _3307.x;
            float3 _3315 = ((float3(_3298) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_2457].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_2457].xyz) + TranslucentBasePass_ProbeWorldOffset[_3308].xyz;
            float3 _3321 = _2720 - float4(_3315, _2763).xyz;
            float _3323 = dot(_2350, _3321);
            float _3324 = 2.0f * _3323;
            float _3328 = mad(_3324, _3324, -(_2776 * mad(_2774, _2763, dot(_3321, _3321))));
            float2 _3340 = 0.0f.xx;
            [flatten]
            if (_3328 >= 0.0f)
            {
                _3340 = ((_3323 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3328))) / (2.0f * _2771).xx;
            }
            else
            {
                _3340 = (-1.0f).xx;
            }
            float3 _3344 = (_2720 + (_2350 * _3340.y)) - _3315;
            float3 _3349 = normalize(_3344);
            float3 _3350 = abs(_3349);
            float _3353 = sqrt(1.0f - _3350.z);
            float _3354 = _3350.x;
            float _3355 = _3350.y;
            float _3359 = min(_3354, _3355) / (max(_3354, _3355) + 5.4210108624275221700372640043497e-20f);
            float _3365 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3359, 0.0419038832187652587890625f), _3359, 0.08817707002162933349609375f), _3359, -0.2473337352275848388671875f), _3359, 0.006157201714813709259033203125f), _3359, 0.63622653484344482421875f), _3359, 4.0675854506844189018011093139648e-06f);
            float _3368 = (_3354 < _3355) ? (1.0f - _3365) : _3365;
            float2 _3372 = float2(mad(-_3368, _3353, _3353), _3368 * _3353);
            bool2 _3375 = (_3349.z < 0.0f).xx;
            float2 _3377 = 1.0f.xx - _3372.yx;
            bool3 _3397 = (_3308 == 4294967295u).xxx;
            float3 _3400 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_2838 * uint2(_3308 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3308 >> _2844)) + ((((asfloat(asuint(float2(_3375.x ? _3377.x : _3372.x, _3375.y ? _3377.y : _3372.y)) ^ (asuint(_3349.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _2850) + _2857)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _3404 = uint3(_2730 + int3(1, 1, 0));
            int4 _3410 = int4(uint4(_3404.x + _2738, _3404.yz, 0u));
            uint4 _3413 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3410.xyz, _3410.w));
            uint _3414 = _3413.x;
            float3 _3421 = ((float3(_3404) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_2457].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_2457].xyz) + TranslucentBasePass_ProbeWorldOffset[_3414].xyz;
            float3 _3427 = _2720 - float4(_3421, _2763).xyz;
            float _3429 = dot(_2350, _3427);
            float _3430 = 2.0f * _3429;
            float _3434 = mad(_3430, _3430, -(_2776 * mad(_2774, _2763, dot(_3427, _3427))));
            float2 _3446 = 0.0f.xx;
            [flatten]
            if (_3434 >= 0.0f)
            {
                _3446 = ((_3429 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3434))) / (2.0f * _2771).xx;
            }
            else
            {
                _3446 = (-1.0f).xx;
            }
            float3 _3450 = (_2720 + (_2350 * _3446.y)) - _3421;
            float3 _3455 = normalize(_3450);
            float3 _3456 = abs(_3455);
            float _3459 = sqrt(1.0f - _3456.z);
            float _3460 = _3456.x;
            float _3461 = _3456.y;
            float _3465 = min(_3460, _3461) / (max(_3460, _3461) + 5.4210108624275221700372640043497e-20f);
            float _3471 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3465, 0.0419038832187652587890625f), _3465, 0.08817707002162933349609375f), _3465, -0.2473337352275848388671875f), _3465, 0.006157201714813709259033203125f), _3465, 0.63622653484344482421875f), _3465, 4.0675854506844189018011093139648e-06f);
            float _3474 = (_3460 < _3461) ? (1.0f - _3471) : _3471;
            float2 _3478 = float2(mad(-_3474, _3459, _3459), _3474 * _3459);
            bool2 _3481 = (_3455.z < 0.0f).xx;
            float2 _3483 = 1.0f.xx - _3478.yx;
            bool3 _3503 = (_3414 == 4294967295u).xxx;
            float3 _3506 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_2838 * uint2(_3414 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3414 >> _2844)) + ((((asfloat(asuint(float2(_3481.x ? _3483.x : _3478.x, _3481.y ? _3483.y : _3478.y)) ^ (asuint(_3455.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _2850) + _2857)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _3510 = uint3(_2730 + int3(1, 1, 1));
            int4 _3516 = int4(uint4(_3510.x + _2738, _3510.yz, 0u));
            uint4 _3519 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3516.xyz, _3516.w));
            uint _3520 = _3519.x;
            float3 _3527 = ((float3(_3510) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_2457].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_2457].xyz) + TranslucentBasePass_ProbeWorldOffset[_3520].xyz;
            float3 _3533 = _2720 - float4(_3527, _2763).xyz;
            float _3535 = dot(_2350, _3533);
            float _3536 = 2.0f * _3535;
            float _3540 = mad(_3536, _3536, -(_2776 * mad(_2774, _2763, dot(_3533, _3533))));
            float2 _3552 = 0.0f.xx;
            [flatten]
            if (_3540 >= 0.0f)
            {
                _3552 = ((_3535 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3540))) / (2.0f * _2771).xx;
            }
            else
            {
                _3552 = (-1.0f).xx;
            }
            float3 _3556 = (_2720 + (_2350 * _3552.y)) - _3527;
            float3 _3561 = normalize(_3556);
            float3 _3562 = abs(_3561);
            float _3565 = sqrt(1.0f - _3562.z);
            float _3566 = _3562.x;
            float _3567 = _3562.y;
            float _3571 = min(_3566, _3567) / (max(_3566, _3567) + 5.4210108624275221700372640043497e-20f);
            float _3577 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3571, 0.0419038832187652587890625f), _3571, 0.08817707002162933349609375f), _3571, -0.2473337352275848388671875f), _3571, 0.006157201714813709259033203125f), _3571, 0.63622653484344482421875f), _3571, 4.0675854506844189018011093139648e-06f);
            float _3580 = (_3566 < _3567) ? (1.0f - _3577) : _3577;
            float2 _3584 = float2(mad(-_3580, _3565, _3565), _3580 * _3565);
            bool2 _3587 = (_3561.z < 0.0f).xx;
            float2 _3589 = 1.0f.xx - _3584.yx;
            bool3 _3609 = (_3520 == 4294967295u).xxx;
            float3 _3612 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_2838 * uint2(_3520 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3520 >> _2844)) + ((((asfloat(asuint(float2(_3587.x ? _3589.x : _3584.x, _3587.y ? _3589.y : _3584.y)) ^ (asuint(_3561.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _2850) + _2857)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            float3 _3616 = _2731.z.xxx;
            float3 _3622 = _2731.y.xxx;
            _3628 = lerp(lerp(lerp(float3(_2865.x ? 0.0f.xxx.x : _2870.x, _2865.y ? 0.0f.xxx.y : _2870.y, _2865.z ? 0.0f.xxx.z : _2870.z) * ((_2791.y * _2791.y) / (_2763 * dot(_2795, _2350))), float3(_2973.x ? 0.0f.xxx.x : _2976.x, _2973.y ? 0.0f.xxx.y : _2976.y, _2973.z ? 0.0f.xxx.z : _2976.z) * ((_2916.y * _2916.y) / (_2763 * dot(_2920, _2350))), _3616), lerp(float3(_3079.x ? 0.0f.xxx.x : _3082.x, _3079.y ? 0.0f.xxx.y : _3082.y, _3079.z ? 0.0f.xxx.z : _3082.z) * ((_3022.y * _3022.y) / (_2763 * dot(_3026, _2350))), float3(_3185.x ? 0.0f.xxx.x : _3188.x, _3185.y ? 0.0f.xxx.y : _3188.y, _3185.z ? 0.0f.xxx.z : _3188.z) * ((_3128.y * _3128.y) / (_2763 * dot(_3132, _2350))), _3616), _3622), lerp(lerp(float3(_3291.x ? 0.0f.xxx.x : _3294.x, _3291.y ? 0.0f.xxx.y : _3294.y, _3291.z ? 0.0f.xxx.z : _3294.z) * ((_3234.y * _3234.y) / (_2763 * dot(_3238, _2350))), float3(_3397.x ? 0.0f.xxx.x : _3400.x, _3397.y ? 0.0f.xxx.y : _3400.y, _3397.z ? 0.0f.xxx.z : _3400.z) * ((_3340.y * _3340.y) / (_2763 * dot(_3344, _2350))), _3616), lerp(float3(_3503.x ? 0.0f.xxx.x : _3506.x, _3503.y ? 0.0f.xxx.y : _3506.y, _3503.z ? 0.0f.xxx.z : _3506.z) * ((_3446.y * _3446.y) / (_2763 * dot(_3450, _2350))), float3(_3609.x ? 0.0f.xxx.x : _3612.x, _3609.y ? 0.0f.xxx.y : _3612.y, _3609.z ? 0.0f.xxx.z : _3612.z) * ((_3552.y * _3552.y) / (_2763 * dot(_3556, _2350))), _3616), _3622), _2731.x.xxx);
        }
        else
        {
            uint _2468 = (TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumGridCells + _990) * 2u;
            uint _2473 = min(TranslucentBasePass_Shared_Forward_NumCulledLightsGrid[_2468], TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumReflectionCaptures);
            uint _2474 = _2468 + 1u;
            float _2481 = mad(-1.2000000476837158203125f, log2(max(_718, 0.001000000047497451305389404296875f)), 1.0f);
            float _2483 = (View_View_ReflectionCubemapMaxMip - 1.0f) - _2481;
            float4 _2485 = 0.0f.xxxx;
            _2485 = float4(0.0f, 0.0f, 0.0f, 1.0f);
            float4 _2486 = 0.0f.xxxx;
            [loop]
            for (uint _2488 = 0u; _2488 < _2473; _2485 = _2486, _2488++)
            {
                [branch]
                if (_2485.w < 0.001000000047497451305389404296875f)
                {
                    break;
                }
                uint4 _2499 = TranslucentBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(TranslucentBasePass_Shared_Forward_NumCulledLightsGrid[_2474] + _2488);
                uint _2500 = _2499.x;
                precise float3 _114 = ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2500].xyz + View_View_PreViewTranslationHigh;
                precise float3 _115 = _114 - ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2500].xyz;
                precise float3 _116 = _114 - _115;
                precise float3 _117 = ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2500].xyz - _116;
                precise float3 _118 = View_View_PreViewTranslationHigh - _115;
                precise float3 _119 = _117 + _118;
                float3 _2509 = _114 + (_119 + (ReflectionCaptureSM5_ReflectionCaptureSM5_PositionLow[_2500].xyz + View_View_PreViewTranslationLow));
                float3 _2514 = _556 - _2509;
                float _2516 = sqrt(dot(_2514, _2514));
                [branch]
                if (_2516 < ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2500].w)
                {
                    float _2635 = 0.0f;
                    float3 _2636 = 0.0f.xxx;
                    [branch]
                    if (ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_2500].z > 0.0f)
                    {
                        float3 _2567 = float4(_2509, ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2500].w).xyz;
                        float3 _2574 = mul(float4(_556 - _2567, 1.0f), ReflectionCaptureSM5_ReflectionCaptureSM5_BoxTransform[_2500]).xyz;
                        float3 _2580 = mul(float4(_2350, 0.0f), ReflectionCaptureSM5_ReflectionCaptureSM5_BoxTransform[_2500]).xyz;
                        float3 _2581 = 1.0f.xxx / _2580;
                        float3 _2583 = -_2574;
                        float3 _2586 = max(mad(_2583, _2581, (-1.0f).xxx / _2580), mad(_2583, _2581, _2581));
                        float3 _2600 = ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2500].xyz - (0.5f * ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2500].w).xxx;
                        float3 _2601 = -_2600;
                        float3 _2602 = _2574 * ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2500].xyz;
                        bool3 _2603 = bool3(_2602.x < _2601.x, _2602.y < _2601.y, _2602.z < _2601.z);
                        float3 _2605 = abs(mad(_2574, ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2500].xyz, _2600));
                        bool3 _2616 = bool3(_2602.x > _2600.x, _2602.y > _2600.y, _2602.z > _2600.z);
                        float3 _2618 = abs(mad(_2574, ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2500].xyz, _2601));
                        _2635 = 1.0f - smoothstep(0.0f, 0.699999988079071044921875f * ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2500].w, dot(float3(_2603.x ? _2605.x : 0.0f, _2603.y ? _2605.y : 0.0f, _2603.z ? _2605.z : 0.0f), 1.0f.xxx) + dot(float3(_2616.x ? _2618.x : 0.0f, _2616.y ? _2618.y : 0.0f, _2616.z ? _2618.z : 0.0f), 1.0f.xxx));
                        _2636 = (_556 + (_2350 * min(_2586.x, min(_2586.y, _2586.z)))) - (_2567 + ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[_2500].xyz);
                    }
                    else
                    {
                        float3 _2535 = _556 - float4(_2509, ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2500].w).xyz;
                        float _2537 = dot(_2350, _2535);
                        float _2541 = mad(_2537, _2537, -mad(-ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2500].w, ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2500].w, dot(_2535, _2535)));
                        float _2556 = 0.0f;
                        float3 _2557 = 0.0f.xxx;
                        [flatten]
                        if (_2541 >= 0.0f)
                        {
                            float _2551 = clamp(mad(2.5f, clamp(_2516 / ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2500].w, 0.0f, 1.0f), -1.5f), 0.0f, 1.0f);
                            _2556 = mad(-(_2551 * _2551), mad(-2.0f, _2551, 3.0f), 1.0f);
                            _2557 = (_2535 + (_2350 * (sqrt(_2541) - _2537))) - ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[_2500].xyz;
                        }
                        else
                        {
                            _2556 = 0.0f;
                            _2557 = _2350;
                        }
                        _2635 = _2556;
                        _2636 = _2557;
                    }
                    float4 _2645 = TranslucentBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_2636, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_2500].y), _2483);
                    float3 _2648 = _2645.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_2500].x;
                    float4 _2650 = float4(_2648.x, _2648.y, _2648.z, _2645.w) * _2635;
                    float3 _2655 = _2485.xyz + ((_2650.xyz * _2485.w) * 1.0f);
                    float4 _2656 = float4(_2655.x, _2655.y, _2655.z, _2485.w);
                    _2656.w = _2485.w * (1.0f - _2650.w);
                    _2486 = _2656;
                }
                else
                {
                    _2486 = _2485;
                }
            }
            float3 _2664 = _2485.xyz * View_View_PrecomputedIndirectSpecularColorScale;
            float4 _2665 = float4(_2664.x, _2664.y, _2664.z, _2485.w);
            float4 _2699 = 0.0f.xxxx;
            float3 _2700 = 0.0f.xxx;
            [branch]
            if ((TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
            {
                float3 _2682 = TranslucentBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(TranslucentBasePass_Shared_Reflection_SkyLightCubemapSampler, _2350, (TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _2481).xyz * View_View_SkyLightColor.xyz;
                float4 _2697 = 0.0f.xxxx;
                float3 _2698 = 0.0f.xxx;
                [flatten]
                if ((TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters.z < 1.0f) && true)
                {
                    float3 _2695 = _2664.xyz + ((_2682 * _2485.w) * 1.0f);
                    _2697 = float4(_2695.x, _2695.y, _2695.z, _2485.w);
                    _2698 = 0.0f.xxx;
                }
                else
                {
                    _2697 = _2665;
                    _2698 = _2682 * 1.0f;
                }
                _2699 = _2697;
                _2700 = _2698;
            }
            else
            {
                _2699 = _2665;
                _2700 = 0.0f.xxx;
            }
            _3628 = ((_2699.xyz * lerp(1.0f, min(0.0f, View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp(mad(_718, View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x, View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y), 0.0f, 1.0f)))).xyz + (_2700 * _2699.w)).xyz;
        }
        _3647 = _3628;
    }
    float3 _3950 = 0.0f.xxx;
    if (((View_View_CameraCut == 0.0f) && (TranslucentBasePass_TranslucentBasePass_SSRQuality > 0)) && _2391)
    {
        float _3672 = min(_559, 1000000.0f);
        float4 _3677 = mul(float4(_2350, 0.0f), View_View_TranslatedWorldToView);
        float _3678 = _3677.z;
        float _3683 = (_3678 < 0.0f) ? min(((-0.949999988079071044921875f) * _559) / _3678, _3672) : _3672;
        float4 _3690 = mul(float4(_556, 1.0f), View_View_TranslatedWorldToClip);
        float4 _3695 = mul(float4(_556 + (_2350 * _3683), 1.0f), View_View_TranslatedWorldToClip);
        float3 _3699 = _3690.xyz * (1.0f / _3690.w);
        float4 _3706 = _3690 + mul(float4(0.0f, 0.0f, _3683, 0.0f), View_View_ViewToClip);
        float3 _3710 = _3706.xyz * (1.0f / _3706.w);
        float3 _3711 = (_3695.xyz * (1.0f / _3695.w)) - _3699;
        float2 _3712 = _3699.xy;
        float2 _3713 = _3711.xy;
        float _3715 = 0.5f * length(_3713);
        float2 _3724 = 1.0f.xx - (max(abs(_3713 + (_3712 * _3715)) - _3715.xx, 0.0f.xx) / abs(_3713));
        float3 _3729 = _3711 * (min(_3724.x, _3724.y) / _3715);
        float _3745 = 0.0f;
        if (_566)
        {
            _3745 = max(0.0f, (_3699.z - _3710.z) * 4.0f);
        }
        else
        {
            _3745 = max(abs(_3729.z), (_3699.z - _3710.z) * 4.0f);
        }
        float _3760 = _3745 * 0.083333335816860198974609375f;
        float3 _3761 = float3((_3729.xy * float2(0.5f, -0.5f)) * TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor.xy, _3729.z) * 0.083333335816860198974609375f;
        float3 _3763 = float3(mad(_3712, float2(0.5f, -0.5f), 0.5f.xx) * TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor.xy, _3699.z) + (_3761 * (frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy + (float2(32.66500091552734375f, 11.81499958038330078125f) * float(View_View_StateFrameIndexMod8)), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) - 0.5f));
        bool4 _3765 = bool4(false, false, false, false);
        float4 _3768 = 0.0f.xxxx;
        uint _3774 = 0u;
        float _3776 = 0.0f;
        _3765 = _397;
        _3768 = _395;
        _3774 = 0u;
        _3776 = 0.0f;
        bool4 _3766 = bool4(false, false, false, false);
        float4 _3769 = 0.0f.xxxx;
        bool _3771 = false;
        float _3773 = 0.0f;
        float _3777 = 0.0f;
        bool4 _3836 = bool4(false, false, false, false);
        float4 _3837 = 0.0f.xxxx;
        bool _3838 = false;
        bool _3770 = false;
        float _3772 = 1.0f;
        [loop]
        for (;;)
        {
            if (_3774 < 12u)
            {
                float2 _3781 = _3763.xy;
                float2 _3782 = _3761.xy;
                float _3783 = float(_3774);
                float _3784 = _3783 + 1.0f;
                float _3787 = _3763.z;
                float _3788 = _3761.z;
                float4 _3790 = 0.0f.xxxx;
                _3790.x = mad(_3784, _3788, _3787);
                float _3791 = _3783 + 2.0f;
                _3790.y = mad(_3791, _3788, _3787);
                float _3796 = _3783 + 3.0f;
                _3790.z = mad(_3796, _3788, _3787);
                float _3801 = _3783 + 4.0f;
                _3790.w = mad(_3801, _3788, _3787);
                float _3806 = mad(0.666666686534881591796875f, _718, _3772);
                _3773 = mad(0.666666686534881591796875f, _718, _3806);
                float4 _3810 = 0.0f.xxxx;
                _3810.x = TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _3781 + (_3782 * _3784), _3772).x;
                _3810.y = TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _3781 + (_3782 * _3791), _3772).x;
                _3810.z = TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _3781 + (_3782 * _3796), _3806).x;
                _3810.w = TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _3781 + (_3782 * _3801), _3806).x;
                _3769 = _3790 - _3810;
                float4 _3823 = _3760.xxxx;
                float4 _3825 = abs(_3769 + _3823);
                _3766 = bool4(_3825.x < _3823.x, _3825.y < _3823.y, _3825.z < _3823.z, _3825.w < _3823.w);
                _3771 = (((_3770 || _3766.x) || _3766.y) || _3766.z) || _3766.w;
                [branch]
                if (_3771 || false)
                {
                    _3836 = _3766;
                    _3837 = _3769;
                    _3838 = _3771;
                    break;
                }
                _3777 = _3769.w;
                _3765 = _3766;
                _3768 = _3769;
                _3770 = _3771;
                _3772 = _3773;
                _3774 += 4u;
                _3776 = _3777;
                continue;
            }
            else
            {
                _3836 = _3765;
                _3837 = _3768;
                _3838 = _3770;
                break;
            }
        }
        float3 _3877 = 0.0f.xxx;
        [branch]
        if (_3838)
        {
            float _3851 = 0.0f;
            [flatten]
            if (_3836.z)
            {
                _3851 = _3837.y;
            }
            else
            {
                _3851 = _3837.z;
            }
            float _3859 = 0.0f;
            float _3860 = 0.0f;
            [flatten]
            if (_3836.y)
            {
                _3859 = _3837.y;
                _3860 = _3837.x;
            }
            else
            {
                _3859 = _3836.z ? _3837.z : _3837.w;
                _3860 = _3851;
            }
            float _3866 = 0.0f;
            [flatten]
            if (_3836.x)
            {
                _3866 = _3837.x;
            }
            else
            {
                _3866 = _3859;
            }
            float _3867 = _3836.x ? _3776 : _3860;
            _3877 = _3763 + (_3761 * (((_3836.x ? 0.0f : (_3836.y ? 1.0f : (_3836.z ? 2.0f : 3.0f))) + float(_3774)) + clamp(_3867 / (_3867 - _3866), 0.0f, 1.0f)));
        }
        else
        {
            _3877 = _3763 + (_3761 * float(_3774));
        }
        float3 _3949 = 0.0f.xxx;
        [branch]
        if (_3838)
        {
            float2 _3891 = (mad(mad((_3877.xy * TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor.zw).xy, float2(2.0f, -2.0f), float2(-1.0f, 1.0f)).xy, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz).xy - View_View_ScreenPositionScaleBias.wz) / View_View_ScreenPositionScaleBias.xy;
            float4 _3898 = mul(float4(_3891, _3877.z, 1.0f), View_View_ClipToPrevClip);
            float2 _3902 = _3898.xy / _3898.w.xx;
            float2 _3909 = clamp((abs(_3891) * 5.0f) - 4.0f.xx, 0.0f.xx, 1.0f.xx);
            float2 _3916 = clamp((abs(_3902) * 5.0f) - 4.0f.xx, 0.0f.xx, 1.0f.xx);
            float3 _3933 = -min(-TranslucentBasePass_PrevSceneColor.SampleLevel(TranslucentBasePass_PrevSceneColorSampler, clamp(mad(_3902, TranslucentBasePass_TranslucentBasePass_PrevScreenPositionScaleBias.xy, TranslucentBasePass_TranslucentBasePass_PrevScreenPositionScaleBias.zw), TranslucentBasePass_TranslucentBasePass_PrevSceneColorBilinearUVMin, TranslucentBasePass_TranslucentBasePass_PrevSceneColorBilinearUVMax), 0.0f).xyz, 0.0f.xxx);
            float4 _3934 = float4(_3933.x, _3933.y, _3933.z, _395.w);
            _3934.w = 1.0f;
            float4 _3939 = _3934 * (min(clamp(1.0f - dot(_3909, _3909), 0.0f, 1.0f), clamp(1.0f - dot(_3916, _3916), 0.0f, 1.0f)) * clamp(mad(-6.599999904632568359375f, _718, 2.0f), 0.0f, 1.0f));
            _3949 = (_3647 * (1.0f - _3939.w)) + (_3939.xyz * TranslucentBasePass_TranslucentBasePass_PrevSceneColorPreExposureInv).xyz;
        }
        else
        {
            _3949 = _3647;
        }
        _3950 = _3949;
    }
    else
    {
        _3950 = _3647;
    }
    float3 _4075 = 0.0f.xxx;
    [branch]
    if (abs(dot(TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane.xyz, 1.0f.xxx)) > 9.9999997473787516355514526367188e-05f)
    {
        float3 _3976 = _556 - TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionOrigin.xyz;
        float _4009 = 1.0f - clamp((_718 - 0.20000000298023223876953125f) * 10.0f, 0.0f, 1.0f);
        float _4011 = (((1.0f - clamp(mad(abs(dot(TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane, float4(_556, -1.0f))), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.x, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.y), 0.0f, 1.0f)) * (clamp((TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionXAxis.w - abs(dot(_3976, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionXAxis.xyz))) * TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.x, 0.0f, 1.0f) * clamp((TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionYAxis.w - abs(dot(_3976, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionYAxis.xyz))) * TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.x, 0.0f, 1.0f))) * clamp(mad(dot(TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane.xyz, _646), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters2.x, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters2.y), 0.0f, 1.0f)) * _4009;
        float4 _4069 = 0.0f.xxxx;
        [branch]
        if (_4011 > 0.0f)
        {
            float4 _4039 = mul(float4(mul(float4(_556 + (reflect(reflect(normalize(_556 - View_View_TranslatedWorldCameraOrigin), -TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane.xyz), mul(_646, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_InverseTransposeMirrorMatrix).xyz) * TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.z), 1.0f), View_View_TranslatedWorldToView).xyz, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ProjectionWithExtraFOV[View_View_StereoPassIndex]);
            uint _4046 = 0u;
            if (TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_bIsStereo != 0u)
            {
                _4046 = uint(View_View_StereoPassIndex);
            }
            else
            {
                _4046 = 0u;
            }
            float4 _4062 = TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionTexture.SampleLevel(TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler, mad(clamp(_4039.xy / _4039.w.xx, -TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenBound, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenBound), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenScaleBias[_4046].xy, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenScaleBias[_4046].zw), 0.0f);
            float3 _4066 = _4062.xyz * _4009;
            float4 _4067 = float4(_4066.x, _4066.y, _4066.z, 0.0f.xxxx.w);
            _4067.w = _4011 * _4062.w;
            _4069 = _4067;
        }
        else
        {
            _4069 = 0.0f.xxxx;
        }
        _4075 = _4069.xyz + (_3950 * (1.0f - _4069.w));
    }
    else
    {
        _4075 = _3950;
    }
    bool _4114 = false;
    int _4116 = 0;
    bool _4120 = false;
    float4 _4077 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _718) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _4078 = _4077.x;
    float2 _4087 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_4078 * _4078, exp2((-9.27999973297119140625f) * clamp(dot(_646, _579), 0.0f, 1.0f))), _4078, _4077.y)) + _4077.zw;
    float4 _4346 = 0.0f.xxxx;
    do
    {
        _4114 = View_View_RenderingReflectionCaptureMask == 0.0f;
        _4116 = View_View_EnvironmentComponentsFlags.x;
        _4120 = _4114 && (!((_4116 & 32) > 0));
        if (_4120)
        {
            _4346 = float4(0.0f, 0.0f, 0.0f, 1.0f);
            break;
        }
        float _4124 = dot(normalize(_556), View_View_ViewForward);
        float3 _4136 = View_View_ViewOriginHigh + View_View_ViewOriginLow;
        float _4137 = _4136.z;
        float _4138 = min(_4137, TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters.z);
        float _4141 = _556.z + (_4137 - _4138);
        float3 _4142 = _556;
        _4142.z = _4141;
        float _4143 = dot(_4142, _4142);
        float _4145 = rsqrt(max(_4143, 9.9999999392252902907785028219223e-09f));
        float _4146 = _4143 * _4145;
        float3 _4147 = _4142 * _4145;
        float _4154 = max(View_View_VolumetricFogMaxDistance * ((_4124 > 0.001000000047497451305389404296875f) ? (1.0f / _4124) : 0.0f), TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters.w);
        float _4189 = 0.0f;
        float _4190 = 0.0f;
        float _4191 = 0.0f;
        float _4192 = 0.0f;
        if (_4154 > 0.0f)
        {
            float _4158 = _4154 * _4145;
            float _4159 = mad(_4158, _4141, _4138);
            _4189 = mad(-_4154, _4145, 1.0f) * _4146;
            _4190 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters2.z * exp2(-max(-127.0f, TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters2.y * (_4159 - TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters2.w)));
            _4191 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.x * exp2(-max(-127.0f, TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters.y * (_4159 - TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.y)));
            _4192 = mad(-_4158, _4141, _4141);
        }
        else
        {
            _4189 = _4146;
            _4190 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters2.x;
            _4191 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters.x;
            _4192 = _4141;
        }
        float _4196 = max(-127.0f, TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters.y * _4192);
        float _4208 = max(-127.0f, TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters2.y * _4192);
        float _4218 = mad(_4191, (abs(_4196) > 0.00999999977648258209228515625f) ? ((1.0f - exp2(-_4196)) / _4196) : mad(-0.2402265071868896484375f, _4196, 0.693147182464599609375f), _4190 * ((abs(_4208) > 0.00999999977648258209228515625f) ? ((1.0f - exp2(-_4208)) / _4208) : mad(-0.2402265071868896484375f, _4208, 0.693147182464599609375f)));
        float3 _4259 = 0.0f.xxx;
        [branch]
        if (TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.z > 0.0f)
        {
            float2 _4244 = float2(dot(_4142.xy, float2(TranslucentBasePass_TranslucentBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation.y, -TranslucentBasePass_TranslucentBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation.x)), dot(_4142.xy, TranslucentBasePass_TranslucentBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation));
            float3 _4245 = float3(_4244.x, _4244.y, _4142.z);
            _4259 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogColorParameter.xyz * lerp(TranslucentBasePass_Shared_Fog_FogInscatteringColorCubemap.SampleLevel(TranslucentBasePass_Shared_Fog_FogInscatteringColorSampler, _4245, TranslucentBasePass_TranslucentBasePass_Shared_Fog_FogInscatteringTextureParameters.z).xyz, TranslucentBasePass_Shared_Fog_FogInscatteringColorCubemap.SampleLevel(TranslucentBasePass_Shared_Fog_FogInscatteringColorSampler, _4245, 0.0f).xyz, clamp(mad(_4146, TranslucentBasePass_TranslucentBasePass_Shared_Fog_FogInscatteringTextureParameters.x, TranslucentBasePass_TranslucentBasePass_Shared_Fog_FogInscatteringTextureParameters.y), 0.0f, 1.0f).xxx);
        }
        else
        {
            _4259 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogColorParameter.xyz;
        }
        float3 _4326 = 0.0f.xxx;
        [branch]
        if ((TranslucentBasePass_TranslucentBasePass_Shared_Fog_InscatteringLightDirection.w >= 0.0f) && (TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.z == 0.0f))
        {
            float3 _4297 = (TranslucentBasePass_TranslucentBasePass_Shared_Fog_DirectionalInscatteringColor.xyz + ((View_View_AtmosphereLightIlluminanceOnGroundPostTransmittance[0].xyz * View_View_SkyAtmosphereHeightFogContribution) * 0.079577468335628509521484375f)) * pow(clamp(dot(_4147, View_View_AtmosphereLightDirection[0].xyz), 0.0f, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Fog_DirectionalInscatteringColor.w);
            float3 _4317 = 0.0f.xxx;
            if (View_View_AtmosphereLightIlluminanceOnGroundPostTransmittance[1].w > 0.0f)
            {
                _4317 = _4297 + ((TranslucentBasePass_TranslucentBasePass_Shared_Fog_DirectionalInscatteringColor.xyz + ((View_View_AtmosphereLightIlluminanceOnGroundPostTransmittance[1].xyz * View_View_SkyAtmosphereHeightFogContribution) * 0.079577468335628509521484375f)) * pow(clamp(dot(_4147, View_View_AtmosphereLightDirection[1].xyz), 0.0f, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Fog_DirectionalInscatteringColor.w));
            }
            else
            {
                _4317 = _4297;
            }
            _4326 = _4317 * (1.0f - clamp(exp2(-(_4218 * max(_4189 - TranslucentBasePass_TranslucentBasePass_Shared_Fog_InscatteringLightDirection.w, 0.0f))), 0.0f, 1.0f));
        }
        else
        {
            _4326 = 0.0f.xxx;
        }
        bool _4335 = (TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.w > 0.0f) && (_4146 > TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.w);
        bool3 _4336 = _4335.xxx;
        float _4338 = _4335 ? 1.0f : max(clamp(exp2(-(_4218 * _4189)), 0.0f, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogColorParameter.w);
        _4346 = float4((mad(TranslucentBasePass_TranslucentBasePass_Shared_Fog_SkyAtmosphereAmbientContributionColorScale.xyz * View_View_SkyAtmosphereHeightFogContribution.xxx, View_DistantSkyLightLutTexture.SampleLevel(View_DistantSkyLightLutTextureSampler, 0.5f.xx, 0.0f).xyz, _4259) * (1.0f - _4338)) + float3(_4336.x ? 0.0f.xxx.x : _4326.x, _4336.y ? 0.0f.xxx.y : _4326.y, _4336.z ? 0.0f.xxx.z : _4326.z), _4338);
        break;
    } while(false);
    bool _4349 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _4434 = 0.0f.xxxx;
    if (_4349)
    {
        float4 _4355 = float4(_97, 1.0f);
        precise float4 _120 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _121 = _4355 + _120;
        precise float4 _122 = _121 - _4355;
        precise float4 _123 = _121 - _122;
        precise float4 _124 = _4355 - _123;
        precise float4 _125 = _120 - _122;
        precise float4 _126 = _124 + _125;
        float4 _4366 = mul(_121 + (float4(_100, 0.0f) + _126), View_View_RelativeWorldToClip);
        float _4367 = _4366.w;
        float4 _4433 = 0.0f.xxxx;
        do
        {
            if (_4120)
            {
                _4433 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _4415 = 0.0f.xxxx;
            float _4416 = 0.0f;
            if (_4349)
            {
                float4 _4411 = TranslucentBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_4366.xy / _4367.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_4367, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _4413 = _4411.xyz * View_View_OneOverPreExposure;
                _4415 = float4(_4413.x, _4413.y, _4413.z, _4411.w);
                _4416 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _4415 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _4416 = 0.0f;
            }
            float4 _4421 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _4415, clamp((_559 - _4416) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _4424 = _4421.w;
            _4433 = float4(_4421.xyz + (_4346.xyz * _4424), _4424 * _4346.w);
            break;
        } while(false);
        _4434 = _4433;
    }
    else
    {
        _4434 = _4346;
    }
    float4 _4439 = mul(float4(_556, 1.0f), View_View_TranslatedWorldToClip);
    float4 _4529 = 0.0f.xxxx;
    if (View_View_SkyAtmosphereApplyCameraAerialPerspectiveVolume > 0.0f)
    {
        float3 _4444 = _556 * 9.9999997473787516355514526367188e-06f;
        float4 _4519 = 0.0f.xxxx;
        do
        {
            if (_4114 && (!((_4116 & 8) > 0)))
            {
                _4519 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float _4461 = max(0.0f, length(_4444) - View_View_SkyAtmosphereAerialPerspectiveStartDepthKm);
            float _4464 = sqrt((_4461 * View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv) * View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv);
            float _4465 = _4464 * View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution;
            float _4472 = 0.0f;
            if (_4465 < 0.707106769084930419921875f)
            {
                _4472 = clamp((_4465 * _4465) * 2.0f, 0.0f, 1.0f);
            }
            else
            {
                _4472 = 1.0f;
            }
            float _4475 = _4472 * clamp(_4461 * 100000.0f, 0.0f, 1.0f);
            float2 _4502 = 0.0f.xx;
            if (View_View_RealTimeReflectionCapture != 0.0f)
            {
                float3 _4478 = normalize(_4444);
                float _4479 = _4478.z;
                float _4482 = sqrt(mad(-_4479, _4479, 1.0f));
                float2 _4484 = 0.0f.xx;
                _4484.y = mad(_4479, 0.5f, 0.5f);
                float _4489 = acos(_4478.x / _4482);
                _4484.x = (((_4478.y / _4482) < 0.0f) ? (6.283185482025146484375f - _4489) : _4489) * 0.15915493667125701904296875f;
                _4502 = (_4484 + (View_View_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize.zw * 0.5f)) * (View_View_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize.xy / (View_View_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize.xy + 1.0f.xx));
            }
            else
            {
                _4502 = mad(_4439.xy / _4439.ww, float2(0.5f, -0.5f), 0.5f.xx);
            }
            float4 _4507 = View_CameraAerialPerspectiveVolume.SampleLevel(View_CameraAerialPerspectiveVolumeSampler, float3(_4502, _4464), 0.0f);
            float3 _4509 = _4507.xyz * _4475;
            float4 _4510 = float4(_4509.x, _4509.y, _4509.z, _4507.w);
            _4510.w = mad(-_4475, 1.0f - _4507.w, 1.0f);
            float3 _4517 = _4510.xyz * View_View_OneOverPreExposure;
            _4519 = float4(_4517.x, _4517.y, _4517.z, _4510.w);
            break;
        } while(false);
        float3 _4524 = _4434.xyz + (_4519.xyz * _4434.w);
        float4 _4525 = float4(_4524.x, _4524.y, _4524.z, _395.w);
        _4525.w = _4434.w * _4519.w;
        _4529 = _4525;
    }
    else
    {
        _4529 = _4434;
    }
    float4 _4583 = 0.0f.xxxx;
    if (TranslucentBasePass_TranslucentBasePass_ApplyVolumetricCloudOnTransparent > 0.0f)
    {
        float2 _4547 = mad(_4439.xy / _4439.ww, float2(0.5f, -0.5f), 0.5f.xx);
        float4 _4549 = TranslucentBasePass_VolumetricCloudDepth.GatherRed(TranslucentBasePass_VolumetricCloudDepthSampler, _4547, int2(0, 0));
        float _4560 = mad(length(((View_View_ViewTilePosition * 2097152.0f) + _557) - (View_View_ViewOriginHigh + View_View_ViewOriginLow)), 9.9999997473787516355514526367188e-06f, -min(min(_4549.x, _4549.y), min(_4549.z, _4549.w)));
        float4 _4582 = 0.0f.xxxx;
        if (_4560 > 0.0f)
        {
            float4 _4565 = TranslucentBasePass_VolumetricCloudColor.Sample(TranslucentBasePass_VolumetricCloudColorSampler, _4547);
            float3 _4567 = _4565.xyz * View_View_OneOverPreExposure;
            float4 _4572 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), float4(_4567.x, _4567.y, _4567.z, _4565.w), clamp(_4560 / TranslucentBasePass_TranslucentBasePass_SoftBlendingDistanceKm, 0.0f, 1.0f).xxxx);
            float _4575 = _4572.w;
            float3 _4577 = _4572.xyz + (_4529.xyz * _4575);
            float4 _4578 = float4(_4577.x, _4577.y, _4577.z, _4529.w);
            _4578.w = _4575 * _4529.w;
            _4582 = _4578;
        }
        else
        {
            _4582 = _4529;
        }
        _4583 = _4582;
    }
    else
    {
        _4583 = _4529;
    }
    float3 _4590 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[2].xyz, Material_Material_PreshaderBuffer[1].w.xxx), 0.0f.xxx);
    float _4664 = 0.0f;
    float3 _4665 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _127 = Scene_GPUScene_GPUScenePrimitiveSceneData[_580 + 18u].xyz * 2097152.0f;
        precise float3 _128 = _127 + Scene_GPUScene_GPUScenePrimitiveSceneData[_580 + 19u].xyz;
        precise float3 _129 = _128 - _127;
        precise float3 _130 = Scene_GPUScene_GPUScenePrimitiveSceneData[_580 + 19u].xyz - _129;
        uint _4616 = _580 + 32u;
        precise float3 _131 = _97 - _128;
        precise float3 _132 = _100 - _130;
        precise float3 _133 = _131 + _132;
        float3 _4621 = abs(_133);
        float3 _4622 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_580 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_580 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_580 + 27u].w) + 1.0f.xxx;
        float _4662 = 0.0f;
        float3 _4663 = 0.0f.xxx;
        if (any(bool3(_4621.x > _4622.x, _4621.y > _4622.y, _4621.z > _4622.z)))
        {
            float3 _4658 = frac(dot(frac(frac(_97 * 1.52587890625e-05f.xxx) + frac(_100 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _4662 = 1.0f;
            _4663 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_4658.x > 0.5f.xxx.x, _4658.y > 0.5f.xxx.y, _4658.z > 0.5f.xxx.z)));
        }
        else
        {
            float _4647 = 0.0f;
            float3 _4648 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_4616].x > 0.0f)
            {
                float3 _4632 = abs(_556 - in_var_TEXCOORD9);
                float _4642 = 1.0f - clamp(abs(max(_4632.x, max(_4632.y, _4632.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_4616].x) * 20.0f, 0.0f, 1.0f);
                _4647 = float(int(sign(_4642)));
                _4648 = float3(1.0f, 0.0f, 1.0f) * _4642;
            }
            else
            {
                _4647 = _719;
                _4648 = _4590;
            }
            _4662 = _4647;
            _4663 = _4648;
        }
        _4664 = _4662;
        _4665 = _4663;
    }
    else
    {
        _4664 = _719;
        _4665 = _4590;
    }
    float4 _4675 = float4(((mad(_941 * _798, max(1.0f.xxx, ((((((_712 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_712 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_712 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), lerp(mad((_4075 * ((_800 * _4087.x) + (clamp(50.0f * _800.y, 0.0f, 1.0f) * _4087.y).xxx)) * 1.0f, max(1.0f.xxx, ((((((_800 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_800 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_800 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), float4(_2341.x ? 0.0f.xxxx.x : _1896.x, _2341.y ? 0.0f.xxxx.y : _1896.y, _2341.z ? 0.0f.xxxx.z : _1896.z, _2341.w ? 0.0f.xxxx.w : _1896.w).xyz + float4(_2341.x ? 0.0f.xxxx.x : _1899.x, _2341.y ? 0.0f.xxxx.y : _1899.y, _2341.z ? 0.0f.xxxx.z : _1899.z, _2341.w ? 0.0f.xxxx.w : _1899.w).xyz), _798 + (_800 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _4665) * _4583.w) + _4583.xyz, _4664);
    float3 _4681 = min((_4675.xyz * View_View_PreExposure).xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_4681.x, _4681.y, _4681.z, _4675.w);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    gl_FrontFacing = stage_input.gl_FrontFacing;
    in_var_TEXCOORD10_centroid = stage_input.in_var_TEXCOORD10_centroid;
    in_var_TEXCOORD11_centroid = stage_input.in_var_TEXCOORD11_centroid;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_PRIMITIVE_ID = stage_input.in_var_PRIMITIVE_ID;
    in_var_TEXCOORD9 = stage_input.in_var_TEXCOORD9;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    return stage_output;
}
