using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ScmWeb.App_Code;
using System.Data;

namespace ScmWeb.report
{
    public partial class TaskTable : System.Web.UI.Page
    {
        SqlConnection con = DB.getConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.bindToWeeks();
                this.bindToGrid();
                this.bindToName();
                this.bindTotype();
            }
        }

        private void bindToGrid()
        {
            string strSql = "select * from taskTable where executor='" + Convert.ToString(Session["username"]) + "'and state in ('未开始','正在进行','延迟完成')";
            SqlDataAdapter sda = new SqlDataAdapter(strSql, con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "taskTable");
            this.GridViewtask.DataKeyNames = new string[] { "taskid" };
            this.GridViewtask.DataSource = ds.Tables["taskTable"];
            this.GridViewtask.DataBind();
            con.Close();
        }
        private void bindToWeeks()
        {
            //int weeks = new System.Globalization.GregorianCalendar().GetWeekOfYear(System.DateTime.Now, System.Globalization.CalendarWeekRule.FirstDay, DayOfWeek.Sunday) - 1;
            //this.dropdlweek.SelectedValue = Convert.ToString(weeks);
            string strSql = "select distinct weeks from taskTable order by weeks desc";
            SqlDataAdapter sda = new SqlDataAdapter(strSql, con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "weeks");
            this.dropdlweek.DataSource = ds.Tables["weeks"].DefaultView;
            this.dropdlweek.DataTextField = "weeks";
            this.dropdlweek.DataBind();
            this.dropdlweek.Items.Insert(0, new ListItem("--请选择--", "0"));
            con.Close();
        }

        private void bindTotype()
        {
            string strSql = "select typename from tasktype";
            SqlDataAdapter sda = new SqlDataAdapter(strSql, con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "tasktype");
            this.ddlType.DataSource = ds.Tables["tasktype"].DefaultView;
            this.ddlType.DataTextField = "typename";
            this.ddlType.DataBind();
            this.ddlType.Items.Insert(0, new ListItem("--请选择--", ""));
            con.Close();
        }

        private void bindToName()
        {
            string name = Convert.ToString(Session["username"]);
            this.ddlname.SelectedValue = name;
            string strSql = "select distinct username from Users order by username";
            SqlDataAdapter sda = new SqlDataAdapter(strSql, con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "username");
            this.ddlname.DataSource = ds.Tables["username"].DefaultView;
            this.ddlname.DataTextField = "username";
            this.ddlname.DataBind();
            this.ddlname.Items.Insert(0, new ListItem("--请选择--", ""));
            con.Close();
        }


        protected void btnquery_Click(object sender, EventArgs e)
        {
            int weeks = Convert.ToInt32(this.dropdlweek.SelectedValue.Trim());
            string tasks = this.txtTasks.Text.Trim();
            string type = this.ddlType.SelectedValue.Trim();
            int priority = Convert.ToInt32(this.ddlPrio.SelectedValue.Trim());
            string name = this.ddlname.SelectedValue.Trim();
            string status = this.ddlStatus.SelectedValue.Trim();

            string str = "select * from taskTable where 1=1";
            if (weeks != 0)
            {
                str += " and weeks=" + weeks;
            }
            if (tasks != "")
            {
                str += " and taskDes like '%" + tasks + "%'";
            }
            if (type != "")
            {
                str += " and type like '%" + type + "%'";
            }
            if (priority != 0)
            {
                str += " and priority like '%" + priority + "%'";
            }
            if (name != "")
            {
                str += " and executor like '%" + name + "%'";
            }
            if (status != "")
            {
                str += " and state like '%" + status + "%'";
            }
            SqlDataAdapter sda = new SqlDataAdapter(str, con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "query");
            this.GridViewtask.DataKeyNames = new string[] { "taskid" };
            this.GridViewtask.DataSource = ds.Tables["query"];
            this.GridViewtask.DataBind();
            con.Close();

        }

        protected void GridViewtask_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#6699ff'");
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c");
            }
        }

        protected void GridViewtask_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int taskid = Convert.ToInt32(this.GridViewtask.DataKeys[e.RowIndex].Value.ToString());
            int weeks= Convert.ToInt32(((TextBox)(this.GridViewtask.Rows[e.RowIndex].FindControl("txtweeks"))).Text.Trim());
            string taskDes = ((TextBox)(this.GridViewtask.Rows[e.RowIndex].FindControl("txtTaskDes"))).Text.Trim();
            string subTaskDes = ((TextBox)(this.GridViewtask.Rows[e.RowIndex].FindControl("txtsubtask"))).Text.Trim();
            string type = ((DropDownList)(this.GridViewtask.Rows[e.RowIndex].FindControl("ddltype"))).SelectedValue.Trim();
            string priority= ((DropDownList)(this.GridViewtask.Rows[e.RowIndex].FindControl("ddlpriority"))).SelectedValue;
            string executor= ((TextBox)(this.GridViewtask.Rows[e.RowIndex].FindControl("txtname"))).Text.Trim();
            string spentTime = ((TextBox)(this.GridViewtask.Rows[e.RowIndex].FindControl("txtspenttime"))).Text.Trim();
            string startTime = ((TextBox)(this.GridViewtask.Rows[e.RowIndex].FindControl("txtstarttime"))).Text.Trim();
            string finishTime = ((TextBox)(this.GridViewtask.Rows[e.RowIndex].FindControl("txtfinishtime"))).Text.Trim();
            string finishTimeReal = ((TextBox)(this.GridViewtask.Rows[e.RowIndex].FindControl("txtfinishtimereal"))).Text.Trim();
            string state = ((DropDownList)(this.GridViewtask.Rows[e.RowIndex].FindControl("ddlstatus"))).SelectedValue;
            string remarks=((TextBox)(this.GridViewtask.Rows[e.RowIndex].FindControl("txtremark"))).Text.Trim();
            string createTime = DateTime.Now.ToString();

            con.Open();
            SqlCommand cmd = new SqlCommand("update taskTable set weeks='" + weeks + "',taskDes='" + taskDes + "',subTaskDes='" + subTaskDes + "',type='" + type + "',priority='" + priority + "',executor='" + executor + "',spentTime='" + spentTime + "',startTime='" + startTime + "',finishTime='" + finishTime + "',finishTimeReal='" + finishTimeReal + "',state='" + state + "',remarks='" + remarks + "',createTime='" + createTime + "' where taskid='" + taskid + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            this.GridViewtask.EditIndex = -1;
            this.bindToGrid();

        }

        protected void GridViewtask_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.GridViewtask.EditIndex = e.NewEditIndex;
            this.bindToGrid();
        }

        protected void GridViewtask_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            this.GridViewtask.EditIndex = -1;
            this.bindToGrid();
        }

        protected void btnaddtask_Click(object sender, EventArgs e)
        {
           
               this.Page.Response.Redirect("taskdetails.aspx");
        }

    }
}