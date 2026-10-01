void BlinphongLight_float(in float3 Normal, in float3 ClipSpacePos, in float3 WorldPos, in float3 ViewDir, in float Gloss, in bool IgnoreLightColor,
    out float3 DiffuseColor, out float3 SpecularColor, out float3 LightColor)
{
    #ifdef SHADERGRAPH_PREVIEW
        DiffuseColor = float3(0.5, 0.5, 0);
        SpecularColor = float3(1.0, 1.0, 1.0);
        LightColor = float3(1.0, 1.0, 1.0);
    #else
        Gloss = exp2(10 * Gloss + 1);
        #ifdef SHADOWS_SCREEN
            half4 shadowCoord = ComputerScreenPos(ClipSpacePos);
        #else
            half4 shadowCoord = TransformWorldToShadowCoord(WorldPos);
        #endif

        #ifdef _CUS_RECEIVE_SHADOWS
            Light light = GetMainLight(shadowCoord);
        #else
            Light light = GetMainLight();
        #endif


        float3 halfDir = normalize(ViewDir + light.direction);

        LightColor = light.color * light.shadowAttenuation * light.distanceAttenuation;

        DiffuseColor = light.shadowAttenuation;
        SpecularColor = pow(max(0, dot(Normal, halfDir)), Gloss);
    #endif
}

void BlinphongLight_half(in half3 Normal, in half3 ClipSpacePos, in half3 WorldPos , in half3 ViewDir, in half Gloss, in bool IgnoreLightColor,
                       out half3 DiffuseColor, out half3 SpecularColor, out half3 LightColor)
{
    #ifdef SHADERGRAPH_PREVIEW
        DiffuseColor = half3(0.5, 0.5, 0);
        SpecularColor = half3(1.0, 1.0, 1.0);
        LightColor = half3(1.0, 1.0, 1.0);
    #else
        Gloss = exp2(10 * Gloss + 1);
        #ifdef SHADOWS_SCREEN
            half4 shadowCoord = ComputerScreenPos(ClipSpacePos);
        #else
            half4 shadowCoord = TransformWorldToShadowCoord(WorldPos);
        #endif

        #ifdef _CUS_RECEIVE_SHADOWS
            Light light = GetMainLight(shadowCoord);
        #else
            Light light = GetMainLight();
        #endif


        half3 halfDir = normalize(ViewDir + light.direction);

        LightColor = light.color * light.shadowAttenuation * light.distanceAttenuation;

        DiffuseColor = light.shadowAttenuation;
        SpecularColor = pow(max(0,dot(Normal, halfDir)), Gloss);
    #endif
}

void BlinphongLight(in float3 Normal, in float3 ClipSpacePos, in float3 WorldPos, in float3 ViewDir, in float Gloss, bool IgnoreLightColor, in half3 SpecularDirFix,
    out half3 DiffuseColor, out half3 SpecularColor, out half3 LightColor)
{
    #ifdef SHADERGRAPH_PREVIEW
    DiffuseColor = float3(0.5, 0.5, 0);
    SpecularColor = float3(1.0, 1.0, 1.0);
    LightColor = float3(1.0, 1.0, 1.0);
    #else
    Gloss = exp2(10 * Gloss + 1);
    #ifdef SHADOWS_SCREEN
    half4 shadowCoord = ComputerScreenPos(ClipSpacePos);
    #else
    half4 shadowCoord = TransformWorldToShadowCoord(WorldPos);
    #endif

    #if defined(_CUS_RECEIVE_SHADOWS) && defined(_MAIN_LIGHT_SHADOWS) 
    Light light = GetMainLight(shadowCoord);
    #else
    Light light = GetMainLight();
    #endif
    float3 halfDir = normalize(ViewDir + light.direction + SpecularDirFix);

    if (IgnoreLightColor) LightColor = light.color * light.shadowAttenuation * light.distanceAttenuation;
    else LightColor = light.color * light.shadowAttenuation * light.distanceAttenuation;

    DiffuseColor = saturate(dot(Normal, light.direction) * 0.5 + 0.5);
    SpecularColor = pow(max(0, dot(Normal, halfDir)), Gloss);
    #endif
}

void BlinphongLight_float(in float3 Normal, in float3 ClipSpacePos, in float3 WorldPos, in float3 ViewDir, in float Gloss, bool IgnoreLightColor, in float3 SpecularDirFix,
    out float3 DiffuseColor, out float3 SpecularColor, out float3 LightColor)
{
#ifdef SHADERGRAPH_PREVIEW
    DiffuseColor = float3(0.5, 0.5, 0);
    SpecularColor = float3(1.0, 1.0, 1.0);
    LightColor = float3(1.0, 1.0, 1.0);
#else
    Gloss = exp2(10 * Gloss + 1);
#ifdef SHADOWS_SCREEN
    half4 shadowCoord = ComputerScreenPos(ClipSpacePos);
#else
    half4 shadowCoord = TransformWorldToShadowCoord(WorldPos);
#endif

#if defined(_CUS_RECEIVE_SHADOWS) 
    Light light = GetMainLight(shadowCoord);
#else
    Light light = GetMainLight();
#endif
    
    float3 halfDir = normalize(ViewDir + light.direction + SpecularDirFix);

    if (IgnoreLightColor) LightColor = light.color * light.shadowAttenuation * light.distanceAttenuation;
    else LightColor = light.color * light.shadowAttenuation * light.distanceAttenuation;

    DiffuseColor = saturate(dot(Normal, light.direction) * 0.5 + 0.5);
    SpecularColor = pow(max(0, dot(Normal, halfDir)), Gloss);
#endif
}

void BlinphongLight_half(in half3 Normal, in half3 ClipSpacePos, in half3 WorldPos, in half3 ViewDir, in half Gloss,  bool IgnoreLightColor, in half3 SpecularDirFix,
    out half3 DiffuseColor, out half3 SpecularColor, out half3 LightColor)
{
#ifdef SHADERGRAPH_PREVIEW
    DiffuseColor = half3(0.5, 0.5, 0);
    SpecularColor = half3(1.0, 1.0, 1.0);
    LightColor = half3(1.0, 1.0, 1.0);
#else
    Gloss = exp2(10 * Gloss + 1);
#ifdef SHADOWS_SCREEN
    half4 shadowCoord = ComputerScreenPos(ClipSpacePos);
#else
    half4 shadowCoord = TransformWorldToShadowCoord(WorldPos);
#endif

#ifdef _CUS_RECEIVE_SHADOWS
    Light light = GetMainLight(shadowCoord);
#else
    Light light = GetMainLight();
#endif


    half3 halfDir = normalize(ViewDir + light.direction + SpecularDirFix);

    if (IgnoreLightColor) LightColor = light.color * light.shadowAttenuation * light.distanceAttenuation;
    else LightColor = light.color * light.shadowAttenuation * light.distanceAttenuation;

    DiffuseColor = saturate(dot(Normal, light.direction) * 0.5 + 0.5);
    SpecularColor = pow(max(0, dot(Normal, halfDir)), Gloss);
#endif
}

float Square (float v) {
    return v * v;
}

float SpecularStrength (float3 viewDir,float3 normal,float3 lightDir,float roughness ) {
    float3 h = SafeNormalize(lightDir + viewDir);
    float nh2 = Square(saturate(dot(normal, h)));
    float lh2 = Square(saturate(dot(lightDir, h)));
    float r2 = Square(roughness);
    float d2 = Square(nh2 * (r2 - 1.0) + 1.00001);
    float normalization = roughness * 4.0 + 2.0;
    return r2 / (d2 * max(0.1, lh2) * normalization);
}

void BRDFLighting_float(in float3 Normal, in float3 ClipSpacePos, in float3 WorldPos, in float3 ViewDir, in float roughness,
    out float3 DiffuseColor, out float3 SpecularColor, out float3 LightColor)
{
    #ifdef SHADERGRAPH_PREVIEW
    DiffuseColor = half3(0.5, 0.5, 0);
    SpecularColor = half3(1.0, 1.0, 1.0);
    LightColor = half3(1.0, 1.0, 1.0);
    #else
    roughness = exp2(10 * roughness + 1);
    #ifdef SHADOWS_SCREEN
    half4 shadowCoord = ComputerScreenPos(ClipSpacePos);
    #else
    half4 shadowCoord = TransformWorldToShadowCoord(WorldPos);
    #endif

    #ifdef _CUS_RECEIVE_SHADOWS
    Light light = GetMainLight(shadowCoord);
    #else
    Light light = GetMainLight();
    #endif


    half3 halfDir = normalize(ViewDir + light.direction);

    LightColor = light.color * light.shadowAttenuation * light.distanceAttenuation;

    DiffuseColor = light.shadowAttenuation;
    SpecularColor = SpecularStrength(ViewDir,Normal,light.direction,roughness);
    #endif
    
}
void BRDFLighting_half(in half3 Normal, in half3 ClipSpacePos, in half3 WorldPos, in half3 ViewDir, in half roughness,
    out half3 DiffuseColor, out half3 SpecularColor, out half3 LightColor)
{
    #ifdef SHADERGRAPH_PREVIEW
    DiffuseColor = half3(0.5, 0.5, 0);
    SpecularColor = half3(1.0, 1.0, 1.0);
    LightColor = half3(1.0, 1.0, 1.0);
    #else
    roughness = exp2(10 * roughness + 1);
    #ifdef SHADOWS_SCREEN
    half4 shadowCoord = ComputerScreenPos(ClipSpacePos);
    #else
    half4 shadowCoord = TransformWorldToShadowCoord(WorldPos);
    #endif

    #ifdef _CUS_RECEIVE_SHADOWS
    Light light = GetMainLight(shadowCoord);
    #else
    Light light = GetMainLight();
    #endif


    half3 halfDir = normalize(ViewDir + light.direction);

    LightColor = light.color * light.shadowAttenuation * light.distanceAttenuation;

    DiffuseColor = light.shadowAttenuation;
    SpecularColor = SpecularStrength(ViewDir,Normal,light.direction,roughness);
    #endif
}


