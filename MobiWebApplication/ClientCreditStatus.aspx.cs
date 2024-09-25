using System;
using System.Collections.Generic;
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
    public partial class WebForm25 : System.Web.UI.Page
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        int annee;
        int mois;
        decimal TotalSales = 0;
        decimal pydcash = 0;
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
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            Label3.Text = cstTime.ToShortDateString();
            Label9.Text = cstTime.ToString();


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
            //DataList1.DataBind();






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
        }

        protected void gvInformation_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //Response.Redirect("ServedVehiclesCredits.aspx");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                TotalSales += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Price"));
                //pydcash += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "PayedCash"));
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[4].Text = TotalSales.ToString("0,000");
                //e.Row.Cells[5].Text = pydcash.ToString("0,000");
            }
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/ClientCreditStatus.aspx");
        }

        protected void Button4_Click2(object sender, EventArgs e)
        {
            Response.Redirect("InvoiceLong.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
        {
           
           
            con.Close();
            con.Open();

            foreach (GridViewRow row in GridView10.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox6");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {

                    string PlateNumber = row.Cells[2].Text;


                    TextBox13.Text = PlateNumber.ToString();
                  





                }
            }
         
        }

        protected void CheckBox6_CheckedChanged1(object sender, EventArgs e)
        {

            //foreach (GridViewRow row in GridView9.Rows)
            //{
            //    CheckBox checkbox = (CheckBox)row.FindControl("CheckBox6");



            //    if (checkbox.Checked)
            //    {
            //        con.Close();
            //        con.Open();


            //        string Name = row.Cells[1].Text;
            //        TextBox11.Text = Name.ToString();

            //        con.Close();
            //        con.Open();
            //        string com = "SELECT [PlateNumber], [brand], [NameService], [Repetition ],[Price], [PayedCash], [Payment], [dateRecorded],[userAdded] FROM [WebDetailsDataView] where (Name= '" + TextBox11.Text + "') AND (dateAdded between '" + Label1from.Text + "'and '" + Label2to.Text + "') and Payment='Credit'";
            //        SqlDataAdapter da = new SqlDataAdapter(com, con);
            //        DataSet ds = new DataSet();
            //        da.Fill(ds, "WebDetailsDataView");
            //        DataView dv = new DataView(ds.Tables["WebDetailsDataView"]);
            //        DataTable dt = ds.Tables["WebDetailsDataView"];
            //        if (dt.Rows.Count != 0)
            //        {
            //            GridView10.DataSource = dt;

            //            GridView10.DataBind();
            //            GridView10.Visible = true;
            //            //GridView1.Visible = false;
            //            DataList1.Visible = false;
            //            Panel12.Visible = false;



            //        }

            //    }
            //}

         
                
        }

        protected void CheckBox6_CheckedChanged2(object sender, System.EventArgs e)
        {
            //foreach (GridViewRow row in GridView1.Rows)
            //{
            //    CheckBox checkbox = (CheckBox)row.FindControl("CheckBox6");



            //    if (checkbox.Checked)
            //    {
            //        con.Close();
            //        con.Open();


            //        string PlateNumber = row.Cells[1].Text;

            //        TextBox9.Text = PlateNumber.ToString();


                    //string com = "SELECT distinct PlateNumber, brand, NameService, Price, PayedCash, Payment,Name,Phone, dateRecorded,userAdded FROM WebDetailsDataView where (PlateNumber ='" + TextBox9.Text + "')";
                    //SqlDataAdapter da = new SqlDataAdapter(com, con);
                    //DataSet ds = new DataSet();
                    //da.Fill(ds, "WebDetailsDataView");
                    //DataView dv = new DataView(ds.Tables["WebDetailsDataView"]);
                    //DataTable dt = ds.Tables["WebDetailsDataView"];
                    //if (dt.Rows.Count != 0)
                    //{

                    //    GridView2.DataBind();
                    //    GridView2.Visible = true;
                    //    DataList1.Visible = false;
                    //    Panel12.Visible = false;
                    //    Labelsave.Text = "";


                    //}
                    //else
                    //{
                    //    Alert.Show(" Vehicle Plate No not found,Please Check well and try again!");
                    //    Labelsave.Text = "Vehicle Plate No not found!";


                    //}

                
            
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            con.Close();
            con.Open();

            if (e.Item.ItemType == ListItemType.Item )
            {

                //int index = e.Item.ItemIndex;
                //GridView GridView1 = (GridView)DataList2.Items[index].FindControl("GridView1");
                GridView GridView1 = (GridView)e.Item.FindControl("GridView1");
               



                //try
                //{

                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    Label Label15PlateNo = (Label)e.Item.FindControl("Label15");
                    
                   
                    CheckBox checkbox = (CheckBox)GridView1.Rows[i].Cells[5].FindControl("CheckBox6");

                    if (checkbox.Checked)
                    {
                        DataList1.DataBind();
                        Label15PlateNo.Text = (GridView1.Rows[i].Cells[2]).Text;

                        
                    

                    }
                }

            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                //DropDownList1.Text = Label6date.Text.ToString();
                TextBox9.Text = e.CommandArgument.ToString();
                TextBox11.Text = e.CommandArgument.ToString();
                
                con.Close();
                con.Open();
                string com = "SELECT [PlateNumber], [brand], [Name], sum(Price) as Price  FROM [WebDetailsDataView] where (Name= '" + TextBox11.Text + "')  and Payment='Credit' GROUP BY [PlateNumber], [brand], [Name]";
                SqlDataAdapter da = new SqlDataAdapter(com, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "WebDetailsDataView");
                DataView dv = new DataView(ds.Tables["WebDetailsDataView"]);
                DataTable dt = ds.Tables["WebDetailsDataView"];
                if (dt.Rows.Count != 0)
                {
                    GridView10.DataSource = dt;

                    GridView10.DataBind();
                    GridView10.Visible = true;
                    //GridView1.Visible = false;
                    DataList1.Visible = false;
                    Panel12.Visible = false;



                }

            }
        }

        protected void GridView10_SelectedIndexChanged(object sender, System.EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, System.EventArgs e)
        {

        }

        protected void Button52_Click(object sender, System.EventArgs e)
        {
            Response.Redirect("ReportsMenu.aspx");
        }

      







    }
}
