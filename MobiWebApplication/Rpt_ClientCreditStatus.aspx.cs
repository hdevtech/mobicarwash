using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobiWebApplication
{
    public partial class WebForm19 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        decimal TotalSales = 0;
        //decimal pydcash = 0;
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // if row type is DataRow, add ProductSales value to TotalSales
                TotalSales += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "amount"));
                //pydcash += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "PayedCash"));
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                // If row type is footer, show calculated total value
                // Since this example uses sales in dollars, I formatted output as currency
                //e.Row.Cells[8].Text = String.Format("{0:c}", TotalSales).ToString();
                e.Row.Cells[5].Text = TotalSales.ToString("0,000");
                //e.Row.Cells[5].Text = pydcash.ToString("0,000");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}