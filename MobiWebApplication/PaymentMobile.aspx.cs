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
    public partial class WebForm44 : System.Web.UI.Page
    {
        decimal TotalSales = 0;
        decimal pydcash = 0;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            Label13.Text = cstTime.ToShortDateString();
            Label14.Text = cstTime.ToString();
            if ((Session["Next"] != null))
            {

                Label16.Text = Session["Next"].ToString();

            }
            else
            {

                Response.Redirect("~/Default.aspx");
            }

            con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (150)* from WebDetailsDataViewMobile where OperationDay='" + DropDownList14.SelectedValue + "' order by idRecord desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation.DataSource = dtt;
            gvInformation.DataBind();
            con.Close();

     
        }

        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int idRecord = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("ViewSevedVehicleByIDMobile", con);
            sqld.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqld.SelectCommand.Parameters.AddWithValue("@idRecord", idRecord);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation.DataSource = dtt;
            gvInformation.DataBind();
            con.Close();
            //TextBox1.Text = dtt.Rows[0]["Name"].ToString();
            TextBox17.Text = dtt.Rows[0]["PayedCash"].ToString();
            TextBox16.Text = dtt.Rows[0]["Price"].ToString();
            //TextBox6.Text = dtt.Rows[0]["manufactureName"].ToString();
            TextBox15.Text = dtt.Rows[0]["NameService"].ToString();
            TextBox10.Text = dtt.Rows[0]["PlateNumber"].ToString();
            //TextBox3.Text = dtt.Rows[0]["PlateNumber"].ToString();
            TextBox14.Text = dtt.Rows[0]["idRecord"].ToString();
            //DropDownList1.SelectedValue = dtt.Rows[0]["IdManufacture"].ToString();


        }
        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {

        }
      
          


       
        protected void Button12_Click(object sender, EventArgs e)
        {

        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string l = "exec UpdatePaymenyPrice '" + TextBox14.Text + "','" + TextBox17.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
            FillGridView();

        }
        void FillGridView()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();

            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (150)* from WebDetailsDataViewMobile where OperationDay='" + DropDownList14.SelectedValue + "' order by idRecord desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation.DataSource = dtt;
            gvInformation.DataBind();
            con.Close();
        }
        protected void gvInformation_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    TotalSales += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Price"));
            //    pydcash += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "PayedCash"));
            //}
            //else if (e.Row.RowType == DataControlRowType.Footer)
            //{
            //    e.Row.Cells[3].Text = TotalSales.ToString("0,000");
            //    e.Row.Cells[4].Text = pydcash.ToString("0,000");
            //}
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServiceMobile.aspx");
        }

        protected void gvInformation_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                TotalSales += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Price"));
                pydcash += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "PayedCash"));
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[1].Text = TotalSales.ToString("0,000");
                e.Row.Cells[2].Text = pydcash.ToString("0,000");
            }
        }
    }
}