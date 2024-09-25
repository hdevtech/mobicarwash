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
    public partial class WebForm45 : System.Web.UI.Page
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
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            //Label2.Text = cstTime.ToShortDateString();
            //Label3.Text = cstTime.ToString();
            //if ((Session["Next"] != null))
            //{

            //    Label2.Text = Session["Next"].ToString();

            //}
            //else
            //{

            //    Response.Redirect("~/Default.aspx");
            //}

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
         
            Label1from0.Text = Dob.ToString();
            Label2to0.Text = Dob2.ToString();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //string Dob = DropDownListM3.SelectedValue + "/" + DropDownListD3.SelectedValue + "/" + DropDownListYEAR3.SelectedValue;
            //string Dob2 = DropDownListM4.SelectedValue + "/" + DropDownListD4.SelectedValue + "/" + DropDownListYEAR4.SelectedValue;
            //string Dob = DropDownListM3.SelectedValue + "/" + DropDownListD3.SelectedValue + "/" + DropDownListYEAR3.SelectedValue;
            //string Dob2 = DropDownListM4.SelectedValue + "/" + DropDownListD4.SelectedValue + "/" + DropDownListYEAR4.SelectedValue;
            //Label1from.Text = Dob.ToString();
            //Label2to.Text = Dob2.ToString();


        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownListD3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListM3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListYEAR3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListD4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListM4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListYEAR4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
           
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void FormView2_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void Button6_Click1(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //TotalSales += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Price"));
                PriceS += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Price"));
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                //e.Row.Cells[4].Text = TotalSales.ToString("0,000");
                e.Row.Cells[3].Text = PriceS.ToString("0,000");
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            if (TextBox54.Text == "")
            {
                //Alert.Show("Client Name");
                GridView9.DataBind();
                Labelsave0.Text = "Enter Farmer Name Plz";

            }
            else
            {
                con.Close();
                con.Open();
                string com = "SELECT DISTINCT Name  FROM CompanyVehicles where Name LIKE '%" + TextBox54.Text + "%'";
                SqlDataAdapter da = new SqlDataAdapter(com, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "CompanyVehicles");
                DataView dv = new DataView(ds.Tables["CompanyVehicles"]);
                DataTable dt = ds.Tables["CompanyVehicles"];
                if (dt.Rows.Count != 0)
                {
                    GridView9.DataSource = dt;

                    GridView9.DataBind();
                    GridView9.Visible = true;
                    //GridView1.Visible = false;
                  


                }

                else
                {
                    //Alert.Show(" Vehicle Plate No not found,Please Check well and try again!");
                    Labelsave0.Text = "not found !";


                }
            }
        }

        protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView9.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox6");



                if (checkbox.Checked)
                {
                    con.Close();
                    con.Open();


                    string Names = row.Cells[1].Text;

                    DropDownList1.SelectedValue = Names.ToString();

                }
            }
        }

        protected void CheckBox6_CheckedChanged1(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView9.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox6");



                if (checkbox.Checked)
                {
                    con.Close();
                    con.Open();


                    string Names = row.Cells[1].Text;

                    DropDownList1.SelectedValue = Names.ToString();

                }
            }
        }

        protected void GridView10_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //TotalSales += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Price"));
                Price += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "balance"));
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                //e.Row.Cells[4].Text = TotalSales.ToString("0,000");
                e.Row.Cells[4].Text = Price.ToString("0,000");
            }
        }

        protected void GridView9_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}