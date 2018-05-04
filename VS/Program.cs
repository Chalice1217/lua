using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LuaInterface;
/// <summary>
/// 操作步骤 :
/// 1. 打开VS,Ctr + Shift + N ,选择控制台应用
/// 2. 解决方案 - 右击LuaInterface(你自己取得项目名) - 在文件资源管理器中打开文件夹(X) - 把LuaInterface.dll ,luanet.dll,lua51.dll拉进来
/// 3. 解决方案 - 右击引用 - 添加引用 - 左边浏览 - 下边浏览 - 在文件夹里找到LuaInterface.dll ,luanet.dll,lua51.dll所在的文件夹,点击LuaInterface.dll 
/// 4. 把luanet.dll,lua51.dll 复制一份,到 bin/Debug下
/// 5. 引入using LuaInterface命名空间即可
/// </summary>
namespace LuaInterface
{
    class Program
    {
        static void Main(string[] args)
        {
            
            Console.WriteLine("Hellow Lua");
            

            #region 使用C#写lua,并在lua虚拟机中执行 ---字段属性篇
            // 第一种 : 创建lua虚拟机的形式直接写lua
            Lua lua = new Lua(); // 创建lua虚拟机(lua解析器)
            lua["m_Age"] = 23;
            lua["m_PlayerName"] = "胖儿子";
            lua.NewTable("m_HeroTable");
            Console.WriteLine(lua["m_Age"] + "----" + lua["m_PlayerName"]);
            
            // C#和lua中变量对应参考:
            // nil ------ null
            // string ------ System.String
            // number ------ System.Double
            // boolean ------ System.Boolean
            // table ------ LuaInterface.LuaTable
            // function ------ LuaInterface.LuaFunction

            double age = (double)lua["m_Age"];
            string name = (string)lua["m_PlayerName"];
            Console.WriteLine(age + "---" + name);
            

            // 第二种 : 使用lua.DoString() 编写Lua
            lua.DoString("account = 20170504");
            lua.DoString("str = 'youga'");
            object[] result = lua.DoString("return str, account");
            foreach (object item in result)
            {
                Console.WriteLine(item);
               
            }


            // 第三种: lua.DoFile() 编写Lua
         
            //1. 解决方案 - 右击 LuaInterface(项目名) - 添加 - 新建项 - 建一个名为LuaTest.lua的类
            //2. 把lua代码放进去,把编码格式改为ANSI(可以用Notepad++)
            //3. 右击LuaTest.lua - 属性 - 复制到输出目录 - 选择始终复制即可
            lua.DoFile("LuaTest.lua");

            #endregion


            #region 使用C#写lua,并在lua虚拟机中执行 ---方法篇
            //1. 将一个类里面的普通方法注册进lua中并执行
            TestClass t = new TestClass();
            // 注意: 普通方法一定要注明是哪个对象
            lua.RegisterFunction("MyNormalCLRMethod", t, t.GetType().GetMethod("MyNormalCLRMethod"));
            lua.DoString("MyNormalCLRMethod()");
            // 如果是开发时一般名字要保持一致,这里只是为了演示C#代码给lua执行的意思

            //2. 将一个类里面的静态方法注册进Lua中并执行
            lua.RegisterFunction("MyStaticCLRMethod", null, typeof(TestClass).GetMethod("MyStaticCLRMethod"));
            lua.DoString("MyStaticCLRMethod()");

            #endregion
            Console.ReadKey();
            lua.Dispose();

        }

    }

    public class TestClass
    {
        public void MyNormalCLRMethod()
        {
            Console.WriteLine("欢迎Lua执行C#的普通方法 ---吼");
            Console.ReadKey();
        }

        public static void MyStaticCLRMethod()
        {
            Console.WriteLine("欢迎Lua执行C#的静态方法 ---哈");
            Console.ReadKey();
        }


    }
}
    

