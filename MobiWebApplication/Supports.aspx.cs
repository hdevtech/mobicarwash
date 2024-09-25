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
    public partial class WebForm17 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);       

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

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewStaff.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("PriceChange.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Users.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            //Response.Redirect("PriceChange.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServiceDeriveryForm.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServedVehicle.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientCredit.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffCredit.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServiceModificationAdmin.aspx");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Service.aspx");
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            //con.Close();
            //con.Open();
           

            //string ll = "exec INSERTDailyCloseNew '" + Label3.Text + "'";
            //SqlCommand cmdl = new SqlCommand(ll, con);
            //cmdl.Dispose();
            //cmdl.ExecuteNonQuery();
            ////Response.Redirect("DailySummary.aspx");


            //SqlDataAdapter sqld = new SqlDataAdapter("SELECT top 1 * from DailyCloseCloseClose", con);
            //DataTable dtt = new DataTable();
            //sqld.Fill(dtt);
            //SummaryView.DataSource = dtt;
            //SummaryView.DataBind();
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            Response.Redirect("WiewServedVehicleByDay.aspx");
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewClientCredit.aspx");
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewServedVehicle.aspx");
        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Rpt_ClientCreditStatus.aspx");
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewStaffCreditStatus.aspx");
        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            //Response.Redirect("StaffCreditStatus.aspx");
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewServedVehicleCredit.aspx");
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportsMenu.aspx");
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            Response.Redirect("ExpenseReportss.aspx");
        }

        protected void Button25_Click(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoManagerWe.aspx");
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewClientDailyCredit.aspx");
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            //Response.Redirect("DailyStaffCredit.aspx");
        }

        protected void Button27_Click(object sender, EventArgs e)
        {

            Response.Redirect("StaffCreditHistoric.aspx");
        }

        protected void Button26_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffCreditHistoric.aspx");
        }

        protected void Button28_Click(object sender, EventArgs e)
        {
            //Response.Redirect("ViewStock.aspx");
        }

        protected void Button29_Click(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoOperator.aspx");
        }

        protected void Button30_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientCreditStatus.aspx");
        }

        protected void Button31_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string l = "exec INSERTDailyCloseNew '" + Label9.Text + "','" + DropDownList1.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
            Response.Redirect("Summary.aspx");
        }

        protected void Button32_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm20.aspx");
        }
    }
}
