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
    public partial class WebForm40 : System.Web.UI.Page
    {
        //decimal TotalSales = 0;
        //decimal pydcash = 0;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            Label13.Text = cstTime.ToShortDateString();
            Label14.Text = cstTime.ToString();
            Label11.Text = Session["Next"].ToString();

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

                DropDownList12.DataSource = DT;
                DropDownList12.DataTextField = "manufactureName";
                DropDownList12.DataValueField = "IdManufacture";
                DropDownList12.DataBind();
                DropDownList12.Items.Insert(0, "----Select Category----");
                //DropDownList10.Items.Insert(0, "----Select Service-----");
                //DropDownList2.Items.Insert(0, "----Select Washman----");
                //DropDownList4.Items.Insert(0, "----Select Payment----");

                //drpcity.Items.Insert(0, "SELECT");
            }

            ////////////////////////////////////////////////////
            //if (Page.IsPostBack == false)
            //{
            //    //SqlConnection con = new SqlConnection(strconn);
            //    SqlCommand sqlcmdd = new SqlCommand("WashMan_SELECT", con);
            //    sqlcmdd.CommandType = CommandType.StoredProcedure;

            //    SqlDataAdapter adapterr = new SqlDataAdapter(sqlcmdd);
            //    DataTable DTT = new DataTable();
            //    adapterr.Fill(DTT);

            //    DropDownList11.DataSource = DTT;
            //    DropDownList11.DataTextField = "StaffName";
            //    DropDownList11.DataValueField = "IDStaff";
            //    DropDownList11.DataBind();
            //    DropDownList11.Items.Insert(0, "----Select Washman----");


            //}
            ///////////////////////////////////////////////////

            //if (Page.IsPostBack == false)
            //{
            //    //SqlConnection con = new SqlConnection(strconn);
            //    SqlCommand sqlcmddd = new SqlCommand("Payment_SELECT", con);
            //    sqlcmddd.CommandType = CommandType.StoredProcedure;

            //    SqlDataAdapter adapterrr = new SqlDataAdapter(sqlcmddd);
            //    DataTable DTTT = new DataTable();
            //    adapterrr.Fill(DTTT);

            //    DropDownList12.DataSource = DTTT;
            //    DropDownList12.DataTextField = "Payment";
            //    DropDownList12.DataValueField = "IDPayment";
            //    DropDownList12.DataBind();
            //    DropDownList12.Items.Insert(0, "----Select Payment----");
            //    //drpcity.Items.Insert(0, "SELECT");
            //}
        }

        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {

        }
        protected void lnk_OnClick(object sender, EventArgs e)
        {
            //int idClient = Convert.ToInt32((sender as LinkButton).CommandArgument);
            //if (con.State == ConnectionState.Closed)
            //    con.Open();
            //SqlDataAdapter sqld = new SqlDataAdapter("ViewClientVehicleByIDDDD", con);
            //sqld.SelectCommand.CommandType = CommandType.StoredProcedure;
            //sqld.SelectCommand.Parameters.AddWithValue("@idClient", idClient);
            //DataTable dtt = new DataTable();
            //sqld.Fill(dtt);
            //gvInformation.DataSource = dtt;
            //gvInformation.DataBind();
            //con.Close();
            //TextBox10.Text = dtt.Rows[0]["PlateNumber"].ToString();
            ////TextBox11.Text = dtt.Rows[0]["brand"].ToString();
            ////TextBox3.Text = dtt.Rows[0]["Name"].ToString();
            ////TextBox12.Text = dtt.Rows[0]["manufactureName"].ToString();
            //TextBox14.Text = dtt.Rows[0]["idClient"].ToString();
            //////TextBox8.Text = dtt.Rows[0]["IdService"].ToString();           
            //DropDownList13.SelectedValue = dtt.Rows[0]["IdManufacture"].ToString();
            ////DropDownList5.SelectedValue = dtt.Rows[0]["manufactureName"].ToString();


            //if (DropDownList13.SelectedIndex != 0)
            //{
            //    //SqlConnection sqlconn = new SqlConnection(strconn);
            //    SqlCommand sqlcmd = new SqlCommand("DeriveryService_SELECT", con);
            //    sqlcmd.CommandType = CommandType.StoredProcedure;
            //    sqlcmd.Parameters.AddWithValue("@IdManufacture", Convert.ToInt32(DropDownList13.SelectedValue));

            //    SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
            //    DataTable DT = new DataTable();
            //    adapter.Fill(DT);

            //    DropDownList10.DataSource = DT;
            //    DropDownList10.DataTextField = "NameService";
            //    DropDownList10.DataValueField = "IdService";
            //    DropDownList10.DataBind();
            //    DropDownList10.Items.Insert(0, "----Select Service-----");


            //}



        }
        protected void Button12_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            if (TextBox10.Text == "")
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
                Alert.Show("Please write Vehicle Type");
            }
            else if (DropDownList12.Text == "----Select Category----")
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
                    string l = "exec insertCOmpanyCar '" + TextBox10.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + DropDownList12.SelectedValue + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    Alert.Show("Saved Successfull!");
                    Response.Redirect("~/RegistrationMobile.aspx");

                    TextBox10.Text = TextBox15.Text = TextBox16.Text = TextBox17.Text =  "";
                }
                catch (Exception )
                {
                    Alert.Show("Not Saved?");
                }
            }


        }
        void FillGridView()
        {
            //if (con.State == ConnectionState.Closed)
            //    con.Open();

            //SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (20)*from WebRecoredVehicle1  order by idClient desc", con);
            //DataTable dtt = new DataTable();
            //sqld.Fill(dtt);
            //gvInformation.DataSource = dtt;
            //gvInformation.DataBind();
            //con.Close();
        }
        protected void gvInformation_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    TotalSales += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Price"));
            //    pydcash += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "PayedCash"));
            //}
            //else if (e.Row.RowType == DataControlRowType.Footer)
            //{
            //    e.Row.Cells[3].Text = TotalSales.ToString("0,000");
            //    e.Row.Cells[4].Text = pydcash.ToString("0,000");
            //}
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServiceMobile.aspx");
        }
    }
}