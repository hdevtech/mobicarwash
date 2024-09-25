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
    public partial class WebForm12 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=SmartAdimin; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["Next"].ToString();

            if (Page.IsPostBack == false)
            {
                //SqlConnection con = new SqlConnection(strconn);
                SqlCommand sqlcmddd = new SqlCommand("Payment_SELECT", con);
                sqlcmddd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapterrr = new SqlDataAdapter(sqlcmddd);
                DataTable DTTT = new DataTable();
                adapterrr.Fill(DTTT);

                DropDownList2.DataSource = DTTT;
                DropDownList2.DataTextField = "Payment";
                DropDownList2.DataValueField = "IDPayment";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, "----Select Payment----");
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

                DropDownList3.DataSource = DT;
                DropDownList3.DataTextField = "manufactureName";
                DropDownList3.DataValueField = "IdManufacture";
                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, "----Select Category----");
                DropDownList1.Items.Insert(0, "----Select Service-----");
                //drpcity.Items.Insert(0, "SELECT");
            }


            if (Page.IsPostBack == false)
            {
                //SqlConnection con = new SqlConnection(strconn);
                SqlCommand sqlcmdd = new SqlCommand("WashMan_SELECT", con);
                sqlcmdd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapterr = new SqlDataAdapter(sqlcmdd);
                DataTable DTT = new DataTable();
                adapterr.Fill(DTT);

                DropDownList4.DataSource = DTT;
                DropDownList4.DataTextField = "StaffName";
                DropDownList4.DataValueField = "IDStaff";
                DropDownList4.DataBind();
                DropDownList4.Items.Insert(0, "----Select Washman----");               
                //drpcity.Items.Insert(0, "SELECT");
            }


        }

        protected void Button10_Click(object sender, EventArgs e)
        {
        
        }
        

        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int idRecord = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("ViewSevedVehicleByIDModi", con);
            sqld.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqld.SelectCommand.Parameters.AddWithValue("@idRecord", idRecord);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvServedModi.DataSource = dtt;
            gvServedModi.DataBind();
            con.Close();
           
            //TextBox3.Text = dtt.Rows[0]["PayedCash"].ToString();
            TextBox2.Text = dtt.Rows[0]["manufactureName"].ToString();         
            TextBox7.Text = dtt.Rows[0]["brand"].ToString();
            TextBox8.Text = dtt.Rows[0]["PlateNumber"].ToString();    
            TextBox10.Text = dtt.Rows[0]["idRecord"].ToString();
            TextBox11.Text = dtt.Rows[0]["idClient"].ToString();          
            DropDownList2.SelectedValue = dtt.Rows[0]["IDPayment"].ToString();
            DropDownList4.SelectedValue = dtt.Rows[0]["IDStaff"].ToString();
            DropDownList3.SelectedValue = dtt.Rows[0]["IdManufacture"].ToString();

            if (DropDownList3.SelectedIndex != 0)
            {
                //SqlConnection sqlconn = new SqlConnection(strconn);
                SqlCommand sqlcmd = new SqlCommand("DeriveryService_SELECT", con);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.AddWithValue("@IdManufacture", Convert.ToInt32(DropDownList3.SelectedValue));

                SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
                DataTable DT = new DataTable();
                adapter.Fill(DT);

                DropDownList1.DataSource = DT;
                DropDownList1.DataTextField = "NameService";
                DropDownList1.DataValueField = "IdService";
                DropDownList1.DataBind();
                //DropDownList1.Items.Insert(0, "----Select Service----");

            }






        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            
            if (TextBox10.Text == "")
            {
                Alert.Show("Please Select Vehicle");
            }

            else if (DropDownList3.SelectedValue == TextBox2.Text)
            {
                Alert.Show("Please Select Vehicle Category");
            }
                           
            else if (DropDownList1.Text == "----Select Service-----")
            {
                Alert.Show("Please Select Service");
            }
            else if (DropDownList4.Text == "----Select Washman----")
            {
                Alert.Show("Please Select Washman");
            }
            else if (DropDownList2.Text == "----Select Payment----")
            {
                Alert.Show("Please Select Payment");
            }
            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
            string l = "exec ConfirmServiceUpdate '" + TextBox10.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + TextBox11.Text + "','" + Label1.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
            FillGridView();

                }
                catch (Exception ex)
                {
                    Alert.Show("Not Updated?");
                }
            }
            
        }

        void FillGridView()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT * from WebDetailsDataViewModi1  where idRecord = '" + TextBox10.Text + "'", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvServedModi.DataSource = dtt;
            gvServedModi.DataBind();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (120)* from WebDetailsDataViewModi1 order by idRecord desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            con.Open();
            gvServedModi.DataSource = dtt;
            gvServedModi.DataBind();
            con.Close();
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConfirmService.aspx");
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ServedVehicle.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffCredit.aspx");
        }

        protected void Button6_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ClientCredit.aspx");
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList3.SelectedIndex != 0)
            {
                //SqlConnection sqlconn = new SqlConnection(strconn);
                SqlCommand sqlcmd = new SqlCommand("DeriveryService_SELECT", con);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.AddWithValue("@IdManufacture", Convert.ToInt32(DropDownList3.SelectedValue));

                SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
                DataTable DT = new DataTable();
                adapter.Fill(DT);

                DropDownList1.DataSource = DT;
                DropDownList1.DataTextField = "NameService";
                DropDownList1.DataValueField = "IdService";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "----Select Service----");

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button12_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (150)* from WebDetailsDataViewModi1 where PlateNumber like '%" + TextBox9.Text + "%'", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvServedModi.DataSource = dtt;
            gvServedModi.DataBind();
            con.Close();
        }

        protected void TextBox9_TextChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (150)* from WebDetailsDataViewModi1 where PlateNumber like '%" + TextBox9.Text + "%'", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvServedModi.DataSource = dtt;
            gvServedModi.DataBind();
            con.Close();
        }

       
    }

}
