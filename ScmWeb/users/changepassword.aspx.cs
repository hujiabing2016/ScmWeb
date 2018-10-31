using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ScmWeb.App_Code;

namespace ScmWeb
{
    public partial class changepassword : System.Web.UI.Page
    {
        SqlConnection con = DB.getConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                string userid = Session["userid"].ToString();
                string pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(this.TextBox2.Text.Trim(), "md5").ToString().ToLower().Substring(8, 16);
                string pwd1 = this.TextBox1.Text;
                string pwd2;
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Users where userid='" + userid + "'", con);

                try
                {
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        if (dr["pwd"].ToString() != pwd)
                        {
                            Response.Write("<script laguage='javascript'>alert('输入的原密码错误！');window.location.href('ChangePassword.aspx')</script>");
                        }
                        else
                        {
                            con.Close();

                        }
                    }
                    if (TextBox3.Text.Trim() == TextBox1.Text.Trim())
                    {
                        pwd2 = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(pwd1.Trim(), "md5").ToString().ToLower().Substring(8, 16);
                        cmd.CommandText = "update Users set pwd='" + pwd2 + "' where userid='" + userid + "'";
                        con.Open();
                        cmd.ExecuteNonQuery();
                        Response.Write("<script laguage='javascript'>alert('密码修改成功！');window.location.href('Login.aspx')</script>");
                    }
                    else
                    {
                        Response.Write("<script laguage='javascript'>alert('确认密码和新密码不一致！');window.location.href('ChangePassword.aspx')</script>");

                    }

                }
                catch (Exception e1)
                {
                    Response.Write(e1.Message);
                }
                con.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
            this.TextBox3.Text = "";

        }
    }
}