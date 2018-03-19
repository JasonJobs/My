<%@ WebHandler Language="C#" Class="Register" %>

using System;
using System.Web;
using BLL;

public class Register : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        //context.Response.ContentType = "text/html";          //文本类型html文档，当为plain时间为读取字符串
        //string path = context.Request.MapPath("Register.html");      //获取路径

        //string name = context.Request.Form["userName"];  //获取用户注册输入的用户名
        //string pwd = context.Request.Form["userpwd"];         //获取密码
        //string repwd = context.Request.Form["userrepwd"];      //获取地址
        //string reaname = context.Request.Form["userrealname"];//获取姓名
        //int gender = context.Request.Form["radio"]=="男"?1:0;    //性别
        //string reaIDCard = context.Request.Form["IDCard"];//获取身份证号码
        //string realAddress = context.Request.Form["userAddress"];//获取身份地址
        //string realnaddress = context.Request.Form["userAddress"];//获取现住址
        //string phone = context.Request.Form["userPhone"];//获取手机号码
        //string email = context.Request.Form["email"];//获取email地址
        //if (!string.IsNullOrEmpty(name) && !string.IsNullOrEmpty(pwd)) //判断用户名和密码框不为空时间
        //{
        //    //string sql="select count(*) from "
        //    //if (bll.RegisterSingle(model)>0)     //调用bll层的方法
        //    //{
        //    //    context.Response.Clear();         //清除上面的信息
        //    //    context.Response.Write("欢迎" + model.Pname + "注册成功");  //相应一个注册成功的页面
        //    //}
        //}
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}