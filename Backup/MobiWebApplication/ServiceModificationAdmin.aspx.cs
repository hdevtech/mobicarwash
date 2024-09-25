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
    public partial class WebForm13 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=SmartAdimin; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (150)* from WebDetailsDataView2 order by idRecord desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvServed.DataSource = dtt;
            gvServed.DataBind();
            con.Close();

            if (!Page.IsPostBack)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select distinct idRecord,OperationDay from ComboGridDailReport";
                cmd.Connection = con;
                DataTable Table1;
                Table1 = new DataTable("ComboGridDailReport");
                //creating a table named View_evaluate_company
                DataRow Row1;
                //declaring row for the table
                DataColumn column_id = new DataColumn("column_id");
                column_id.DataType = System.Type.GetType("System.String");
                //setting the datatype for the column
                Table1.Columns.Add(column_id);
                //adding the column to table
                DataColumn column_name = new DataColumn("column_name");
                column_name.DataType = System.Type.GetType("System.String");
                Table1.Columns.Add(column_name);
                try
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Row1 = Table1.NewRow();
                        //declaring a new row
                        // Row1["column_id"] = reader.GetString(0);
                        Row1["column_id"] = reader.GetInt32(0);
                        //filling the row with values. Item property is used to set the field value.
                        Row1["column_name"] = reader.GetString(1);

                        //filling the row with values. adding FullName
                        Table1.Rows.Add(Row1);
                    }
                    reader.Close();
                }
                finally
                {
                    con.Close();
                }
                DropDownList1.DataSource = Table1;
                DropDownList1.DataTextField = "column_name";
                DropDownList1.DataValueField = "column_id";
                DropDownList1.DataBind();
                //DropDownList1.Items.Insert(0, "--Select Directorate--");
                //DropDownList1.SelectedIndex = 0;
            }
        }

        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int idRecord = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("ViewSevedVehicleByIDDelete", con);
            sqld.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqld.SelectCommand.Parameters.AddWithValue("@idRecord", idRecord);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvServed.DataSource = dtt;
            gvServed.DataBind();
            con.Close();
            //TextBox1.Text = dtt.Rows[0]["Name"].ToString();
            //TextBox3.Text = dtt.Rows[0]["PayedCash"].ToString();
            TextBox2.Text = dtt.Rows[0]["manufactureName"].ToString();          
            TextBox7.Text = dtt.Rows[0]["brand"].ToString();
            TextBox8.Text = dtt.Rows[0]["PlateNumber"].ToString();
            //TextBox3.Text = dtt.Rows[0]["PlateNumber"].ToString();
            TextBox1.Text = dtt.Rows[0]["idRecord"].ToString();
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
            string l = "exec DeleteRecord '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
            FillGridView();
        }

        void FillGridView()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (150)*from WebDetailsDataView2  order by idRecord desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvServed.DataSource = dtt;
            gvServed.DataBind();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (150)* from WebDetailsDataView2 order by idRecord desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvServed.DataSource = dtt;
            gvServed.DataBind();
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
            Response.Redirect("ServiceModification.aspx");
        }

        protected void ServerVehicle_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button11_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string ql = "alter view WebDetailsDataViewReports as SELECT        dateAdded, Price, PayedCash, Payment, PlateNumber, brand, NameService, StaffName, idRecord, idClient, manufactureName, Name,OperationDay FROM            dbo.WebDetailsDataView WHERE (OperationDay  ='" + DropDownList1.SelectedItem + "')";
            SqlCommand cmd = new SqlCommand(ql, con);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Response.Redirect("HolderServedVehicle.aspx");
        }

        protected void Button12_Click1(object sender, EventArgs e)
        {

        }

        protected void Button13_Click1(object sender, EventArgs e)
        {

        }

        protected void Button9_Click(object sender, EventArgs e)
        {

        }
    }

}
