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
    public partial class WebForm11 : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            //Label13.Text = cstTime.ToShortDateString();
            Label13.Text = cstTime.ToString();

            if ((Session["Next"] != null))
            {

                Label1.Text = Session["Next"].ToString();

            }
            else
            {

                Response.Redirect("~/Default.aspx");
            }

            con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT * from MGridViewCreditControlNew4", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            ClientCreditDisplay.DataSource = dtt;
            ClientCreditDisplay.DataBind();
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
            int idClient = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("ViewClientByID", con);
            sqld.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqld.SelectCommand.Parameters.AddWithValue("@idClient", idClient);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            ClientCreditDisplay.DataSource = dtt;
            ClientCreditDisplay.DataBind();
            con.Close();
            TextBox11.Text = dtt.Rows[0]["Name"].ToString();
            TextBox7.Text = dtt.Rows[0]["amount"].ToString();
            TextBox10.Text = dtt.Rows[0]["idClient"].ToString();
            TextBox8.Text = dtt.Rows[0]["PlateNumber"].ToString();
          
        




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
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT * from MGridViewCreditControlNew4", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            ClientCreditDisplay.DataSource = dtt;
            ClientCreditDisplay.DataBind();
            con.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string l = "exec insertPayment '" + TextBox10.Text + "','" + TextBox9.Text + "','" + Label13.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
            FillGridView();
            TextBox10.Text = TextBox9.Text = TextBox7.Text = TextBox11.Text = TextBox8.Text = "";
        }

        void FillGridView()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (120)*from MGridViewCreditControlNew4", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            ClientCreditDisplay.DataSource = dtt;
            ClientCreditDisplay.DataBind();
            con.Close();
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
            //Response.Redirect("StaffPayment.aspx");
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientCredit.aspx");
        }

        protected void ClientCreditDisplay_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Rpt_ClientCreditStatus.aspx");
        }
    }
}