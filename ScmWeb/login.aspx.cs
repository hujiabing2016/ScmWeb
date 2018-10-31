using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using ScmWeb.App_Code;

namespace ScmWeb
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string account = this.txtname.Text.ToString();
            string pwd = this.txtpwd.Text.ToString();
            string str = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(pwd.Trim(), "md5").ToString().ToLower().Substring(8, 16);
            SqlConnection con = DB.getConnection();
            string strsql = "select * from Users where account='" + account + "'and pwd='" + str + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(strsql, con);
            try
            {
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {

                    //Session["RoleID"] = dr["RoleID"];
                    Session["account"] = dr["account"];
                    Session["username"] = dr["username"];
                    Session["userid"] = dr["userid"];
                    Response.Redirect("~/navigation.aspx");

                }
                else
                {
                    Response.Write("<script laguage='javascript'>alert('用户名或密码不正确，请重新输入！');window.location.href('Login.aspx')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            finally
            {
                con.Close();
            }
        }
    }
}