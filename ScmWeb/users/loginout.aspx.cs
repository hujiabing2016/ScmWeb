using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace ScmWeb
{
    public partial class loginout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session["account"] = null;
            Session["username"] = null;
            Session["userid"] = null;
            this.Page.Response.Redirect("login.aspx");

        }
    }
}