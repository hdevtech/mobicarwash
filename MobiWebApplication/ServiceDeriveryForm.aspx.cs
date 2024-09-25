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
    public partial class WebForm21 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            Label13.Text = cstTime.ToShortDateString();
            Label14.Text = cstTime.ToString();
            if ((Session["Next"] != null))
            {

                Label15.Text = Session["Next"].ToString();

            }
            else
            {

                Response.Redirect("~/Default.aspx");
            }

            //con.Open();
            //SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (5)* from WebRecoredVehicle1 order by idClient desc", con);
            //DataTable dtt = new DataTable();
            //sqld.Fill(dtt);
            //gvInformation.DataSource = dtt;
            //gvInformation.DataBind();
            //con.Close();

            if (Page.IsPostBack == false)
            {
                //SqlConnection con = new SqlConnection(strconn);
                SqlCommand sqlcmd = new SqlCommand("VehicleManufacture_SELECT", con);
                sqlcmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
                DataTable DT = new DataTable();
                adapter.Fill(DT);

                DropDownList4.DataSource = DT;
                DropDownList4.DataTextField = "manufactureName";
                DropDownList4.DataValueField = "IdManufacture";
                DropDownList4.DataBind();
                DropDownList4.Items.Insert(0, "----Select Category----");
                DropDownList7.Items.Insert(0, "----Select Service-----");
                //DropDownList2.Items.Insert(0, "----Select Washman----");
                //DropDownList4.Items.Insert(0, "----Select Payment----");

                //drpcity.Items.Insert(0, "SELECT");
            }

            ////////////////////////////////////////////////////
            if (Page.IsPostBack == false)
            {
                //SqlConnection con = new SqlConnection(strconn);
                SqlCommand sqlcmdd = new SqlCommand("WashMan_SELECT", con);
                sqlcmdd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapterr = new SqlDataAdapter(sqlcmdd);
                DataTable DTT = new DataTable();
                adapterr.Fill(DTT);

                DropDownList8.DataSource = DTT;
                DropDownList8.DataTextField = "StaffName";
                DropDownList8.DataValueField = "IDStaff";
                DropDownList8.DataBind();
                DropDownList8.Items.Insert(0, "----Select Washman----");


            }
            ///////////////////////////////////////////////////

            if (Page.IsPostBack == false)
            {
                //SqlConnection con = new SqlConnection(strconn);
                SqlCommand sqlcmddd = new SqlCommand("Payment_SELECT", con);
                sqlcmddd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapterrr = new SqlDataAdapter(sqlcmddd);
                DataTable DTTT = new DataTable();
                adapterrr.Fill(DTTT);

                DropDownList9.DataSource = DTTT;
                DropDownList9.DataTextField = "Payment";
                DropDownList9.DataValueField = "IDPayment";
                DropDownList9.DataBind();
                DropDownList9.Items.Insert(0, "----Select Payment----");
                //drpcity.Items.Insert(0, "SELECT");
            }

        }

        protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList4.SelectedIndex != 0)
            {
                //SqlConnection sqlconn = new SqlConnection(strconn);
                SqlCommand sqlcmd = new SqlCommand("DeriveryService_SELECT", con);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.AddWithValue("@IdManufacture", Convert.ToInt32(DropDownList4.SelectedValue));

                SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
                DataTable DT = new DataTable();
                adapter.Fill(DT);

                DropDownList7.DataSource = DT;
                DropDownList7.DataTextField = "NameService";
                DropDownList7.DataValueField = "IdService";
                DropDownList7.DataBind();
                DropDownList7.Items.Insert(0, "----Select Service-----");


            }
        }

       

        
        
        protected void Button11_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlDataAdapter sqldd = new SqlDataAdapter("select top 1 * from WebRecoredVehicle1 where PlateNumber ='" + TextBox13.Text + "'", con);
            DataTable dttt = new DataTable();
            sqldd.Fill(dttt);
            gvInformation.DataSource = dttt;
            gvInformation.DataBind();


            SqlDataAdapter sqlddr = new SqlDataAdapter("select top 1 * from WebRepetition1 where PlateNumber ='" + TextBox13.Text + "'", con);
            DataTable dtttr = new DataTable();
            sqlddr.Fill(dtttr);
            gvInformation1.DataSource = dtttr;
            gvInformation1.DataBind();
            con.Close();

           

        }

        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int idClient = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("ViewClientVehicleByID", con);
            sqld.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqld.SelectCommand.Parameters.AddWithValue("@idClient", idClient);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation.DataSource = dtt;
            gvInformation.DataBind();
            con.Close();
            TextBox10.Text = dtt.Rows[0]["PlateNumber"].ToString();
            TextBox11.Text = dtt.Rows[0]["brand"].ToString();
            //TextBox3.Text = dtt.Rows[0]["Name"].ToString();
            TextBox12.Text = dtt.Rows[0]["manufactureName"].ToString();
            TextBox14.Text = dtt.Rows[0]["idClient"].ToString();
            ////TextBox8.Text = dtt.Rows[0]["IdService"].ToString();           
            DropDownList4.SelectedValue = dtt.Rows[0]["IdManufacture"].ToString();
            //DropDownList5.SelectedValue = dtt.Rows[0]["manufactureName"].ToString();


            if (DropDownList4.SelectedIndex != 0)
            {
                //SqlConnection sqlconn = new SqlConnection(strconn);
                SqlCommand sqlcmd = new SqlCommand("DeriveryService_SELECT", con);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.AddWithValue("@IdManufacture", Convert.ToInt32(DropDownList4.SelectedValue));

                SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
                DataTable DT = new DataTable();
                adapter.Fill(DT);

                DropDownList7.DataSource = DT;
                DropDownList7.DataTextField = "NameService";
                DropDownList7.DataValueField = "IdService";
                DropDownList7.DataBind();
                DropDownList7.Items.Insert(0, "----Select Service-----");


            }



        }
        protected void Button10_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();



            if (TextBox14.Text == "")
            {
                Alert.Show("Please Select Vehicle");
            }

            //else if (DropDownList5.SelectedValue == TextBox4.Text)
            //{
            //    Alert.Show("Please Vehicle Category");
            //}

            else if (DropDownList7.Text == "----Select Service-----")
            {
                Alert.Show("Please Select Service");
            }
            else if (DropDownList8.Text == "----Select Washman----")
            {
                Alert.Show("Please Select Washman");
            }
            else if (DropDownList9.Text == "----Select Payment----")
            {
                Alert.Show("Please Select Payment");
            }
            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    string l = "exec ConfirmPrice '" + TextBox14.Text + "','" + DropDownList7.SelectedValue + "','" + DropDownList8.SelectedValue + "','" + DropDownList9.SelectedValue + "','" + Label15.Text + "','" + Label13.Text + "','" + Label14.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();

                    string ll = "exec InsertCreditNew '" + TextBox14.Text + "','" + DropDownList9.SelectedValue + "','" + DropDownList7.SelectedValue + "','" + Label14.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();
                   

                    SqlDataAdapter sqlddr = new SqlDataAdapter("select top 1 * from WebRepetition1 where PlateNumber ='" + TextBox13.Text + "'", con);
                    DataTable dtttr = new DataTable();
                    sqlddr.Fill(dtttr);
                    gvInformation1.DataSource = dtttr;
                    gvInformation1.DataBind();
                    con.Close();
                    TextBox10.Text = TextBox11.Text = TextBox12.Text = TextBox14.Text = "";
                    //Response.Redirect("ServiceDeriveryForm.aspx");
                    Alert.Show("Submitted Successfull!");
                    Response.AppendHeader("Refresh", "00000.1");



                }
                catch (Exception )
                {
                    //Alert.Show("Not Saved?");
                }
            }
        
        }

        protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void TextBox13_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            
        }

        protected void TextBox14_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServedVehicle.aspx");
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm35.aspx");
        }

        protected void gvInformation_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServiceMobile.aspx");
        }
    }
}