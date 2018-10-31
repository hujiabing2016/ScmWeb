using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class UserControls_search : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        //Session["MovieName"] = this.TextBox1.Text;
        //SqlConnection con = DB.getConnection();
        //string sqlstr = "select * from Movies where MovieName  like '%" + this.TextBox1.Text.ToString() + "%'";
        //con.Open();
        //SqlCommand cmd = new SqlCommand(sqlstr, con);
        //SqlDataReader dr = cmd.ExecuteReader();
        //int id;
        //if (dr.Read())
        //{
        //    id = Convert.ToInt32(dr["MovieID"].ToString());
        //    Response.Redirect("Details.aspx?id=" + id + "");
        //    dr.Close();
        //}
    }
}
