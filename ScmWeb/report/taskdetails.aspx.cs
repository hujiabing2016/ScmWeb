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
    public partial class taskdetails : System.Web.UI.Page
    {
        SqlConnection con = DB.getConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                Response.Expires = 0;
                int weeks = new System.Globalization.GregorianCalendar().GetWeekOfYear(System.DateTime.Now, System.Globalization.CalendarWeekRule.FirstDay, DayOfWeek.Sunday);
                this.txtweeks.Text = Convert.ToString(weeks);
                this.bindToName();
                this.bindToType();
            }
        }


        private void bindToName()
        {
            string name = Convert.ToString(Session["username"]);
            this.ddlexecutor.SelectedValue = name;
            string strSql = "select distinct username from Users order by username";
            SqlDataAdapter sda = new SqlDataAdapter(strSql, con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "username");
            this.ddlexecutor.DataSource = ds.Tables["username"].DefaultView;
            this.ddlexecutor.DataTextField = "username";
            this.ddlexecutor.DataBind();
            this.ddlexecutor.Items.Insert(0, new ListItem("--请选择--", ""));
            con.Close();
        }

        private void bindToType()
        {
            string strSql = "select distinct typename from tasktype order by typename";
            SqlDataAdapter sda = new SqlDataAdapter(strSql, con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "tasktype");
            this.ddltype.DataSource = ds.Tables["tasktype"].DefaultView;
            this.ddltype.DataTextField = "typename";
            this.ddltype.DataBind();
            this.ddltype.Items.Insert(0, new ListItem("--请选择--", ""));
            con.Close();
        }

        protected void btncommit_Click(object sender, EventArgs e)
        {
            int weeks = Convert.ToInt32(this.txtweeks.Text.Trim());
            string taskDes = this.txttaskdes.Text.Trim();
            string subTaskDes = this.txtsubtask.Text.Trim();
            string type = this.ddltype.SelectedValue;
            string priority = this.ddlpriority.SelectedValue;
            string executor = this.ddlexecutor.SelectedValue;
            string spentTime = this.txtspentTime.Text.Trim();
            string startTime = this.txtstarttime.Text.Trim();
            string finishTime = this.txtfinishtime.Text.Trim();
            string finishTimeReal = this.txtfinishtimereal.Text.Trim();
            string state = this.ddlstatus.SelectedValue;
            string remarks = this.txtremark.Text.Trim();
            string createTime = DateTime.Now.ToString();


            con.Open();
            string sqlstr = "insert into taskTable(weeks,taskDes,subTaskDes,type,priority,executor,spentTime,StartTime,finishTime,finishTimeReal,state,remarks,createTime) values('" + weeks + "','" + taskDes + "','" + subTaskDes + "','" + type + "','" + priority + "','" + executor + "','" + spentTime + "','" + startTime + "','" + finishTime + "','" + finishTimeReal + "','" + state + "','" + remarks + "','" + createTime + "')";
            SqlCommand cmd = new SqlCommand(sqlstr, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>window.opener=null;window.close();</script>");
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.opener=null;window.close();</script>");
        }
    }
}