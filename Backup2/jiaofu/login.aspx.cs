using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jiaofu
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string username = this.txtname.Text.ToString();
            string pwd = this.txtpwd.Text.ToString();
            string stringpwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(pwd.Trim(), "md5").ToString().ToLower().Substring(8, 16);

            string strsql = "select*from Managers where ManagerName='" + username + "'  and Pwd='" + stringpwd + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(strsql, con);
            try
            {
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {


                    Session["RoleID"] = dr["RoleID"];
                    Session["UserName"] = dr["ManagerName"];
                    Session["UserID"] = dr["ManagerID"];
                    Response.Redirect("~/BackDesk/Manage.aspx");
                }

                else
                {
                    Response.Write("<script laguage='javascript'>alert('用户名或密码不正确！');window.location.href('AdminLogin.aspx')</script>");
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