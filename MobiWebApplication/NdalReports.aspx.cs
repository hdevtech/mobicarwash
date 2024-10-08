﻿using System;
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
    public partial class WebForm48 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);

        int annee;
        int mois;

        decimal Price = 0;
        decimal PriceS = 0;

        private void mounthdays(int year, int mounth)
        {
            int j;
            //int nberDays = DateTime.DaysInMonth(year, mounth);
            int nberDays = 31;
            ArrayList days = new ArrayList();
            for (j = 1; j <= nberDays; j++)
            {
                days.Add(j);
            }

            //DropDownListD.DataSource = days;
            //DropDownListD.DataBind();
            DropDownListD4.DataSource = days;
            DropDownListD4.DataBind();
            DropDownListD3.DataSource = days;
            DropDownListD3.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            Label2.Text = cstTime.ToShortDateString();
            Label4.Text = cstTime.ToString();

            //if ((Session["Next"] != null))
            //{

            //    Label9.Text = Session["Next"].ToString();

            //}
            //else
            //{

            //    Response.Redirect("~/Default.aspx");
            //}

            con.Close();
            con.Open();

            if (!this.IsPostBack)
            {
                for (int i = Convert.ToInt32(DateTime.Now.Year) - 3; i <= Convert.ToInt32(DateTime.Now.Year); i++)
                {

                    DropDownListYEAR3.Items.Add(i.ToString());
                    DropDownListYEAR4.Items.Add(i.ToString());
                }



                DropDownListYEAR3.SelectedValue = DateTime.Now.Year.ToString();
                DropDownListYEAR4.SelectedValue = DateTime.Now.Year.ToString();


                for (int i = 1; i <= 12; i++)
                {

                    DropDownListM3.Items.Add(i.ToString());
                    DropDownListM4.Items.Add(i.ToString());
                }


                DropDownListM3.SelectedValue = DateTime.Now.Month.ToString();
                DropDownListM4.SelectedValue = DateTime.Now.Month.ToString();
                mounthdays(annee, mois);

                DropDownListD3.SelectedValue = Convert.ToString(DateTime.Now.Day);
                DropDownListD4.SelectedValue = Convert.ToString(DateTime.Now.Day);
                //DropDownListD4.SelectedValue = Convert.ToString(DateTime.Now.AddHours);
                //    //=====other date====
            }

            string Dob = DropDownListM3.SelectedValue + "/" + DropDownListD3.SelectedValue + "/" + DropDownListYEAR3.SelectedValue;
            string Dob2 = DropDownListM4.SelectedValue + "/" + DropDownListD4.SelectedValue + "/" + DropDownListYEAR4.SelectedValue;
            //string Dob = DropDownListM3.SelectedValue + "/" + DropDownListD3.SelectedValue + "/" + DropDownListYEAR3.SelectedValue;
            //string Dob2 = DropDownListM4.SelectedValue + "/" + DropDownListD4.SelectedValue + "/" + DropDownListYEAR4.SelectedValue;
            Label1from.Text = Dob.ToString();
            Label2to.Text = Dob2.ToString();



            //string com = "SELECT distinct PlateNumber, brand, NameService, Price, PayedCash, Payment,Name,Phone, dateRecorded,userAdded ,idRecord FROM WebDetailsDataView";
            //SqlDataAdapter da = new SqlDataAdapter(com, con);
            //DataSet ds = new DataSet();
            //da.Fill(ds, "WebDetailsDataView");
            //DataView dv = new DataView(ds.Tables["WebDetailsDataView"]);
            //DataTable dt = ds.Tables["WebDetailsDataView"];
            //if (dt.Rows.Count != 0)
            //{

            //    gvServed.DataBind();
            //    gvServed.Visible = true;



            //}
        }

        protected void Button36_Click(object sender, EventArgs e)
        {

        }

        protected void Button41_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button33_Click(object sender, EventArgs e)
        {
            //if (PanelClientMna.Visible == false)
            //{
            //    PanelDailyServedVehicle.Visible = false;
            //    PanelSTAFFDAILYCREDIT0.Visible = false;
            //    Panel48ALL.Visible = true;
            //    PanelSTAFFDAILYCREDIT.Visible = false;
            //    PanelSTAFFDAILYCREDIT1.Visible = false;
            //    PanelDAILYEXPENSES.Visible = false;
            //    PanelStaffCreditStatus.Visible = false;
            //    PanelChangePrice.Visible = false;
            //    PanelClientMna.Visible = true;
            //    PanelDelete.Visible = false;


            //}
            //else
            //{
            //    PanelDailyServedVehicle.Visible = true;
            //    PanelSTAFFDAILYCREDIT0.Visible = true;
            //    Panel48ALL.Visible = true;
            //    PanelSTAFFDAILYCREDIT.Visible = true;
            //    PanelSTAFFDAILYCREDIT1.Visible = true;
            //    PanelDAILYEXPENSES.Visible = true;
            //    PanelStaffCreditStatus.Visible = false;
            //    PanelChangePrice.Visible = false;
            //    PanelClientMna.Visible = false;
            //    AddUserNew.Visible = false;
            //    AddNewStaff.Visible = false;
            //    PanelDelete.Visible = false;

            //}
        }

        protected void Button35_Click(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {


        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }



        protected void Button3_Click1(object sender, EventArgs e)
        {

        }

        protected void Button38_Click(object sender, EventArgs e)
        {

        }

        protected void Button52_Click(object sender, EventArgs e)
        {

        }

        protected void CheckBox11_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox10_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button41_Click1(object sender, EventArgs e)
        {


        }

        protected void Button51_Click(object sender, EventArgs e)
        {

        }

        protected void Button53_Click(object sender, EventArgs e)
        {

        }

        protected void Button50_Click(object sender, EventArgs e)
        {

        }

        protected void Button54_Click(object sender, EventArgs e)
        {

        }

        protected void Button55_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {


        }

        protected void Button56_Click(object sender, EventArgs e)
        {

        }

        protected void CheckBox6_CheckedChanged1(object sender, EventArgs e)
        {

        }

        protected void CheckBox12_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click2(object sender, EventArgs e)
        {

        }

        protected void Button57_Click(object sender, EventArgs e)
        {


        }

        protected void Button37_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownList14_SelectedIndexChanged(object sender, EventArgs e)
        {
            string llll = "exec InsertStockStatus '" + DropDownList14.SelectedValue + "'";
            SqlCommand cmdddl = new SqlCommand(llll, con);
            cmdddl.Dispose();
            cmdddl.ExecuteNonQuery();
            FormView1.DataBind();
        }

        protected void Button47_Click(object sender, EventArgs e)
        {

        }

        protected void Button48_Click(object sender, EventArgs e)
        {

        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button60_Click(object sender, EventArgs e)
        {

        }

        protected void Button59_Click(object sender, EventArgs e)
        {


        }

        protected void Button60_Click1(object sender, EventArgs e)
        {


        }

        protected void Button34_Click(object sender, EventArgs e)
        {

        }

        protected void Button36_Click1(object sender, EventArgs e)
        {


        }

        protected void TextBox9_TextChanged(object sender, EventArgs e)
        {

        }

        protected void MonthlyReports_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button45_Click(object sender, EventArgs e)
        {

        }

        protected void Button45_Click1(object sender, EventArgs e)
        {

        }


    }
}