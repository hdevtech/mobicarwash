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
    public partial class WebForm23 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //GridView1.DataBind();
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);
            Label3.Text = cstTime.ToShortDateString();

            //if (!Page.IsPostBack)
            //{
            //    SqlCommand cmd = new SqlCommand();
            //    cmd.CommandText = "select distinct idRecord,OperationDay from ComboGridDailReport";
            //    cmd.Connection = con;
            //    DataTable Table1;
            //    Table1 = new DataTable("ComboGridDailReport");
            //    //creating a table named View_evaluate_company
            //    DataRow Row1;
            //    //declaring row for the table
            //    DataColumn column_id = new DataColumn("column_id");
            //    column_id.DataType = System.Type.GetType("System.String");
            //    //setting the datatype for the column
            //    Table1.Columns.Add(column_id);
            //    //adding the column to table
            //    DataColumn column_name = new DataColumn("column_name");
            //    column_name.DataType = System.Type.GetType("System.String");
            //    Table1.Columns.Add(column_name);
            //    try
            //    {
            //        con.Open();
            //        SqlDataReader reader = cmd.ExecuteReader();
            //        while (reader.Read())
            //        {
            //            Row1 = Table1.NewRow();
            //            //declaring a new row
            //            // Row1["column_id"] = reader.GetString(0);
            //            Row1["column_id"] = reader.GetInt32(0);
            //            //filling the row with values. Item property is used to set the field value.
            //            Row1["column_name"] = reader.GetString(1);

            //            //filling the row with values. adding FullName
            //            Table1.Rows.Add(Row1);
            //        }
            //        reader.Close();
            //    }
            //    finally
            //    {
            //        con.Close();
            //    }
            //    DropDownList1.DataSource = Table1;
            //    DropDownList1.DataTextField = "column_name";
            //    DropDownList1.DataValueField = "column_id";
            //    DropDownList1.DataBind();
            //    //DropDownList1.Items.Insert(0, "--Select Directorate--");
            //    //DropDownList1.SelectedIndex = 0;
            //}
        }
        decimal TotalSales = 0;
        decimal pydcash = 0;
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                TotalSales += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Price"));
                pydcash += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "PayedCash"));
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[4].Text = TotalSales.ToString("0,000");
                e.Row.Cells[5].Text = pydcash.ToString("0,000");
            }
        }
    }
}