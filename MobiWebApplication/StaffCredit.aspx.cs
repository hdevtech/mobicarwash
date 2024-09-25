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
    public partial class WebForm6 : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);        

            Label3.Text = cstTime.ToString();
            Label14.Text = cstTime.ToString();
            Label1.Text = Session["Next"].ToString();

            con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT * from MGridViewCreditControlStaff2 order by TotalCredit desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            StaffCreditDisplay.DataSource = dtt;
            StaffCreditDisplay.DataBind();
            con.Close();

            if (Page.IsPostBack == false)
            {
                //SqlConnection con = new SqlConnection(strconn);
                SqlCommand sqlcmdd = new SqlCommand("WashMan_SELECT", con);
                sqlcmdd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapterr = new SqlDataAdapter(sqlcmdd);
                DataTable DTT = new DataTable();
                adapterr.Fill(DTT);

                DropDownList1.DataSource = DTT;
                DropDownList1.DataTextField = "StaffName";
                DropDownList1.DataValueField = "IDStaff";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "----Select Washman----");


            }
        }

        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int IDStaff = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("ViewStaffByID", con);
            sqld.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqld.SelectCommand.Parameters.AddWithValue("@IDStaff", IDStaff);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            StaffCreditDisplay.DataSource = dtt;
            StaffCreditDisplay.DataBind();
            con.Close();
            //TextBox11.Text = dtt.Rows[0]["StaffName"].ToString();
            //TextBox7.Text = dtt.Rows[0]["TotalCredit"].ToString();
            TextBox10.Text = dtt.Rows[0]["IDStaff"].ToString();
            //TextBox4.Text = dtt.Rows[0]["PlateNumber"].ToString();
            //TextBox5.Text = dtt.Rows[0]["idSales"].ToString();
         



        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Textcmnt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT * from MGridViewCreditControlStaff2 order by TotalCredit desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            StaffCreditDisplay.DataSource = dtt;
            StaffCreditDisplay.DataBind();
            con.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        { 
            con.Close();
            con.Open();

              if (TextBox9.Text == "")
            {
                Alert.Show("Please Enter Amount");
            }
            else if (TextBox8.Text == "")
            {
                Alert.Show("Please Enter Details");
            }
              else if (DropDownList1.Text == "----Select Staff----")
              {
                  Alert.Show("Please Select Staff Name");
              }

            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {

                    string l = "exec insertStaffCredit '" + TextBox9.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox8.Text + "','" + Label3.Text + "','" + Label1.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();

            string ldd = "exec INSERTDailyCloseNew '" + Label14.Text + "','" + DropDownList14.SelectedValue + "'";
            SqlCommand cmddd = new SqlCommand(ldd, con);
            cmddd.Dispose();
            cmddd.ExecuteNonQuery();

            SqlDataAdapter sqld = new SqlDataAdapter("SELECT * from MGridViewCreditControlStaff2 order by TotalCredit desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            StaffCreditDisplay.DataSource = dtt;
            StaffCreditDisplay.DataBind();
            Alert.Show("Saved Successfull!");
            TextBox8.Text = TextBox9.Text =  "";


                }
                catch (Exception )
                {
                    Alert.Show("Not Saved");
                }
            }
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConfirmService.aspx");
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServedVehicle.aspx");
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffCredit.aspx");
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffPayment.aspx");
        }

        protected void Button25_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewClientDailyCredit.aspx");
        }

        protected void Button19_Click(object sender, EventArgs e)
        {

        }

        protected void Button26_Click(object sender, EventArgs e)
        {
            //con.Close();
            //con.Open();

            //if (TextBox9.Text == "")
            //{
            //    Alert.Show("Please Enter Amount");
            //}
            //else if (TextBox8.Text == "")
            //{
            //    Alert.Show("Please Enter Details");
            //}
            //else if (TextBox10.Text == "")
            //{
            //    Alert.Show("Please Select Staff Name");
            //}

            //else
            //{
            //    //DateTime dtnow = DateTime.Now;
            //    //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
            //    try
            //    {

            //        string l = "exec insertStaffCredit22 '" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox8.Text + "','" + Label3.Text + "'";
            //        SqlCommand cmd = new SqlCommand(l, con);
            //        cmd.Dispose();
            //        cmd.ExecuteNonQuery();

            //        SqlDataAdapter sqld = new SqlDataAdapter("SELECT * from MGridViewCreditControlStaff2", con);
            //        DataTable dtt = new DataTable();
            //        sqld.Fill(dtt);
            //        StaffCreditDisplay.DataSource = dtt;
            //        StaffCreditDisplay.DataBind();
            //        Alert.Show("Saved Successfull!");
            //        TextBox8.Text = TextBox9.Text = TextBox7.Text = TextBox11.Text = "";


            //    }
            //    catch (Exception ex)
            //    {
            //        Alert.Show("Not Saved");
            //    }
            //}
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
