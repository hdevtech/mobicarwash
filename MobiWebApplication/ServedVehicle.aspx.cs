using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Drawing;

namespace MobiWebApplication
{
    public partial class WebForm54 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        decimal TotalInoice = 0;
        decimal PaidAmount = 0;
        decimal TOTALM = 0;
        decimal PAIDM = 0;
        decimal REMAIN = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            //Label2.Text = cstTime.ToShortDateString();
            Label3.Text = cstTime.ToString();

            if ((Session["role_ame"] != null))
            {

                Label2.Text = Session["UserName"].ToString();
                Label8.Text = Session["role_ame"].ToString();

            }
            else
            {

                Response.Redirect("~/Default.aspx");
            }
            Panel122.Visible = false;
            
        }

        protected void gvInformation3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {


        }



        protected void Button36_Click(object sender, EventArgs e)
        {

        }

        protected void Button37_Click(object sender, EventArgs e)
        {




            //ccccccccccccccccccccccccccccccccccccc
        }

        protected void Button38_Click(object sender, EventArgs e)
        {



        }

        protected void Button40_Click(object sender, EventArgs e)
        {
            //DropDownList1.DataBind();

            //PanelCommand.Visible = true;
            //PanelCommand0.Visible = true;
            //PanelList2.Visible = false;
            //PanelAll.Visible = true;
            //Drinks.Visible = false;

            //DropDownList1.DataBind();
            //gvInformation3.DataBind();
            //gvInformation4.DataBind();
            //gvInformation5.DataBind();

            //Response.Redirect("BarRestoOperator2.aspx");
        }

        protected void gvInformation3_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //try
            //{
            //    if (e.Row.RowType == DataControlRowType.DataRow)
            //    {
            //        if (double.Parse(e.Row.Cells[4].Text) <= 0)
            //        {
            //            e.Row.Cells[4].Text = "0";
            //            e.Row.Cells[4].ForeColor = Color.Red;

            //        }


            //    }
            //}
            //catch (Exception ex)
            //{
            //    return;

            //}

        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {



        }

        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {



        }

        protected void gvInformation5_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                TotalInoice += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Total"));

            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {

                e.Row.Cells[4].Text = TotalInoice.ToString("0,000");



            }
        }

        protected void Button41_Click(object sender, EventArgs e)
        {
            //PanelCommand.Visible = true;
            //PanelList2.Visible = false;
            //PanelAll.Visible = true;
            //Drinks.Visible = false;

            ////DropDownList1.DataBind();
            //gvInformation3.DataBind();
            //gvInformation4.DataBind();
            //gvInformation5.DataBind();
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button39_Click(object sender, EventArgs e)
        {

            //PanelCommand.Visible = true;
            //PanelList2.Visible = false;
            //PanelAll.Visible = true;
            //Drinks.Visible = false;


            //DropDownList1.DataBind();
            //gvInformation3.DataBind();
            //gvInformation4.DataBind();
            //gvInformation5.DataBind();







        }

        protected void Button42_Click(object sender, EventArgs e)
        {
            //Response.Redirect("WebForm33.aspx");
        }

        protected void Button43_Click(object sender, EventArgs e)
        {
            ////DropDownList1.DataBind();
            //gvInformation3.DataBind();
            //gvInformation4.DataBind();
            //gvInformation5.DataBind();


            //PanelCommand.Visible = false;
            //PanelList2.Visible = true;
            //PanelAll.Visible = true;
            //Drinks.Visible = true;
        }

        protected void CheckBox2_CheckedChanged1(object sender, EventArgs e)
        {
            foreach (GridViewRow row in gvInformation8.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");



                if (checkbox.Checked)
                {
                    con.Close();
                    con.Open();
                    string idClient = row.Cells[5].Text;
                    string IdManufacture = row.Cells[6].Text;
                    string PlateNumber = row.Cells[1].Text;
                    string brand = row.Cells[2].Text;
                    string NameClient = row.Cells[3].Text;



                    Label9.Text = idClient.ToString();
                    IdCategory.Text = IdManufacture.ToString();
                    TextBox19.Text = PlateNumber.ToString();
                    TextBox18.Text = brand.ToString();
                    TextBox17.Text = NameClient.ToString();







                }
            }
        }

        protected void COMMAND_ID0_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DropDownList35_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList35_DataBound(object sender, EventArgs e)
        {

        }

        protected void DropDownList35_DataBinding(object sender, EventArgs e)
        {

            ////CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");

            //DropDownList Drop_SelectedQnty = (DropDownList)e.Row.FindControl("DropDownList35");
            //CheckBox SelectedProdctCheckBox = (CheckBox)e.Row.FindControl("CheckBox2");
            //if (double.Parse(Drop_SelectedQnty.SelectedItem.Text) > 0)
            //{

            //    SelectedProdctCheckBox.Checked = true;
            //}
            //else
            //{
            //    SelectedProdctCheckBox.Checked = false;
            //}


        }

        protected void Button37_Click1(object sender, EventArgs e)
        {
            //con.Close();
            //con.Open();


            //Button imgbtn = sender as Button;
            //GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            //string getId = gvInformation7.DataKeys[row.RowIndex].Values[0].ToString();
            //System.Diagnostics.Debug.WriteLine(getId);
            //Label4.Text = getId;

            ////ooooooooooooooooooooooooo
            ////gvInformation3.DataBind();

            ////gvInformation5.DataBind();




            //PanelCommand0.Visible = false;
            ////PanelList2.Visible = true;
            //PanelAll.Visible = true;
            ////Drinks.Visible = true;
            ////FormView10.DataBind();
            ////ooooooooooooooooooooooo


        }

        protected void Button41_Click1(object sender, EventArgs e)
        {
            //con.Close();
            //con.Open();


            //Button imgbtn = sender as Button;
            //GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            //string getId = gvInformation7.DataKeys[row.RowIndex].Values[0].ToString();
            //System.Diagnostics.Debug.WriteLine(getId);
            //Label4.Text = getId;
            //Label7.Visible = true;
            //Label7.Text = getId;
            //DropDownList1.SelectedValue = getId;

            ////ooooooooooooooooooooooooo
            ////gvInformation3.DataBind();
            ////gvInformation5.DataBind();

            //PanelCommand0.Visible = true;
            ////PanelList2.Visible = true;
            //PanelAll.Visible = true;
            ////Drinks.Visible = true;
            ////Drinks0.Visible = true;
            ////FormView10.DataBind();
            ////Button37.Visible = true;
            ////ooooooooooooooooooooooo


        }

        protected void gvInformation6_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //try
            //{
            //    if (e.Row.RowType == DataControlRowType.DataRow)
            //    {
            //        if (double.Parse(e.Row.Cells[4].Text) <= 0)
            //        {
            //            e.Row.Cells[4].Text = "0";
            //            e.Row.Cells[4].ForeColor = Color.Red;

            //        }


            //    }
            //}
            //catch (Exception ex)
            //{
            //    return;

            //}
        }

        protected void Button42_Click1(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoOperator2.aspx");
        }

        protected void Button42_Click2(object sender, EventArgs e)
        {
            //Response.Redirect("BarRestoOperator.aspx");
        }

        protected void Button73_Click(object sender, EventArgs e)
        {

        }

        protected void gvInformation7_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //try
            //{
            //    if (e.Row.RowType == DataControlRowType.DataRow)
            //    {

            //        if (double.Parse(e.Row.Cells[4].Text) == double.Parse(e.Row.Cells[5].Text))
            //        {
            //            e.Row.Cells[6].ForeColor = Color.Orange;
            //            e.Row.Cells[6].Text = "Paid";
            //            e.Row.Cells[3].ForeColor = Color.Orange;

            //        }
            //    }
            //}
            //catch (Exception ex)
            //{

            //    return;

            //}
            ////========================================
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{

            //    PAIDM += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Paid"));

            //}
            //else if (e.Row.RowType == DataControlRowType.Footer)
            //{

            //    e.Row.Cells[5].Text = PAIDM.ToString("0,000");

            //}
        }

        protected void Button74_Click(object sender, EventArgs e)
        {

        }

        protected void Button77_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button40_Click1(object sender, EventArgs e)
        {

        }

        protected void gvInformation4_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //try
            //{
            //    if (e.Row.RowType == DataControlRowType.DataRow)
            //    {

            //        if (double.Parse(e.Row.Cells[4].Text) == double.Parse(e.Row.Cells[5].Text))
            //        {
            //            e.Row.Cells[6].ForeColor = Color.Orange;
            //            e.Row.Cells[6].Text = "Paid";
            //            e.Row.Cells[3].ForeColor = Color.Orange;

            //        }
            //    }
            //}
            //catch (Exception ex)
            //{

            //    return;

            //}
        }

        protected void Button78_Click(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoOperator2.aspx");
        }

        protected void Button93_Click(object sender, EventArgs e)
        {



            Response.Redirect("BarRestoOperator2.aspx");
        }

        protected void CheckBox71_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button88_Click(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoOperator2.aspx");
        }

        protected void Button94_Click(object sender, EventArgs e)
        {



        }

        protected void Button40_Click2(object sender, EventArgs e)
        {




        }

        protected void Button78_Click1(object sender, EventArgs e)
        {

        }

        protected void Button41_Click2(object sender, EventArgs e)
        {
            //con.Close();
            //con.Open();


            //Button imgbtn = sender as Button;
            //GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            //string getId = gvInformation4.DataKeys[row.RowIndex].Values[0].ToString();
            //System.Diagnostics.Debug.WriteLine(getId);
            //Label7.Text = getId;

            //string ll = "exec BillardCreateCommandCancel '" + Label7.Text + "'";
            //SqlCommand cmdd = new SqlCommand(ll, con);
            //cmdd.Dispose();
            //cmdd.ExecuteNonQuery();                           
            //gvInformation4.DataBind();
            //gvInformation5.DataBind();
            //gvInformation4.Visible = true;
            //gvInformation5.Visible = true;



        }

        protected void Button79_Click(object sender, EventArgs e)
        {

            TextBox11.Visible = true;
            Button80.Visible = true;
            Button81.Visible = true;
            //Button79.Visible = false;

        }

        protected void Button80_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string com = "SELECT top 1  Name, Phone, brand, PlateNumber, manufactureName,  idClient, IdManufacture FROM WebRecoredVehicle1  where PlateNumber LIKE '%" + TextBox16.Text + "%'";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WebRecoredVehicle1");
            DataView dv = new DataView(ds.Tables["WebRecoredVehicle1"]);
            DataTable dt = ds.Tables["WebRecoredVehicle1"];
            if (dt.Rows.Count != 0)
            {
                gvInformation8.DataSource = dt;

                gvInformation8.DataBind();
                gvInformation8.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }
        }

        protected void Button81_Click(object sender, EventArgs e)
        {
          
            Panel112.Visible = true;
            Panel122.Visible = false;
            Panel128.Visible = false;
           
         
        }

        protected void Button82_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button89_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button93_Click1(object sender, EventArgs e)
        {
           
        }

        protected void Button94_Click1(object sender, EventArgs e)
        {
           
        }

        protected void Button95_Click(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList14_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button89_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            if (TextBox12.Text == "")
            {
                Alert.Show("Please Enter Client Name");
            }
            else if (TextBox13.Text == "")
            {
                Alert.Show("Please Enter Client Contact");
            }
            else if (TextBox14.Text == "")
            {
                Alert.Show("Please write Vehicle Type");
            }
            else if (TextBox15.Text == "")
            {
                Alert.Show("Please write Vehicle plate No");
            }
            //else if (DropDownList17.Text == "----Select Category----")
            //{
            //    Alert.Show("Please Select Vehicle Category");
            //}
            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();

                    string l = "exec insertCOmpanyCar '" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + DropDownList17.SelectedValue + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    Alert.Show("Saved Successfull!");

                    string com = "SELECT top 1  Name, Phone, brand, PlateNumber, manufactureName,  idClient, IdManufacture FROM WebRecoredVehicle1  where PlateNumber LIKE '%" + TextBox15.Text + "%'";
                    SqlDataAdapter da = new SqlDataAdapter(com, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "WebRecoredVehicle1");
                    DataView dv = new DataView(ds.Tables["WebRecoredVehicle1"]);
                    DataTable dt = ds.Tables["WebRecoredVehicle1"];
                    if (dt.Rows.Count != 0)
                    {
                        gvInformation8.DataSource = dt;

                        gvInformation8.DataBind();
                        gvInformation8.Visible = true;
                        Panel112.Visible = false;
                       


                    }
                }
                catch (Exception)
                {
                    Alert.Show("Not Saved?");
                }
            }

        }

        protected void CheckBox3_CheckedChanged1(object sender, EventArgs e)
        {
            foreach (GridViewRow row in gvInformation8.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox3");



                if (checkbox.Checked)
                {
                    con.Close();
                    con.Open();
                    string idClient = row.Cells[5].Text;
                    string IdManufacture = row.Cells[6].Text;
                    string PlateNumber = row.Cells[1].Text;
                    string brand = row.Cells[2].Text;
                    string NameClient = row.Cells[3].Text;



                    Label9.Text = idClient.ToString();
                    IdCategory.Text = IdManufacture.ToString();
                    TextBox19.Text = PlateNumber.ToString();
                    TextBox18.Text = brand.ToString();
                    TextBox17.Text = NameClient.ToString();







                }
            }
        }

        protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
        {
            if (Panel122.Visible == false)
            {
                Panel122.Visible = true;
                foreach (GridViewRow row in gvInformation8.Rows)
                {
                    CheckBox checkbox = (CheckBox)row.FindControl("CheckBox6");



                    if (checkbox.Checked)
                    {
                        con.Close();
                        con.Open();
                        string idClient = row.Cells[5].Text;
                        string IdManufacture = row.Cells[6].Text;
                        string PlateNumber = row.Cells[1].Text;
                        string brand = row.Cells[2].Text;
                        string NameClient = row.Cells[3].Text;


                        Label9.Text = idClient.ToString();
                        IdCategory.Text = IdManufacture.ToString();
                        TextBox19.Text = PlateNumber.ToString();
                        TextBox18.Text = brand.ToString();
                        TextBox17.Text = NameClient.ToString();






                    }

                }
            }
            else
            {
                Panel122.Visible = false;
              
            }
        }

        protected void Button90_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            //Panel122.Visible = true;

            string l = "exec ConfirmPrice '" + Label9.Text + "','" + DropDownList20.SelectedValue + "','" + DropDownList19.SelectedValue + "','" + DropDownList18.SelectedValue + "','" + Label2.Text + "','" + Label3.Text + "','" + Label3.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();



            string ll = "exec InsertCreditNew '" + Label9.Text + "','" + DropDownList18.SelectedValue + "','" + DropDownList20.SelectedValue + "','" + Label3.Text + "'";
            SqlCommand cmdd = new SqlCommand(ll, con);
            cmdd.Dispose();
            cmdd.ExecuteNonQuery();


            string ldd = "exec INSERTDailyCloseNew '" + DropDownList14.SelectedValue + "'";
            SqlCommand cmddd = new SqlCommand(ldd, con);
            cmddd.Dispose();
            cmddd.ExecuteNonQuery();

            Alert.Show("Submitted Successfull!");

            DropDownList25.DataBind();
            gvInformation8.DataBind();
            Button15.Visible = true;
            Button90.Visible = false;
            Panel127.Visible = true;
            Panel122.Visible = false;
            //DataList1.DataBind();
            //DataList1.Visible = true;




        }

        protected void Button15_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/ServedVehicle.aspx");
        }

        protected void Button91_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            //Panel122.Visible = true;

            string l = "exec ConfirmPrice '" + Label9.Text + "','" + DropDownList20.SelectedValue + "','" + DropDownList19.SelectedValue + "','" + DropDownList18.SelectedValue + "','" + Label2.Text + "','" + Label3.Text + "','" + Label3.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();



            string ll = "exec InsertCreditNew '" + Label9.Text + "','" + DropDownList18.SelectedValue + "','" + DropDownList20.SelectedValue + "','" + Label3.Text + "'";
            SqlCommand cmdd = new SqlCommand(ll, con);
            cmdd.Dispose();
            cmdd.ExecuteNonQuery();


            string ldd = "exec INSERTDailyCloseNew '" + DropDownList14.SelectedValue + "'";
            SqlCommand cmddd = new SqlCommand(ldd, con);
            cmddd.Dispose();
            cmddd.ExecuteNonQuery();

            Alert.Show("Submitted Successfull!");

            DropDownList25.DataBind();
            gvInformation8.DataBind();
            Button15.Visible = true;
            Button90.Visible = false;
            Panel127.Visible = true;
            Panel122.Visible = false;
            //DataList1.DataBind();
            //DataList1.Visible = true;
        }
    }





}