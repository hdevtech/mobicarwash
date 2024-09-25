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
    public partial class WebForm42 : System.Web.UI.Page
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        decimal AmountGiven = 0;
        decimal NewBalance = 0;
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
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    AmountGiven += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "amount"));
            //    NewBalance += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "newBalance"));
            //}
            //else if (e.Row.RowType == DataControlRowType.Footer)
            //{
            //    e.Row.Cells[4].Text = AmountGiven.ToString("0,000");
            //    //e.Row.Cells[4].Text = NewBalance.ToString("0,000");
            //}
        }

        protected void gvInformation_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("DailyStaffCredit.aspx");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string l = "exec INSERTDailyCloseNew '" + Label9.Text + "','" + DropDownList1.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
            Response.Redirect("~/Summary.aspx");
        }









    }
}
