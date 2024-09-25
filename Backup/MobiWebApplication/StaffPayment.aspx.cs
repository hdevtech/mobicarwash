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
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=SmartAdimin; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["Next"].ToString();

            con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT * from MGridViewCreditControlStaff2", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            StaffCreditDisplay.DataSource = dtt;
            StaffCreditDisplay.DataBind();
            con.Close();

            //if (!IsPostBack)
            //{
            //    //Button2.Enabled = false;
            //    //FillGridView();
            //}


            //{

            //    SqlCommand cmda = new SqlCommand("select IDStaff,StaffName from StaffOperator", con);
            //    con.Open();
            //    DropDownList2.DataSource = cmda.ExecuteReader();
            //    DropDownList2.DataTextField = "StaffName";
            //    DropDownList2.DataValueField = "IDStaff";
            //    DropDownList2.DataBind();
            //    con.Close();


            //}
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
            TextBox11.Text = dtt.Rows[0]["StaffName"].ToString();
            TextBox7.Text = dtt.Rows[0]["TotalCredit"].ToString();
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
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT * from MGridViewCreditControlStaff2", con);
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
            string l = "exec insertStaffCreditPayment '" + TextBox10.Text + "','" + TextBox7.Text + "','" + TextBox9.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
            Response.Redirect("StaffCreditHistoric.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConfirmService.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServedVehicle.aspx");
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffCredit.aspx");
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientCredit.aspx");
        }
    }
}