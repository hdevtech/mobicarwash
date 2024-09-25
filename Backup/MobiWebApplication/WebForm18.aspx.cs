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
using System.Data;
namespace MobiWebApplication
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.Year.ToString();


            string qrytest = " SELECT dateAdded, Price, PayedCash, Payment, PlateNumber, brand, NameService, StaffName,  OperationDay FROM dbo.WebDetailsDataView WHERE OperationDay = '"+Label1.Text+"')";
                SqlDataAdapter da = new SqlDataAdapter(qrytest, con);
                DataSet ds = new DataSet();
                //DataTable dt = new DataTable();
                da.Fill(ds, "WebDetailsDataView");
                DataView dv = new DataView(ds.Tables["WebDetailsDataView"]);
                DataTable dt = new DataTable();
                if (dv.Count != 0)
                {

                    //Panel1.Visible = true;
                    //Panel4.Visible = false;
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    //SqlDataSPaidBYDADE.DataBind();
                    //FormView2.DataBind();
                    GridView1.FooterRow.Cells[0].Text = "GRAND TOTAL::";
                    //GridView1.FooterRow.Cells[1].Text = ":";
                    //GridView2.FooterRow.Cells[4].Text = "Total Income=";
                    GridView1.FooterRow.Cells[1].Text = dt.Compute("sum(Price)", "").ToString() + "Rwf";
                    GridView1.FooterRow.Cells[2].Text = dt.Compute("sum(PayedCash)", "").ToString() + "Rwf";
                }
        }

     
    }
}
