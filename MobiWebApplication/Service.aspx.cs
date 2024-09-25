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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        public string UserActualNames;
        public string UserLoginName;
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);
            Label3.Text = cstTime.ToString();
            Label14.Text = cstTime.ToString();

            Label1.Text = Session["Next"].ToString();

            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (20)*from MGridViewMoneyExpensesDataGrid  order by idExpenses desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation.DataSource = dtt;
            gvInformation.DataBind();
            con.Close();



            ////string UserActualNames = ClassConstantInfo.ReturnUserActualNames;
            ////string UserLoginName = ClassConstantInfo.ReturnUserLogingName;
            //lblLoginName.Text = UserActualNames;
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void gvInformation_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {



            //con.Open();
            //SqlDataAdapter sqldd = new SqlDataAdapter("select top 10 * from WebRecoredVehicle1 where PlateNumber like '%" + TextBox2.Text + "%'", con);
            //DataTable dttt = new DataTable();
            //sqldd.Fill(dttt);
            //gvInformation.DataSource = dttt;
            //gvInformation.DataBind();
            //con.Close();

        }

        protected void lnk_OnClick(object sender, EventArgs e)
        {



            int idExpenses = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("ViewExpenseByID", con);
            sqld.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqld.SelectCommand.Parameters.AddWithValue("@idExpenses", idExpenses);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation.DataSource = dtt;
            gvInformation.DataBind();
            con.Close();
            //TextBox8.Text = dtt.Rows[0]["manufactureName"].ToString();
            TextBox6.Text = dtt.Rows[0]["amount"].ToString();
            TextBox7.Text = dtt.Rows[0]["DetailsExpense"].ToString();
            TextBox4.Text = dtt.Rows[0]["idExpenses"].ToString();
            //DropDownList1.SelectedValue = dtt.Rows[0]["IdManufacture"].ToString();






        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox6.Text == "")
            {
                Alert.Show("Please Enter Amount");
            }
            else if (TextBox7.Text == "")
            {
                Alert.Show("Please Enter Details");
            }

            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec insertExpenses '" + TextBox6.Text + "','" + TextBox7.Text + "','" + Label1.Text + "','" + Label3.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    Alert.Show("Saved Successfull!");

                    string ldd = "exec INSERTDailyCloseNew '" + Label14.Text + "','" + DropDownList14.SelectedValue + "'";
                    SqlCommand cmddd = new SqlCommand(ldd, con);
                    cmddd.Dispose();
                    cmddd.ExecuteNonQuery();

                    SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (20)*from MGridViewMoneyExpensesDataGrid  order by idExpenses desc", con);
                    DataTable dtt = new DataTable();
                    sqld.Fill(dtt);
                    gvInformation.DataSource = dtt;
                    gvInformation.DataBind();
                   
                    TextBox6.Text = TextBox7.Text = "";
                   

                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved");
                }
            }
        }

        void FillGridView()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();

            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (20)*from MGridViewMoneyExpensesDataGrid  order by idExpenses desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation.DataSource = dtt;
            gvInformation.DataBind();
            con.Close();
        }

        protected void gvInformationClient_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void gvInformationClient_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //con.Open();
            //SqlDataAdapter sqldd = new SqlDataAdapter("select top 10 * from WebCompanyVehiclesView1 ORDER BY idClient desc", con);
            //DataTable dttt = new DataTable();
            //sqldd.Fill(dttt);
            //gvInformation.DataSource = dttt;
            //gvInformation.DataBind();
            //con.Close();

            //TextBox6.Text = TextBox7.Text= "";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffCredit.aspx");
        }

        protected void Button2_Click2(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Service.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServedVehicle.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientCredit.aspx");
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }


    }
}

