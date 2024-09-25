using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace MobiWebApplication
{
    public partial class WebForm15 : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (80)* from MStaffOperator order by IDStaff  desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            NewStaff.DataSource = dtt;
            NewStaff.DataBind();
            con.Close();

            if ((Session["Next"] != null))
            {

                Label3.Text = Session["Next"].ToString();

            }
            else
            {

                Response.Redirect("~/Default.aspx");
            }


        }

        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int IDStaff = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("ViewStaffByIDd", con);
            sqld.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqld.SelectCommand.Parameters.AddWithValue("@IDStaff", IDStaff);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            NewStaff.DataSource = dtt;
            NewStaff.DataBind();
            con.Close();
            //TextBox1.Text = dtt.Rows[0]["Name"].ToString();
            //TextBox3.Text = dtt.Rows[0]["PayedCash"].ToString();
            TextBox2.Text = dtt.Rows[0]["NID"].ToString();
            //TextBox6.Text = dtt.Rows[0]["manufactureName"].ToString();
            TextBox8.Text = dtt.Rows[0]["StaffName"].ToString();
            TextBox7.Text = dtt.Rows[0]["phone"].ToString();
            //TextBox3.Text = dtt.Rows[0]["PlateNumber"].ToString();
            TextBox1.Text = dtt.Rows[0]["IDStaff"].ToString();
            //DropDownList1.SelectedValue = dtt.Rows[0]["IdManufacture"].ToString();


        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string l = "exec insertStaffOperator '" + TextBox8.Text + "','" + TextBox7.Text + "','" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
            FillGridView();
        }

        void FillGridView()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (5)* from MStaffOperator order by IDStaff  desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            NewStaff.DataSource = dtt;
            NewStaff.DataBind();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (5)* from MStaffOperator where StaffName like '%" + TextBox9.Text + "%' order by IDStaff  desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            NewStaff.DataSource = dtt;
            NewStaff.DataBind();
            con.Close();
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }

        protected void Button12_Click(object sender, EventArgs e)
        {

        }

        protected void Button13_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConfirmService.aspx");
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ServedVehicle.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffCredit.aspx");
        }

        protected void Button6_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ClientCredit.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            //Response.Redirect("ServiceModification.aspx");
        }

        protected void ServerVehicle_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button11_Click1(object sender, EventArgs e)
        {
            //con.Close();
            //con.Open();

            //string ql = "alter view WebDetailsDataViewReports as SELECT        dateAdded, Price, PayedCash, Payment, PlateNumber, brand, NameService, StaffName, idRecord, idClient, manufactureName, Name,OperationDay FROM            dbo.WebDetailsDataView WHERE (OperationDay  ='" + DropDownList1.SelectedItem + "')";
            //SqlCommand cmd = new SqlCommand(ql, con);
            //cmd.ExecuteNonQuery();
            //cmd.Dispose();
            //Response.Redirect("HolderServedVehicle.aspx");
        }

        protected void Button10_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string l = "exec UpdateinsertStaffOperator '" + TextBox1.Text + "','" + TextBox8.Text + "','" + TextBox7.Text + "','" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
            FillGridViewc();
        }

        void FillGridViewc()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (15)* from MStaffOperator where IDStaff = '" + TextBox1.Text + "'", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            NewStaff.DataSource = dtt;
            NewStaff.DataBind();
            con.Close();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string l = "exec DeleteinsertStaffOperator '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
            FillGridViewc();
        }
        void FillGridViewcc()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (15)* from MStaffOperator where IDStaff = '" + TextBox1.Text + "'", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            NewStaff.DataSource = dtt;
            NewStaff.DataBind();
            con.Close();
        }
    }

}
