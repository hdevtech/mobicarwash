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
    public partial class WebForm36 : System.Web.UI.Page
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            //Label2.Text = cstTime.ToShortDateString();

            Label9.Text = cstTime.ToString();
            Label3.Text = Session["Next"].ToString();


            if (Page.IsPostBack == false)
            {
                //SqlConnection con = new SqlConnection(strconn);
                SqlCommand sqlcmd = new SqlCommand("Product_SELECT", con);
                sqlcmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
                DataTable DT = new DataTable();
                adapter.Fill(DT);

                DropDownList1.DataSource = DT;
                DropDownList1.DataTextField = "ProductName";
                DropDownList1.DataValueField = "idProduct";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "----Select Product----");


            }


            con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (5)* from ProductView order by IdProduct desc", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation.DataSource = dtt;
            gvInformation.DataBind();

            SqlDataAdapter sqldd = new SqlDataAdapter("SELECT top (5)* from ProductRoadView1 order by IdRoad desc", con);
            DataTable dttd = new DataTable();
            sqldd.Fill(dttd);
            gvInformation0.DataSource = dttd;
            gvInformation0.DataBind();
           
            con.Close();

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
                Alert.Show("Please Enter Product Names");
            }
        
            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec insertProducts  '" + TextBox1.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    Alert.Show("Saved Successfull!");
                    FillGridView();
                    Response.AppendHeader("Refresh", "00000.1");

                    TextBox1.Text = "";
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
           
            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (5)* from ProductView", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation.DataSource = dtt;
            gvInformation.DataBind();
            con.Close();
        }

        protected void lnkS_OnClick(object sender, EventArgs e)
        {
            int idProduct = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("ViewProductByID", con);
            sqld.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqld.SelectCommand.Parameters.AddWithValue("@idProduct", idProduct);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation.DataSource = dtt;
            gvInformation.DataBind();
            con.Close();
            //TextBox1.Text = dtt.Rows[0]["Name"].ToString();
            //TextBox2.Text = dtt.Rows[0]["Phone"].ToString();
            //TextBox7.Text = dtt.Rows[0]["brand"].ToString();
            TextBox1.Text = dtt.Rows[0]["ProductName"].ToString();
            TextBox10.Text = dtt.Rows[0]["idProduct"].ToString();
            //DropDownList1.SelectedValue = dtt.Rows[0]["idProduct"].ToString();


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
            //con.Close();
            //con.Open();
            //SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (3)*from WebRecoredVehicle1  where PlateNumber like '%" + TextBox9.Text + "%' order by idClient desc", con);
            //DataTable dtt = new DataTable();
            //sqld.Fill(dtt);
            //gvInformation.DataSource = dtt;
            //gvInformation.DataBind();
            //con.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Alert.Show("Please Enter Product Names");
            }
            else if (TextBox10.Text == "")
            {
                Alert.Show("Please Select Product");
            }
            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec UpdateProduct  '" + TextBox10.Text + "','" + TextBox1.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    Alert.Show("Updated Successfull!");
                    FillGridView();
                    Response.AppendHeader("Refresh", "00000.1");

                    TextBox1.Text = ""; TextBox10.Text = "";
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {


        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (TextBox11.Text == "")
            {
                Alert.Show("Please Enter Quantity");
            }
            else if (TextBox13.Text == "")
            {
                Alert.Show("Please Enter Price");
            }
            else if (DropDownList1.Text == "----Select Product----")
            {
                Alert.Show("Please Select Product");
            }
            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec insertStock '" + DropDownList1.SelectedValue + "','" + TextBox11.Text + "','" + Label9.Text + "','" + Label3.Text + "','" + TextBox13.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    Alert.Show("Saved Successfull!");
                    FillGridView0();
                    Response.AppendHeader("Refresh", "00000.1");


                                       

                    TextBox1.Text = "";
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }


        }

        void FillGridView0()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();

            SqlDataAdapter sqld = new SqlDataAdapter("SELECT top (5)* from ProductRoadView1", con);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation0.DataSource = dtt;
            gvInformation0.DataBind();
            con.Close();
        }

        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int IdRoad = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("ViewCreatedStOCK", con);
            sqld.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqld.SelectCommand.Parameters.AddWithValue("@IdRoad", IdRoad);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation0.DataSource = dtt;
            gvInformation0.DataBind();
            con.Close();
            //TextBox1.Text = dtt.Rows[0]["Name"].ToString();
            //TextBox2.Text = dtt.Rows[0]["Phone"].ToString();
            //TextBox7.Text = dtt.Rows[0]["brand"].ToString();
            TextBox11.Text = dtt.Rows[0]["qantityRoad"].ToString();
            TextBox12.Text = dtt.Rows[0]["IdRoad"].ToString();
            DropDownList1.SelectedValue = dtt.Rows[0]["idProduct"].ToString();


        }
        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServiceDeriveryForm.aspx");
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
            //con.Close();
            //con.Open();
            //string l = "exec insertStartDaily '" + Label9.Text + "'";
            //SqlCommand cmd = new SqlCommand(l, con);
            //cmd.Dispose();
            //cmd.ExecuteNonQuery();
            //Alert.Show("a Day Started Successfull!");
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
            if (TextBox12.Text == "")
            {
                Alert.Show("Please Select Product");
            }

            else if (DropDownList1.Text == "----Select Product----")
            {
                Alert.Show("Please Select Product");
            }
            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec deleteStock '" + TextBox12.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox11.Text + "','" + Label9.Text + "','" + Label3.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    Alert.Show("Deleted Successfull!");
                    FillGridView0();
                    Response.AppendHeader("Refresh", "00000.1");

                    TextBox1.Text = "";
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Deleted");
                }
            }

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

        protected void gvInformation0_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            
        }









    }
}
