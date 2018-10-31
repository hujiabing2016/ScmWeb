using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ScmWeb.App_Code;


namespace ScmWeb.report
{
    public partial class monthlydata : System.Web.UI.Page
    {
        SqlConnection con = DB.getConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                
            }
        }

        private void bindToGrid()
        {

            string strSql = "select * from extPack where scmName='" + Convert.ToString(Session["username"]);
            SqlDataAdapter sda = new SqlDataAdapter(strSql, con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "extPack");
            this.GridViewmonthdata.DataKeyNames = new string[] { "extPackid" };
            this.GridViewmonthdata.DataSource = ds.Tables["extPack"];
            this.GridViewmonthdata.DataBind();
            con.Close();
        }

        protected void btnquery_Click(object sender, EventArgs e)
        {

        }
    }
}