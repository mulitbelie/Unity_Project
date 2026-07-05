// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:1,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2731,x:36581,y:33431,varname:node_2731,prsc:2|emission-6008-OUT,alpha-7201-OUT;n:type:ShaderForge.SFN_TexCoord,id:9610,x:32631,y:33614,varname:node_9610,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Distance,id:8434,x:33333,y:33720,varname:node_8434,prsc:2|A-8502-OUT,B-1326-OUT;n:type:ShaderForge.SFN_Vector2,id:1326,x:32934,y:33855,varname:node_1326,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Divide,id:9169,x:33572,y:33735,varname:node_9169,prsc:2|A-8434-OUT,B-604-OUT;n:type:ShaderForge.SFN_OneMinus,id:5095,x:33749,y:33735,varname:node_5095,prsc:2|IN-9169-OUT;n:type:ShaderForge.SFN_Multiply,id:1460,x:33964,y:33834,varname:node_1460,prsc:2|A-5095-OUT,B-1242-OUT;n:type:ShaderForge.SFN_Multiply,id:2570,x:34159,y:33834,varname:node_2570,prsc:2|A-1460-OUT,B-1460-OUT;n:type:ShaderForge.SFN_OneMinus,id:4276,x:34342,y:33906,varname:node_4276,prsc:2|IN-2570-OUT;n:type:ShaderForge.SFN_Power,id:5842,x:34506,y:33836,varname:node_5842,prsc:2|VAL-2990-OUT,EXP-2570-OUT;n:type:ShaderForge.SFN_Vector1,id:2990,x:34272,y:33736,varname:node_2990,prsc:2,v1:2.718;n:type:ShaderForge.SFN_Divide,id:3798,x:34685,y:33728,varname:node_3798,prsc:2|A-2309-OUT,B-5842-OUT;n:type:ShaderForge.SFN_Vector1,id:2309,x:34448,y:33728,varname:node_2309,prsc:2,v1:1;n:type:ShaderForge.SFN_If,id:1141,x:35031,y:33670,varname:node_1141,prsc:2|A-5095-OUT,B-6083-OUT,GT-3798-OUT,EQ-8104-OUT,LT-8104-OUT;n:type:ShaderForge.SFN_Vector1,id:6083,x:34807,y:33694,varname:node_6083,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:8104,x:34827,y:33861,varname:node_8104,prsc:2,v1:1;n:type:ShaderForge.SFN_OneMinus,id:2704,x:35263,y:33670,varname:node_2704,prsc:2|IN-1141-OUT;n:type:ShaderForge.SFN_Slider,id:604,x:33043,y:33988,ptovrint:False,ptlb:Radius_1,ptin:_Radius_1,varname:node_604,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:0.5,max:0.5;n:type:ShaderForge.SFN_Append,id:5664,x:33072,y:33384,varname:node_5664,prsc:2|A-7324-OUT,B-1313-OUT;n:type:ShaderForge.SFN_Add,id:8502,x:33333,y:33524,varname:node_8502,prsc:2|A-5664-OUT,B-9610-UVOUT;n:type:ShaderForge.SFN_Slider,id:7324,x:32699,y:33297,ptovrint:False,ptlb:PosX_1,ptin:_PosX_1,varname:node_7324,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Slider,id:1313,x:32697,y:33409,ptovrint:False,ptlb:PosY_1,ptin:_PosY_1,varname:node_1313,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:4622,x:35451,y:33490,varname:node_4622,prsc:2|A-8502-OUT,B-2704-OUT;n:type:ShaderForge.SFN_Slider,id:5754,x:32586,y:34086,ptovrint:False,ptlb:PosX_2,ptin:_PosX_2,varname:_PosX_2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Slider,id:1056,x:32584,y:34198,ptovrint:False,ptlb:PosY_2,ptin:_PosY_2,varname:_PosY_2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_TexCoord,id:1587,x:32518,y:34403,varname:node_1587,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Append,id:8385,x:32959,y:34173,varname:node_8385,prsc:2|A-5754-OUT,B-1056-OUT;n:type:ShaderForge.SFN_Add,id:3534,x:33220,y:34313,varname:node_3534,prsc:2|A-8385-OUT,B-1587-UVOUT;n:type:ShaderForge.SFN_Distance,id:9853,x:33220,y:34509,varname:node_9853,prsc:2|A-3534-OUT,B-1338-OUT;n:type:ShaderForge.SFN_Vector2,id:1338,x:32821,y:34644,varname:node_1338,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Slider,id:1250,x:32930,y:34777,ptovrint:False,ptlb:Radius_2,ptin:_Radius_2,varname:_Radius_2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:0.5,max:0.5;n:type:ShaderForge.SFN_Divide,id:5263,x:33459,y:34524,varname:node_5263,prsc:2|A-9853-OUT,B-1250-OUT;n:type:ShaderForge.SFN_OneMinus,id:3818,x:33636,y:34524,varname:node_3818,prsc:2|IN-5263-OUT;n:type:ShaderForge.SFN_Multiply,id:8113,x:33851,y:34623,varname:node_8113,prsc:2|A-3818-OUT,B-3293-OUT;n:type:ShaderForge.SFN_Multiply,id:1558,x:34046,y:34623,varname:node_1558,prsc:2|A-8113-OUT,B-8113-OUT;n:type:ShaderForge.SFN_Vector1,id:4286,x:34159,y:34525,varname:node_4286,prsc:2,v1:2.718;n:type:ShaderForge.SFN_Power,id:103,x:34393,y:34625,varname:node_103,prsc:2|VAL-4286-OUT,EXP-1558-OUT;n:type:ShaderForge.SFN_Vector1,id:3388,x:34335,y:34517,varname:node_3388,prsc:2,v1:1;n:type:ShaderForge.SFN_Divide,id:4495,x:34572,y:34517,varname:node_4495,prsc:2|A-3388-OUT,B-103-OUT;n:type:ShaderForge.SFN_Vector1,id:5398,x:34694,y:34483,varname:node_5398,prsc:2,v1:0;n:type:ShaderForge.SFN_If,id:21,x:34918,y:34459,varname:node_21,prsc:2|A-3818-OUT,B-5398-OUT,GT-4495-OUT,EQ-2012-OUT,LT-2012-OUT;n:type:ShaderForge.SFN_Vector1,id:2012,x:34714,y:34650,varname:node_2012,prsc:2,v1:1;n:type:ShaderForge.SFN_OneMinus,id:3375,x:35150,y:34459,varname:node_3375,prsc:2|IN-21-OUT;n:type:ShaderForge.SFN_Multiply,id:9144,x:35338,y:34279,varname:node_9144,prsc:2|A-3534-OUT,B-3375-OUT;n:type:ShaderForge.SFN_Slider,id:1242,x:33642,y:33968,ptovrint:False,ptlb:Density_1,ptin:_Density_1,varname:node_1242,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Slider,id:3293,x:33532,y:34696,ptovrint:False,ptlb:Density_2,ptin:_Density_2,varname:_Density_2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Multiply,id:6008,x:35763,y:33724,varname:node_6008,prsc:2|A-2704-OUT,B-3375-OUT;n:type:ShaderForge.SFN_Multiply,id:949,x:35763,y:33934,varname:node_949,prsc:2|A-1141-OUT,B-21-OUT;n:type:ShaderForge.SFN_Multiply,id:7201,x:36211,y:33922,varname:node_7201,prsc:2|A-949-OUT,B-6514-OUT;n:type:ShaderForge.SFN_Slider,id:6514,x:35684,y:34152,ptovrint:False,ptlb:Oapcity,ptin:_Oapcity,varname:node_6514,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;proporder:1242-604-7324-1313-3293-1250-5754-1056-6514;pass:END;sub:END;*/

Shader "eroAlucard/SF_CiecleMultiTrans" {
    Properties {
        _Density_1 ("Density_1", Range(0, 10)) = 1
        _Radius_1 ("Radius_1", Range(0.01, 0.5)) = 0.5
        _PosX_1 ("PosX_1", Range(-5, 5)) = 0
        _PosY_1 ("PosY_1", Range(-5, 5)) = 0
        _Density_2 ("Density_2", Range(0, 10)) = 1
        _Radius_2 ("Radius_2", Range(0.01, 0.5)) = 0.5
        _PosX_2 ("PosX_2", Range(-5, 5)) = 0
        _PosY_2 ("PosY_2", Range(-5, 5)) = 0
        _Oapcity ("Oapcity", Range(0, 1)) = 0.5
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent+1"
            "RenderType"="Transparent"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 2.0
            uniform float _Radius_1;
            uniform float _PosX_1;
            uniform float _PosY_1;
            uniform float _PosX_2;
            uniform float _PosY_2;
            uniform float _Radius_2;
            uniform float _Density_1;
            uniform float _Density_2;
            uniform float _Oapcity;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float2 node_8502 = (float2(_PosX_1,_PosY_1)+i.uv0);
                float node_5095 = (1.0 - (distance(node_8502,float2(0.5,0.5))/_Radius_1));
                float node_1141_if_leA = step(node_5095,0.0);
                float node_1141_if_leB = step(0.0,node_5095);
                float node_8104 = 1.0;
                float node_1460 = (node_5095*_Density_1);
                float node_2570 = (node_1460*node_1460);
                float node_1141 = lerp((node_1141_if_leA*node_8104)+(node_1141_if_leB*(1.0/pow(2.718,node_2570))),node_8104,node_1141_if_leA*node_1141_if_leB);
                float node_2704 = (1.0 - node_1141);
                float2 node_3534 = (float2(_PosX_2,_PosY_2)+i.uv0);
                float node_3818 = (1.0 - (distance(node_3534,float2(0.5,0.5))/_Radius_2));
                float node_21_if_leA = step(node_3818,0.0);
                float node_21_if_leB = step(0.0,node_3818);
                float node_2012 = 1.0;
                float node_8113 = (node_3818*_Density_2);
                float node_21 = lerp((node_21_if_leA*node_2012)+(node_21_if_leB*(1.0/pow(2.718,(node_8113*node_8113)))),node_2012,node_21_if_leA*node_21_if_leB);
                float node_3375 = (1.0 - node_21);
                float node_6008 = (node_2704*node_3375);
                float3 emissive = float3(node_6008,node_6008,node_6008);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,((node_1141*node_21)*_Oapcity));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
