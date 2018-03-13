<%@ WebHandler Language="C#" Class="Mainpage" %>

using System;
using System.Web;
using System.Data.SqlClient;
using BLL;
public class Mainpage : IHttpHandler {
    public void ProcessRequest(HttpContext context)
    {
        //context.Response.ContentType = "text/html";
        //string html = System.IO.File.ReadAllText(context.Request.MapPath("MainPage.html"));
        context.Response.ContentType = "text/html";
        var name = context.Request.Form["luserName"];
        var pwd = context.Request.Form["lpassword"];
        string sqlText = "select count(*) from UserPage where Username=@userName and userpassword=@userpwd";
        SqlParameter[] paras = new SqlParameter[]
        {
            new SqlParameter("@userName",name),
            new SqlParameter("@userpwd",pwd)
        };
        //查询是否有该用户
        int i = (int)syBLL.ExecuteScalar(sqlText, paras);
        if (i > 0)
        {
            string log = context.Request["logreg"];

            context.Response.Redirect("MainPage.html");
        }
        else
        {
            //如果错误，则重新输入Login.htm页面，并保存用户名
            string html = System.IO.File.ReadAllText(context.Request.MapPath("Login.htm"));
            html = html.Replace("name='userName'", "name='userName' value='" + name + "'");
            context.Response.Write(html);
        }
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}