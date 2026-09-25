using UnityEditor;
using UnityEngine;

public class BatchRenameTool : EditorWindow
{
    private string prefix = "";
    private string suffix = "";
    private int startNum = 1;
    private string replaceOld = "";
    private string replaceNew = "";

    [MenuItem("Tools/批量重命名工具")]
    static void OpenWindow()
    {
        GetWindow<BatchRenameTool>("批量重命名");
    }

    private void OnGUI()
    {
        GUILayout.Label("选中Hierarchy/Project物体批量改名", EditorStyles.boldLabel);

        prefix = EditorGUILayout.TextField("前缀：", prefix);
        suffix = EditorGUILayout.TextField("后缀：", suffix);
        startNum = EditorGUILayout.IntField("起始序号：", startNum);

        GUILayout.Space(10);
        replaceOld = EditorGUILayout.TextField("替换旧字符：", replaceOld);
        replaceNew = EditorGUILayout.TextField("替换新字符：", replaceNew);

        GUILayout.Space(15);

        if (GUILayout.Button("【前缀+序号+后缀】批量命名", GUILayout.Height(35)))
        {
            RenameByNum();
        }

        if (GUILayout.Button("【字符批量替换】", GUILayout.Height(35)))
        {
            ReplaceNameStr();
        }
    }

    // 按序号重命名
    void RenameByNum()
    {
        GameObject[] selects = Selection.gameObjects;
        if (selects.Length == 0)
        {
            EditorUtility.DisplayDialog("提示", "请先选中需要重命名的物体", "确定");
            return;
        }

        for (int i = 0; i < selects.Length; i++)
        {
            selects[i].name = $"{prefix}{startNum + i}{suffix}";
        }
        AssetDatabase.SaveAssets();
    }

    // 名字字符替换
    void ReplaceNameStr()
    {
        if (string.IsNullOrEmpty(replaceOld)) return;
        GameObject[] selects = Selection.gameObjects;
        foreach (var go in selects)
        {
            go.name = go.name.Replace(replaceOld, replaceNew);
        }
        AssetDatabase.SaveAssets();
    }
}