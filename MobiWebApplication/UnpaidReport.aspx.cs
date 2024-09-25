using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Drawing;

namespace MobiWebApplication
{
    public partial class WebForm64 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        decimal TOTALM = 0;
        decimal PAIDM = 0;
        decimal REMAIN = 0;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridClientPayment2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button37_Click2(object sender, EventArgs e)
        {
            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = GridClientPayment2.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label6.Text = getId;
        }

        protected void GridClientPayment2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                TOTALM += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Total"));
                PAIDM += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Paid"));
                REMAIN += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Balance"));
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[3].Text = TOTALM.ToString("0,000");
                e.Row.Cells[4].Text = PAIDM.ToString("0,000");
                e.Row.Cells[5].Text = REMAIN.ToString("0,000");
            }

            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {

                    if (double.Parse(e.Row.Cells[3].Text) == double.Parse(e.Row.Cells[4].Text))
                    {
                        e.Row.Cells[6].ForeColor = Color.White;
                        e.Row.Cells[7].Text = "Paid";
                        e.Row.Cells[2].ForeColor = Color.White;
                        e.Row.Cells[7].ForeColor = Color.White;
                        e.Row.Cells[8].Visible = false;

                    }
                    if (double.Parse(e.Row.Cells[3].Text) > double.Parse(e.Row.Cells[4].Text))
                    {
                        e.Row.Cells[6].ForeColor = Color.Orange;
                        e.Row.Cells[7].Text = "NotPaid";
                        e.Row.Cells[2].ForeColor = Color.Orange;
                        e.Row.Cells[7].ForeColor = Color.Orange;

                    }
                }
            }
            catch (Exception ex)
            {

                return;

            }
        }

        protected void Button38_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportsMenu.aspx");
        }
    }
}