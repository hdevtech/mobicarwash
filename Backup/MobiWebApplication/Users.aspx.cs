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
    public partial class WebForm5 : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=SmartAdimin; Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {


            //Label1.Text = Session["Next"].ToString();


            //if (Page.IsPostBack == false)
            //{
            //    //SqlConnection con = new SqlConnection(strconn);
            //    SqlCommand sqlcmd = new SqlCommand("VehicleManufacture_SELECT", con);
            //    sqlcmd.CommandType = CommandType.StoredProcedure;

            //    SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
            //    DataTable DT = new DataTable();
            //    adapter.Fill(DT);

            //    DropDownList1.DataSource = DT;
            //    DropDownList1.DataTextField = "manufactureName";
            //    DropDownList1.DataValueField = "IdManufacture";
            //    DropDownList1.DataBind();
            //    DropDownList1.Items.Insert(0, "----Select Category----");


            //}


            con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (3)* from UserTable  order by UserId desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformationUser.DataSource = dtt;
            gvInformationUser.DataBind();
            con.Close();

            if (!IsPostBack)
            {
                //Button2.Enabled = false;
                FillGridView();
            }





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
                Alert.Show("Please Enter User Name");
            }
            else if (TextBox2.Text == "")
            {
                Alert.Show("Please Enter Password");
            }
            else if (TextBox3.Text == "")
            {
                Alert.Show("Please Enter Function");
            }
            else if (TextBox4.Text == "")
            {
                Alert.Show("Please Enter Permission");
            }

            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec insertuser '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    Alert.Show("Saved Successfull!");
                    FillGridView();

                    TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }



        }

        void FillGridView()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();

            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (3)*from UserTable  order by UserId desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformationUser.DataSource = dtt;
            gvInformationUser.DataBind();
            con.Close();
        }

        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int UserId = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("ViewUserByID", con);
            sqld.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqld.SelectCommand.Parameters.AddWithValue("@UserId", UserId);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformationUser.DataSource = dtt;
            gvInformationUser.DataBind();
            con.Close();
            TextBox1.Text = dtt.Rows[0]["UserName"].ToString();
            TextBox2.Text = dtt.Rows[0]["UserPassWord"].ToString();
            TextBox3.Text = dtt.Rows[0]["role_name"].ToString();
            TextBox4.Text = dtt.Rows[0]["UserPemition"].ToString();
            TextBox5.Text = dtt.Rows[0]["UserId"].ToString();
            //DropDownList1.SelectedValue = dtt.Rows[0]["IdManufacture"].ToString();


        }

        protected void gvPerson_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvInformation_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            //con.Close();
            //con.Open();
            //string l = "exec DeleteRecordClientVehicle '" + TextBox1.Text + "'";
            //SqlCommand cmd = new SqlCommand(l, con);
            //cmd.Dispose();
            //cmd.ExecuteNonQuery();
        }

        protected void gvInformation_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvInformationUser.EditIndex = e.NewEditIndex;

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
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (3)*from UserTable  where UserName like '%" + TextBox6.Text + "%'", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformationUser.DataSource = dtt;
            gvInformationUser.DataBind();
            con.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string l = "exec UpdateSystemUser '" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();


            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (3)*from UserTable", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformationUser.DataSource = dtt;
            gvInformationUser.DataBind();
            con.Close();

            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {


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

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientCredit.aspx");
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffCredit.aspx");
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
            //con.Close();
            //con.Open();
            //string l = "exec DeleteRecordClientVehicle '" + TextBox5.Text + "'";
            //SqlCommand cmd = new SqlCommand(l, con);
            //cmd.Dispose();
            //cmd.ExecuteNonQuery();

            //SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (3)*from WebRecoredVehicle1  order by idClient desc", con);
            //DataTable dtt = new DataTable();
            //sqld.Fill(dtt);
            //gvInformation.DataSource = dtt;
            //gvInformation.DataBind();
            //con.Close();
            //TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }









    }
}
