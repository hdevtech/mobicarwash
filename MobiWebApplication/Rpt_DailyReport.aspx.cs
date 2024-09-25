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
    public partial class WebForm18 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            Label1.Text = cstTime.ToShortDateString();

            //Label1.Text = DateTime.Now.Year.ToString();

            //con.Close();
            //con.Open();
            //string com1 = " SELECT dateAdded, Price, PayedCash, Payment, PlateNumber, brand, NameService, StaffName,  OperationDay FROM dbo.WebDetailsDataViewReports WHERE OperationDay = '" + Label1.Text + "')";


            //SqlDataAdapter da = new SqlDataAdapter(com1, con);
            //DataSet ds = new DataSet();
            //da.Fill(ds,"WebDetailsDataViewReports");
            //DataView dv = new DataView(ds.Tables["WebDetailsDataViewReports"]);
            //DataTable dt = ds.Tables["WebDetailsDataViewReports"];
            //DataRow dr = dt.Rows[0]; //new DataRow();

            //    if (dv.Count != 0)
            //    {

            //        //Panel1.Visible = true;
            //        //Panel4.Visible = false;
            //        da.Fill(dt);
            //        GridView1.DataSource = dt;
            //        GridView1.DataBind();
            //        //SqlDataSPaidBYDADE.DataBind();
            //        //FormView2.DataBind();
            //        GridView1.FooterRow.Cells[0].Text = "GRAND TOTAL::";
            //        //GridView1.FooterRow.Cells[1].Text = ":";
            //        //GridView2.FooterRow.Cells[4].Text = "Total Income=";
            //        GridView1.FooterRow.Cells[1].Text = dt.Compute("sum(Price)", "").ToString() + "Rwf";
            //        GridView1.FooterRow.Cells[2].Text = dt.Compute("sum(PayedCash)", "").ToString() + "Rwf";
            //    }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        decimal TotalSales = 0;
        decimal pydcash = 0;
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // if row type is DataRow, add ProductSales value to TotalSales
                TotalSales += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Price"));
                pydcash += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "PayedCash"));
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                // If row type is footer, show calculated total value
                // Since this example uses sales in dollars, I formatted output as currency
                //e.Row.Cells[8].Text = String.Format("{0:c}", TotalSales).ToString();
                e.Row.Cells[4].Text = TotalSales.ToString("0,000");
                e.Row.Cells[5].Text = pydcash.ToString("0,000");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

     
    }
}
