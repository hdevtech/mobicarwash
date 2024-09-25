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
    public partial class WebForm1 : System.Web.UI.Page
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            //Label2.Text = cstTime.ToShortDateString();

            Label9.Text =cstTime.ToString();
            if ((Session["Next"] != null))
            {

                Label3.Text = Session["Next"].ToString();

            }
            else
            {

                Response.Redirect("~/Default.aspx");
            }


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


            }


            //con.Open();
            //SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (20)* from WebRecoredVehicle1 order by idClient desc", con);
            //DataTable dtt = new DataTable();
            //sqld.Fill(dtt);
            //gvInformation.DataSource = dtt;
            //gvInformation.DataBind();
            //con.Close();

            //if (!IsPostBack)
            //{
            //    //Button2.Enabled = false;
            //    FillGridView();
            //}





        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Alert.Show("Please Enter Client Name");
            }
            else if (TextBox2.Text == "")
            {
                Alert.Show("Please Enter Client Contact");
            }
            else if (TextBox7.Text == "")
            {
                Alert.Show("Please write Vehicle Type");
            }
            else if (TextBox8.Text == "")
            {
                Alert.Show("Please write Vehicle Type");
            }
            else if (DropDownList1.Text == "----Select Category----")
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
                    string l = "exec insertCOmpanyCar '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + DropDownList1.SelectedValue + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    Alert.Show("Saved Successfull!");
                    FillGridView();

                    TextBox1.Text = TextBox2.Text = TextBox7.Text = TextBox8.Text = TextBox10.Text = "";
                }
                catch (Exception )
                {
                    Alert.Show("Not Saved?");
                }
            }



        }

        void FillGridView()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();

            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (20)*from WebRecoredVehicle1  order by idClient desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation.DataSource = dtt;
            gvInformation.DataBind();
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
            TextBox1.Text = dtt.Rows[0]["Name"].ToString();
            TextBox2.Text = dtt.Rows[0]["Phone"].ToString();
            TextBox7.Text = dtt.Rows[0]["brand"].ToString();
            TextBox8.Text = dtt.Rows[0]["PlateNumber"].ToString();
            TextBox10.Text = dtt.Rows[0]["idClient"].ToString();
            DropDownList1.SelectedValue = dtt.Rows[0]["IdManufacture"].ToString();


        }

        protected void gvPerson_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvInformation_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            con.Close();
            con.Open();
            string l = "exec DeleteRecordClientVehicle '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
        }

        protected void gvInformation_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvInformation.EditIndex = e.NewEditIndex;

        }

        protected void gvInformation_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }


        //{
        //    Clear();
        //protected void btnClear_Click(object sender, EventArgs e)
        //}
        //public void Clear()
        //{
        //    //hfidClient.Value = "";
        //    TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
        //    lblSuccessMessage.Text = lblErrorMessage.Text = "";
        //    Button1.Text = "Update";
        //    //Button2.Enabled = false;
        //    //SaveButton.Text = "Save";



        //}



        protected void Button2_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (3)*from WebRecoredVehicle1  where PlateNumber like '%" + TextBox9.Text + "%' order by idClient desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation.DataSource = dtt;
            gvInformation.DataBind();
            con.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string l = "exec UpdateCOmpanyCar '" + TextBox10.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + DropDownList1.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();


            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (20)*from WebRecoredVehicle1  order by idClient desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation.DataSource = dtt;
            gvInformation.DataBind();
            con.Close();

            TextBox1.Text = TextBox2.Text = TextBox7.Text = TextBox8.Text = TextBox10.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {


        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductSort.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServiceAll.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServiceMobile.aspx");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientCredit.aspx");
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string l = "exec insertStartDaily '" + Label9.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
            Alert.Show("a Day Started Successfull!");
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            //Response.Redirect("ConfirmService.aspx");
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConfirmService.aspx");
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string l = "exec DeleteRecordClientVehicle '" + TextBox10.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();

            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (3)*from WebRecoredVehicle1  order by idClient desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation.DataSource = dtt;
            gvInformation.DataBind();
            con.Close();
            TextBox1.Text = TextBox2.Text = TextBox7.Text = TextBox8.Text = TextBox10.Text = "";
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffCredit.aspx");
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            Response.Redirect("Service.aspx");
        }

        protected void Button19_Click(object sender, EventArgs e)
        {

        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            //Response.Redirect("ProductEntry.aspx");
        }

        protected void Button19_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ServiceAll.aspx");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }









    }
}
