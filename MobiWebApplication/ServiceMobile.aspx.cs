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
    public partial class WebForm41 : System.Web.UI.Page
    {
        decimal TotalSales = 0;
        decimal pydcash = 0;
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
            FormView10.DataBind();
            FormView10.Visible = true;

            if (Page.IsPostBack == false)
            {
                //SqlConnection con = new SqlConnection(strconn);
                SqlCommand sqlcmd = new SqlCommand("VehicleManufacture_SELECT", con);
                sqlcmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
                DataTable DT = new DataTable();
                adapter.Fill(DT);

                DropDownList13.DataSource = DT;
                DropDownList13.DataTextField = "manufactureName";
                DropDownList13.DataValueField = "IdManufacture";
                DropDownList13.DataBind();
                DropDownList13.Items.Insert(0, "----Select Category----");
                DropDownList10.Items.Insert(0, "----Select Service-----");
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

                DropDownList11.DataSource = DTT;
                DropDownList11.DataTextField = "StaffName";
                DropDownList11.DataValueField = "IDStaff";
                DropDownList11.DataBind();
                DropDownList11.Items.Insert(0, "----Select Washman----");


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

                DropDownList12.DataSource = DTTT;
                DropDownList12.DataTextField = "Payment";
                DropDownList12.DataValueField = "IDPayment";
                DropDownList12.DataBind();
                DropDownList12.Items.Insert(0, "----Select Payment----");
                //drpcity.Items.Insert(0, "SELECT");
            }

            if (Page.IsPostBack == false)
            {
                //SqlConnection con = new SqlConnection(strconn);
                SqlCommand sqlcmd = new SqlCommand("VehicleManufacture_SELECT", con);
                sqlcmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
                DataTable DT = new DataTable();
                adapter.Fill(DT);

                DropDownList26.DataSource = DT;
                DropDownList26.DataTextField = "manufactureName";
                DropDownList26.DataValueField = "IdManufacture";
                DropDownList26.DataBind();
                DropDownList26.Items.Insert(0, "----Select Category----");
                //DropDownList10.Items.Insert(0, "----Select Service-----");
                //DropDownList2.Items.Insert(0, "----Select Washman----");
                //DropDownList4.Items.Insert(0, "----Select Payment----");

                //drpcity.Items.Insert(0, "SELECT");
            }
        }

        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {

        }
        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int idClient = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("ViewClientVehicleByIDDDD", con);
            sqld.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqld.SelectCommand.Parameters.AddWithValue("@idClient", idClient);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation.DataSource = dtt;
            gvInformation.DataBind();
            con.Close();
            TextBox10.Text = dtt.Rows[0]["PlateNumber"].ToString();
            //TextBox11.Text = dtt.Rows[0]["brand"].ToString();
            //TextBox3.Text = dtt.Rows[0]["Name"].ToString();
            //TextBox12.Text = dtt.Rows[0]["manufactureName"].ToString();
            TextBox14.Text = dtt.Rows[0]["idClient"].ToString();
            ////TextBox8.Text = dtt.Rows[0]["IdService"].ToString();           
            DropDownList13.SelectedValue = dtt.Rows[0]["IdManufacture"].ToString();
            //DropDownList5.SelectedValue = dtt.Rows[0]["manufactureName"].ToString();


            if (DropDownList13.SelectedIndex != 0)
            {
                //SqlConnection sqlconn = new SqlConnection(strconn);
                SqlCommand sqlcmd = new SqlCommand("DeriveryService_SELECT", con);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.AddWithValue("@IdManufacture", Convert.ToInt32(DropDownList13.SelectedValue));

                SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
                DataTable DT = new DataTable();
                adapter.Fill(DT);

                DropDownList10.DataSource = DT;
                DropDownList10.DataTextField = "NameService";
                DropDownList10.DataValueField = "IdService";
                DropDownList10.DataBind();
                DropDownList10.Items.Insert(0, "----Select Service-----");


            }



        }
        protected void Button12_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter sqldd = new SqlDataAdapter("select top 1 * from WebRecoredVehicle2 where PlateNumber ='" + TextBox13.Text + "'", con);
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

        protected void Button13_Click(object sender, EventArgs e)
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

            else if (DropDownList10.Text == "----Select Service-----")
            {
                Alert.Show("Please Select Service");
            }
            else if (DropDownList11.Text == "----Select Washman----")
            {
                Alert.Show("Please Select Washman");
            }
            else if (DropDownList12.Text == "----Select Payment----")
            {
                Alert.Show("Please Select Payment");
            }
            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                   
                    string l = "exec ConfirmPrice '" + TextBox14.Text + "','" + DropDownList10.SelectedValue + "','" + DropDownList11.SelectedValue + "','" + DropDownList12.SelectedValue + "','" + Label15.Text + "','" + Label13.Text + "','" + Label14.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();

                    DropDownList25.DataBind();
                    GridView2.DataBind();
                    Button15.Visible = true;
                    Button13.Visible = false;
                    Invoice0.Visible = true;
                    Panel118.Visible = true;
                    FormView10.DataBind();

                    string ll = "exec InsertCreditNew '" + TextBox14.Text + "','" + DropDownList12.SelectedValue + "','" + DropDownList10.SelectedValue + "','" + Label14.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

                    
                    string ldd = "exec INSERTDailyCloseNew '" + DropDownList14.SelectedValue + "'";
                    SqlCommand cmddd = new SqlCommand(ldd, con);
                    cmddd.Dispose();
                    cmddd.ExecuteNonQuery();


                    SqlDataAdapter sqlddr = new SqlDataAdapter("select top 1 * from WebRepetition1 where PlateNumber ='" + TextBox13.Text + "'", con);
                    DataTable dtttr = new DataTable();
                    sqlddr.Fill(dtttr);
                    gvInformation1.DataSource = dtttr;
                    gvInformation1.DataBind();
                    con.Close();
                    TextBox10.Text =  TextBox14.Text = "";
                    //Response.Redirect("ServiceDeriveryForm.aspx");
                    Alert.Show("Submitted Successfull!");
                    //Response.AppendHeader("Refresh", "00000.1");
                   


                }
                catch (Exception)
                {
                    //Alert.Show("Not Saved?");
                }
            }
        
        }

        protected void gvInformation_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                TotalSales += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Price"));
                pydcash += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "PayedCash"));
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[4].Text = TotalSales.ToString("0,000");
                e.Row.Cells[5].Text = pydcash.ToString("0,000");
            }
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            Panel116.Visible = true;
            Panel2.Visible = false;
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaymentMobile.aspx");
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            if (TextBox72.Text == "")
            {
                Alert.Show("Please Enter Client Name");
            }
            else if (TextBox15.Text == "")
            {
                Alert.Show("Please Enter Client Contact");
            }
            else if (TextBox16.Text == "")
            {
                Alert.Show("Please write Vehicle Type");
            }
            else if (TextBox17.Text == "")
            {
                Alert.Show("Please write Vehicle plate No");
            }
            else if (DropDownList26.Text == "----Select Category----")
            {
                Alert.Show("Please Select Vehicle Category");
            }
            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                  
                    string l = "exec insertCOmpanyCar '" + TextBox72.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + DropDownList26.SelectedValue + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    Alert.Show("Saved Successfull!");
                    //Response.Redirect("~/RegistrationMobile.aspx");
                    Panel116.Visible = false;
                    Panel2.Visible = true;

                    //con.Open();
                    SqlDataAdapter sqldd = new SqlDataAdapter("select top 1 * from WebRecoredVehicle2 where PlateNumber ='" + TextBox17.Text + "'", con);
                    DataTable dttt = new DataTable();
                    sqldd.Fill(dttt);
                    gvInformation.DataSource = dttt;
                    gvInformation.DataBind();

                    TextBox72.Text = TextBox15.Text = TextBox16.Text = TextBox17.Text = "";
                }
                catch (Exception)
                {
                    Alert.Show("Not Saved?");
                }
            }

       }

        protected void Button15_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/ServiceMobile.aspx");
        }

     
    }
}