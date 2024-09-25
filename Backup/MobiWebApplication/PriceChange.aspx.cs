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
    public partial class WebForm14 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=SmartAdimin; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
          


            if (Page.IsPostBack == false)
            {
                //SqlConnection con = new SqlConnection(strconn);
                SqlCommand sqlcmd = new SqlCommand("VehicleManufacture_SELECT", con);
                sqlcmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
                DataTable DT = new DataTable();
                adapter.Fill(DT);

                DropDownList1.DataSource = DT;
                DropDownList1.DataTextField = "manufactureName";
                DropDownList1.DataValueField = "IdManufacture";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "----Select Category----");
                //DropDownList1.Items.Insert(0, "----Select Service-----");
                //drpcity.Items.Insert(0, "SELECT");
            }

           
        }

        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int IdService = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("ViewPriceByService", con);
            sqld.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqld.SelectCommand.Parameters.AddWithValue("@IdService", IdService);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvPrice.DataSource = dtt;
            gvPrice.DataBind();
            con.Close();
            //TextBox1.Text = dtt.Rows[0]["Name"].ToString();
            //TextBox3.Text = dtt.Rows[0]["PayedCash"].ToString();
            TextBox2.Text = dtt.Rows[0]["Price"].ToString();
            //TextBox6.Text = dtt.Rows[0]["manufactureName"].ToString();
            //TextBox8.Text = dtt.Rows[0]["manufactureName"].ToString();
            TextBox7.Text = dtt.Rows[0]["NameService"].ToString();
            //TextBox3.Text = dtt.Rows[0]["PlateNumber"].ToString();
            TextBox1.Text = dtt.Rows[0]["IdService"].ToString();
            //DropDownList1.SelectedValue = dtt.Rows[0]["IdManufacture"].ToString();


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
            string l = "exec UpdatePrice '" + TextBox1.Text + "','" + TextBox3.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
            FillGridView();
        }

        void FillGridView()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (150)*from MGridViewServicePrice  where IdManufacture='" + DropDownList1.SelectedValue + "'", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvPrice.DataSource = dtt;
            gvPrice.DataBind();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (150)* from MGridViewServicePrice  where IdManufacture='" + DropDownList1.SelectedValue + "'", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvPrice.DataSource = dtt;
            gvPrice.DataBind();
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

        protected void Button10_Click(object sender, EventArgs e)
        {
            //Response.Redirect("ServiceModification.aspx");
        }

        protected void ServerVehicle_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button11_Click1(object sender, EventArgs e)
        {
            //con.Close();
            //con.Open();

            //string ql = "alter view WebDetailsDataViewReports as SELECT        dateAdded, Price, PayedCash, Payment, PlateNumber, brand, NameService, StaffName, idRecord, idClient, manufactureName, Name,OperationDay FROM            dbo.WebDetailsDataView WHERE (OperationDay  ='" + DropDownList1.SelectedItem + "')";
            //SqlCommand cmd = new SqlCommand(ql, con);
            //cmd.ExecuteNonQuery();
            //cmd.Dispose();
            //Response.Redirect("HolderServedVehicle.aspx");
        }

        protected void Button10_Click1(object sender, EventArgs e)
        {
         
            con.Close();
            con.Open();



            if (DropDownList1.Text == "----Select Category----")
            {
                Alert.Show("Please Select Category");
            }

          
            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (150)* from MGridViewServicePrice where IdManufacture='" + DropDownList1.SelectedValue + "'", con);
                    DataTable dtt = new DataTable();
                    sqld.Fill(dtt);
                    gvPrice.DataSource = dtt;
                    gvPrice.DataBind();
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }
           

        }
    }

}

