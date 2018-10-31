using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Security;

namespace ScmWeb.App_Code
{
    public class DB
    {
        public static SqlConnection getConnection()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Scm"].ToString());
            return con;
        }
    }
}