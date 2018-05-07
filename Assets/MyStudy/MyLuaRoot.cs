using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;
using System;

[Serializable]
public class Things
{
    public string name;
    public GameObject value;
}

[LuaCallCSharp]
public class MyLuaRoot : MonoBehaviour
{
    public Things[] thingsArr;
    public TextAsset ta;
    internal static LuaEnv luaEnv = new LuaEnv();
    public static float timer = 0;
    public static float timeCD = 1;
    public LuaTable luaTable;
    Action start;
    Action update;
    Action destory;

    private void Awake()
    {
        luaTable = luaEnv.NewTable();

        LuaTable meta = luaEnv.NewTable();
        meta.Set("__index", luaEnv.Global);
        luaTable.SetMetaTable(meta);
        meta.Dispose();

        luaEnv.DoString(ta.text, "MyLuaRoot", luaTable);
        luaTable.Set("self", this);
        foreach (var item in thingsArr)
        {
            luaTable.Set(item.name, item.value);
        }

        // 不同写法,作用都是一样的
       // Action awake = luaTable.Get<Action>("awake");
        luaTable.Get("start", out start);
        luaTable.Get("update", out update);
        luaTable.Get("destory", out destory);
        Action luaAwake = luaTable.Get<Action>("awake");
        if (luaAwake != null)
        {
            luaAwake();
        }
        
    }

    private void Start()
    {
        if (start != null)
        {
            start();
        }
    }

    private void Update()
    {
        if (update != null)
        {
            update();
        }
        if (Time.time - timer > timeCD)
        {
            luaEnv.Tick();
            timer = Time.time;
        }
    }

    private void OnDestroy()
    {
        if (destory!=null)
        {
            destory();
        }
    }


}
