﻿using System;
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
    public partial class WebForm29 : System.Web.UI.Page
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        decimal TotalSales = 0;
        //decimal pydcash = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            //Label2.Text = cstTime.ToShortDateString();

            Label9.Text = cstTime.ToString();



            if ((Session["Next"] != null))
            {

                Label10.Text = Session["Next"].ToString();

            }
            else
            {

                Response.Redirect("~/Default.aspx");
            }



        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }





        protected void lnk_OnClick(object sender, EventArgs e)
        {



        }

        protected void gvPerson_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvInformation_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }

        protected void gvInformation_RowEditing(object sender, GridViewEditEventArgs e)
        {


        }

        protected void gvInformation_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }


        //{
        //    Clear();
        //protected void btnClear_Click(object sender, EventArgs e)
        //}
        //public void Clear()
        //{
        //    //hfidClient.Value = "";
        //    TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
        //    lblSuccessMessage.Text = lblErrorMessage.Text = "";
        //    Button1.Text = "Update";
        //    //Button2.Enabled = false;
        //    //SaveButton.Text = "Save";



        //}



        protected void Button2_Click1(object sender, EventArgs e)
        {


        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {


        }

        protected void Button5_Click(object sender, EventArgs e)
        {

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

        protected void Button14_Click(object sender, EventArgs e)
        {
            //Response.Redirect("ConfirmService.aspx");
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConfirmService.aspx");
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button17_Click(object sender, EventArgs e)
        {

        }

        protected void Button18_Click(object sender, EventArgs e)
        {

        }

        protected void Button19_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void gvInformation_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // if row type is DataRow, add ProductSales value to TotalSales
                TotalSales += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "TotalCredit"));
                //pydcash += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "PayedCash"));
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                // If row type is footer, show calculated total value
                // Since this example uses sales in dollars, I formatted output as currency
                //e.Row.Cells[8].Text = String.Format("{0:c}", TotalSales).ToString();
                e.Row.Cells[3].Text = TotalSales.ToString("0,000");
                //e.Row.Cells[5].Text = pydcash.ToString("0,000");
            }
        }

        protected void gvInformation_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("StaffCreditStatus.aspx");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }









    }
}
