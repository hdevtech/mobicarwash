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
    public partial class WebForm46 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);

        int annee;
        int mois;

        decimal Price = 0;
        decimal PriceS = 0;

        private void mounthdays(int year, int mounth)
        {
            int j;
            //int nberDays = DateTime.DaysInMonth(year, mounth);
            int nberDays = 31;
            ArrayList days = new ArrayList();
            for (j = 1; j <= nberDays; j++)
            {
                days.Add(j);
            }

            //DropDownListD.DataSource = days;
            //DropDownListD.DataBind();
            DropDownListD4.DataSource = days;
            DropDownListD4.DataBind();
            DropDownListD3.DataSource = days;
            DropDownListD3.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            Label2.Text = cstTime.ToShortDateString();
            Label4.Text = cstTime.ToString();

            //if ((Session["Next"] != null))
            //{

            //    Label9.Text = Session["Next"].ToString();

            //}
            //else
            //{

            //    Response.Redirect("~/Default.aspx");
            //}

            con.Close();
            con.Open();

            if (!this.IsPostBack)
            {
                for (int i = Convert.ToInt32(DateTime.Now.Year) - 3; i <= Convert.ToInt32(DateTime.Now.Year); i++)
                {

                    DropDownListYEAR3.Items.Add(i.ToString());
                    DropDownListYEAR4.Items.Add(i.ToString());
                }



                DropDownListYEAR3.SelectedValue = DateTime.Now.Year.ToString();
                DropDownListYEAR4.SelectedValue = DateTime.Now.Year.ToString();


                for (int i = 1; i <= 12; i++)
                {

                    DropDownListM3.Items.Add(i.ToString());
                    DropDownListM4.Items.Add(i.ToString());
                }


                DropDownListM3.SelectedValue = DateTime.Now.Month.ToString();
                DropDownListM4.SelectedValue = DateTime.Now.Month.ToString();
                mounthdays(annee, mois);

                DropDownListD3.SelectedValue = Convert.ToString(DateTime.Now.Day);
                DropDownListD4.SelectedValue = Convert.ToString(DateTime.Now.Day);
                //DropDownListD4.SelectedValue = Convert.ToString(DateTime.Now.AddHours);
                //    //=====other date====
            }

            string Dob = DropDownListM3.SelectedValue + "/" + DropDownListD3.SelectedValue + "/" + DropDownListYEAR3.SelectedValue;
            string Dob2 = DropDownListM4.SelectedValue + "/" + DropDownListD4.SelectedValue + "/" + DropDownListYEAR4.SelectedValue;
            //string Dob = DropDownListM3.SelectedValue + "/" + DropDownListD3.SelectedValue + "/" + DropDownListYEAR3.SelectedValue;
            //string Dob2 = DropDownListM4.SelectedValue + "/" + DropDownListD4.SelectedValue + "/" + DropDownListYEAR4.SelectedValue;
            Label1from.Text = Dob.ToString();
            Label2to.Text = Dob2.ToString();



            //string com = "SELECT distinct PlateNumber, brand, NameService, Price, PayedCash, Payment,Name,Phone, dateRecorded,userAdded ,idRecord FROM WebDetailsDataView";
            //SqlDataAdapter da = new SqlDataAdapter(com, con);
            //DataSet ds = new DataSet();
            //da.Fill(ds, "WebDetailsDataView");
            //DataView dv = new DataView(ds.Tables["WebDetailsDataView"]);
            //DataTable dt = ds.Tables["WebDetailsDataView"];
            //if (dt.Rows.Count != 0)
            //{

            //    gvServed.DataBind();
            //    gvServed.Visible = true;



            //}
        }

        protected void Button36_Click(object sender, EventArgs e)
        {

        }

        protected void Button41_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            PanelDailyServedVehicle.Visible = true;
            PanelSTAFFDAILYCREDIT0.Visible = true;
            Panel48ALL.Visible = true;
            PanelSTAFFDAILYCREDIT.Visible = true;
            PanelSTAFFDAILYCREDIT1.Visible = true;
            PanelDAILYEXPENSES.Visible = true;
            PanelStaffCreditStatus.Visible = false;
            PanelChangePrice.Visible = false;
            PanelClientMna.Visible = false;
        }

        protected void Button33_Click(object sender, EventArgs e)
        {
            Response.Redirect("SMS.aspx");
        }

        protected void Button35_Click(object sender, EventArgs e)
        {
            if (PanelStaffCreditStatus.Visible == false)
            {
                PanelDailyServedVehicle.Visible = false;
                PanelSTAFFDAILYCREDIT0.Visible = false;
                Panel48ALL.Visible = true;
                PanelSTAFFDAILYCREDIT.Visible = false;
                PanelSTAFFDAILYCREDIT1.Visible = false;
                PanelDAILYEXPENSES.Visible = false;
                PanelStaffCreditStatus.Visible = true;
                PanelChangePrice.Visible = false;
                PanelClientMna.Visible = false;
                AddUserNew.Visible = false;
                AddNewStaff.Visible = false;
                PanelDelete.Visible = false;


            }
            else
            {
                PanelDailyServedVehicle.Visible = true;
                PanelSTAFFDAILYCREDIT0.Visible = true;
                Panel48ALL.Visible = true;
                PanelSTAFFDAILYCREDIT.Visible = true;
                PanelSTAFFDAILYCREDIT1.Visible = true;
                PanelDAILYEXPENSES.Visible = true;
                PanelStaffCreditStatus.Visible = false;
                PanelChangePrice.Visible = false;
                PanelClientMna.Visible = false;
                AddUserNew.Visible = false;
                AddNewStaff.Visible = false;
                PanelDelete.Visible = false;

            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {

            if (AddNewStaff.Visible == false)
            {
                PanelDailyServedVehicle.Visible = false;
                PanelSTAFFDAILYCREDIT0.Visible = false;
                Panel48ALL.Visible = true;
                PanelSTAFFDAILYCREDIT.Visible = false;
                PanelSTAFFDAILYCREDIT1.Visible = false;
                PanelDAILYEXPENSES.Visible = false;
                PanelStaffCreditStatus.Visible = false;
                PanelChangePrice.Visible = false;
                PanelClientMna.Visible = false;
                AddUserNew.Visible = false;
                AddNewStaff.Visible = true;
                PanelDelete.Visible = false;



            }
            else
            {
                PanelDailyServedVehicle.Visible = true;
                PanelSTAFFDAILYCREDIT0.Visible = true;
                Panel48ALL.Visible = true;
                PanelSTAFFDAILYCREDIT.Visible = true;
                PanelSTAFFDAILYCREDIT1.Visible = true;
                PanelDAILYEXPENSES.Visible = true;
                PanelStaffCreditStatus.Visible = false;
                PanelChangePrice.Visible = false;
                PanelClientMna.Visible = false;
                AddUserNew.Visible = false;
                AddNewStaff.Visible = false;
                PanelDelete.Visible = false;

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (AddUserNew.Visible == false)
            {
                PanelDailyServedVehicle.Visible = false;
                PanelSTAFFDAILYCREDIT0.Visible = false;
                Panel48ALL.Visible = true;
                PanelSTAFFDAILYCREDIT.Visible = false;
                PanelSTAFFDAILYCREDIT1.Visible = false;
                PanelDAILYEXPENSES.Visible = false;
                PanelStaffCreditStatus.Visible = false;
                PanelChangePrice.Visible = false;
                PanelClientMna.Visible = false;
                AddUserNew.Visible = true;
                AddNewStaff.Visible = false;




            }
            else
            {
                PanelDailyServedVehicle.Visible = true;
                PanelSTAFFDAILYCREDIT0.Visible = true;
                Panel48ALL.Visible = true;
                PanelSTAFFDAILYCREDIT.Visible = true;
                PanelSTAFFDAILYCREDIT1.Visible = true;
                PanelDAILYEXPENSES.Visible = true;
                PanelStaffCreditStatus.Visible = false;
                PanelChangePrice.Visible = false;
                PanelClientMna.Visible = false;
                AddUserNew.Visible = false;
                AddNewStaff.Visible = false;


            }
        }



        protected void Button3_Click1(object sender, EventArgs e)
        {
            //if (AddUserNew.Visible == false)
            //{
            //    PanelDailyServedVehicle.Visible = false;
            //    PanelSTAFFDAILYCREDIT0.Visible = false;
            //    Panel48ALL.Visible = true;
            //    PanelSTAFFDAILYCREDIT.Visible = false;
            //    PanelSTAFFDAILYCREDIT1.Visible = false;
            //    PanelDAILYEXPENSES.Visible = false;
            //    PanelStaffCreditStatus.Visible = false;
            //    PanelChangePrice.Visible = false;
            //    PanelClientMna.Visible = false;
            //    AddUserNew.Visible = true;
            //    AddNewStaff.Visible = false;
            //    PanelDelete.Visible = false;
            //    PanelDelete.Visible = false;




            //}
            //else
            //{
            //    PanelDailyServedVehicle.Visible = true;
            //    PanelSTAFFDAILYCREDIT0.Visible = true;
            //    Panel48ALL.Visible = true;
            //    PanelSTAFFDAILYCREDIT.Visible = true;
            //    PanelSTAFFDAILYCREDIT1.Visible = true;
            //    PanelDAILYEXPENSES.Visible = true;
            //    PanelStaffCreditStatus.Visible = false;
            //    PanelChangePrice.Visible = false;
            //    PanelClientMna.Visible = false;
            //    AddUserNew.Visible = false;
            //    AddNewStaff.Visible = false;
            //    PanelDelete.Visible = false;
            //    PanelDelete.Visible = false;

            //}
        }

        protected void Button38_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffCreditHistoric.aspx");
        }

        protected void Button52_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientCreditStatus.aspx");
        }

        protected void CheckBox11_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            foreach (GridViewRow row in gvInformation3.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox11");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {

                    string UserId = row.Cells[6].Text;
                    string UserName = row.Cells[2].Text;
                    string UserPassWord = row.Cells[3].Text;
                    string role_name = row.Cells[4].Text;
                    string UserPemition = row.Cells[5].Text;





                    TextBox52.Text = UserId.ToString();
                    TextBox54.Text = UserName.ToString();
                    TextBox55.Text = UserPassWord.ToString();
                    DropDownList18.Text = role_name.ToString();
                    DropDownList19.Text = UserPemition.ToString();


                }
            }
        }

        protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            foreach (GridViewRow row in gvInformation1.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox6");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {

                    string idServices = row.Cells[5].Text;
                    string Category = row.Cells[2].Text;
                    string service = row.Cells[3].Text;
                    string OldPrice = row.Cells[4].Text;




                    TextBox45.Text = idServices.ToString();
                    TextBox26.Text = Category.ToString();
                    TextBox44.Text = service.ToString();
                    TextBox37.Text = OldPrice.ToString();
                    AlertLabel7.Text = "";


                }
            }
        }

        protected void CheckBox10_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            foreach (GridViewRow row in gvInformation2.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox10");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {

                    string IDStaff = row.Cells[5].Text;
                    string StaffName = row.Cells[2].Text;
                    string phone = row.Cells[3].Text;
                    string NID = row.Cells[4].Text;




                    TextBox47.Text = IDStaff.ToString();
                    TextBox56.Text = StaffName.ToString();
                    TextBox49.Text = phone.ToString();
                    TextBox50.Text = NID.ToString();


                }
            }
        }

        protected void Button41_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            foreach (GridViewRow row in gvInformation1.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox6");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {

                    string idServices = row.Cells[5].Text;
                    string Category = row.Cells[2].Text;
                    string service = row.Cells[3].Text;
                    string OldPrice = row.Cells[4].Text;




                    TextBox45.Text = idServices.ToString();
                    TextBox26.Text = Category.ToString();
                    TextBox44.Text = service.ToString();
                    TextBox37.Text = OldPrice.ToString();


                    string l = "exec UpdatePrice '" + TextBox45.Text + "','" + TextBox43.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    gvInformation1.DataBind();
                    AlertLabel7.Text = "Updated Successfull!";

                    TextBox45.Text = "";
                    TextBox37.Text = "";








                }
            }

        }

        protected void Button51_Click(object sender, EventArgs e)
        {
            if (TextBox54.Text == "")
            {

                AlertLabel9.Text = "Plz Enter UserName";
            }
            else if (TextBox55.Text == "")
            {

                AlertLabel9.Text = "Plz Enter Password";
            }

            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec insertuser '" + TextBox54.Text + "','" + TextBox55.Text + "','" + DropDownList18.Text + "','" + DropDownList19.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    AlertLabel9.Text = "Submitted Successfull!";
                    gvInformation3.DataBind();


                    TextBox54.Text = TextBox55.Text = "";
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }

        }

        protected void Button53_Click(object sender, EventArgs e)
        {
            if (TextBox54.Text == "")
            {

                AlertLabel9.Text = "Plz Enter UserName";
            }
            else if (TextBox55.Text == "")
            {

                AlertLabel9.Text = "Plz Enter Password";
            }
            else if (TextBox52.Text == "")
            {

                AlertLabel9.Text = "Plz Select User";
            }


            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec UpdateSystemUser '" + TextBox52.Text + "','" + TextBox54.Text + "','" + TextBox55.Text + "','" + DropDownList18.Text + "','" + DropDownList19.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    AlertLabel9.Text = "Updated Successfull!";
                    gvInformation3.DataBind();


                    TextBox52.Text = TextBox54.Text = TextBox55.Text = "";
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }

        }

        protected void Button50_Click(object sender, EventArgs e)
        {
            if (TextBox56.Text == "")
            {

                AlertLabel8.Text = "Plz Enter Names";
            }
            else if (TextBox49.Text == "")
            {

                AlertLabel8.Text = "Plz Enter Contact";
            }

            else if (TextBox50.Text == "")
            {

                AlertLabel8.Text = "Plz Enter NID";
            }

            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec insertStaffOperator '" + TextBox56.Text + "','" + TextBox49.Text + "','" + TextBox50.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    AlertLabel8.Text = "Submitted Successfull!";


                    TextBox54.Text = TextBox55.Text = "";
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }
        }

        protected void Button54_Click(object sender, EventArgs e)
        {
            if (TextBox56.Text == "")
            {

                AlertLabel8.Text = "Plz Enter Names";
            }
            else if (TextBox49.Text == "")
            {

                AlertLabel8.Text = "Plz Enter Contact";
            }

            else if (TextBox50.Text == "")
            {

                AlertLabel8.Text = "Plz Enter NID";
            }

            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec insertStaffOperator '" + TextBox56.Text + "','" + TextBox49.Text + "','" + TextBox50.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    AlertLabel8.Text = "Submitted Successfull!";
                    gvInformation2.DataBind();


                    TextBox54.Text = TextBox55.Text = "";
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }

        }

        protected void Button55_Click(object sender, EventArgs e)
        {
            if (TextBox56.Text == "")
            {

                AlertLabel8.Text = "Plz Enter Names";
            }
            else if (TextBox49.Text == "")
            {

                AlertLabel8.Text = "Plz Enter Contact";
            }

            else if (TextBox50.Text == "")
            {

                AlertLabel8.Text = "Plz Enter NID";
            }
            else if (TextBox47.Text == "")
            {

                AlertLabel8.Text = "Plz Select Staff";
            }


            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec UpdateinsertStaffOperator '" + TextBox47.Text + "','" + TextBox56.Text + "','" + TextBox49.Text + "','" + TextBox50.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    AlertLabel8.Text = "Update Successfull!";
                    gvInformation2.DataBind();


                    TextBox47.Text = TextBox56.Text = TextBox50.Text = TextBox49.Text = "";
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {


        }

        protected void Button56_Click(object sender, EventArgs e)
        {
            if (TextBox9.Text == "")
            {
                //Alert.Show("Client Name");
                GridView9.DataBind();
                AlertLabel10.Text = "Enter Plate No Plz";

            }
            else
            {
                con.Close();
                con.Open();
                string com = "SELECT TOP 5  PlateNumber FROM CompanyVehicles where PlateNumber LIKE '%" + TextBox9.Text + "%'";
                SqlDataAdapter da = new SqlDataAdapter(com, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "CompanyVehicles");
                DataView dv = new DataView(ds.Tables["CompanyVehicles"]);
                DataTable dt = ds.Tables["CompanyVehicles"];
                if (dt.Rows.Count != 0)
                {
                    GridView9.DataSource = dt;

                    GridView9.DataBind();
                    GridView9.Visible = true;
                    //GridView1.Visible = false;



                }

                else
                {
                    //Alert.Show(" Vehicle Plate No not found,Please Check well and try again!");
                    AlertLabel10.Text = "not found !";


                }
            }
        }

        protected void CheckBox6_CheckedChanged1(object sender, EventArgs e)
        {

        }

        protected void CheckBox12_CheckedChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView9.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox12");



                if (checkbox.Checked)
                {
                    con.Close();
                    con.Open();


                    string PlateNumber = row.Cells[1].Text;

                    TextBox9.Text = PlateNumber.ToString();


                    string com = "SELECT distinct PlateNumber, brand, NameService, Price, PayedCash, Payment,Name,Phone, dateRecorded,userAdded FROM WebDetailsDataView where (PlateNumber ='" + TextBox9.Text + "')";
                    SqlDataAdapter da = new SqlDataAdapter(com, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "WebDetailsDataView");
                    DataView dv = new DataView(ds.Tables["WebDetailsDataView"]);
                    DataTable dt = ds.Tables["WebDetailsDataView"];
                    if (dt.Rows.Count != 0)
                    {

                        GridView10.DataBind();
                        GridView10.Visible = true;

                        PanelDailyServedVehicle.Visible = false;
                        PanelSTAFFDAILYCREDIT0.Visible = false;
                        Panel48ALL.Visible = true;
                        PanelSTAFFDAILYCREDIT.Visible = false;
                        PanelSTAFFDAILYCREDIT1.Visible = false;
                        PanelDAILYEXPENSES.Visible = false;
                        PanelStaffCreditStatus.Visible = false;
                        PanelChangePrice.Visible = false;
                        PanelClientMna.Visible = false;
                        AddUserNew.Visible = false;
                        AddNewStaff.Visible = false;
                        Panel7.Visible = true;
                        Label54.Visible = true;





                    }
                    else
                    {

                        AlertLabel10.Text = "Not Found";



                    }

                }
            }
        }

        protected void Button2_Click2(object sender, EventArgs e)
        {
            PanelDailyServedVehicle.Visible = true;
            PanelSTAFFDAILYCREDIT0.Visible = true;
            Panel48ALL.Visible = true;
            PanelSTAFFDAILYCREDIT.Visible = true;
            PanelSTAFFDAILYCREDIT1.Visible = true;
            PanelDAILYEXPENSES.Visible = true;
            PanelStaffCreditStatus.Visible = false;
            PanelChangePrice.Visible = false;
            PanelClientMna.Visible = false;
        }

        protected void Button57_Click(object sender, EventArgs e)
        {


        }

        protected void Button37_Click(object sender, EventArgs e)
        {
            //if (PanelChangePrice.Visible == false)
            //{
            //    PanelDailyServedVehicle.Visible = false;
            //    PanelSTAFFDAILYCREDIT0.Visible = false;
            //    Panel48ALL.Visible = true;
            //    PanelSTAFFDAILYCREDIT.Visible = false;
            //    PanelSTAFFDAILYCREDIT1.Visible = false;
            //    PanelDAILYEXPENSES.Visible = false;
            //    PanelStaffCreditStatus.Visible = false;
            //    PanelChangePrice.Visible = true;
            //    PanelClientMna.Visible = false;
            //    AddUserNew.Visible = false;
            //    AddNewStaff.Visible = false;
            //    PanelDelete.Visible = false;



            //}
            //else
            //{
            //    PanelDailyServedVehicle.Visible = true;
            //    PanelSTAFFDAILYCREDIT0.Visible = true;
            //    Panel48ALL.Visible = true;
            //    PanelSTAFFDAILYCREDIT.Visible = true;
            //    PanelSTAFFDAILYCREDIT1.Visible = true;
            //    PanelDAILYEXPENSES.Visible = true;
            //    PanelStaffCreditStatus.Visible = false;
            //    PanelChangePrice.Visible = false;
            //    PanelClientMna.Visible = false;
            //    AddUserNew.Visible = false;
            //    AddNewStaff.Visible = false;
            //    PanelDelete.Visible = false;

            //}
        }

        protected void DropDownList14_SelectedIndexChanged(object sender, EventArgs e)
        {
            string llll = "exec INSERTDailyCloseNew '" + DropDownList14.SelectedValue + "'";
            SqlCommand cmdddl = new SqlCommand(llll, con);
            cmdddl.Dispose();
            cmdddl.ExecuteNonQuery();
        }

        protected void Button47_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string com = "SELECT   Name, Phone, brand, PlateNumber, manufactureName,  idClient, IdManufacture FROM WebRecoredVehicle1  where PlateNumber LIKE '%" + TextBox28.Text + "%' OR Name LIKE '%" + TextBox28.Text + "%' AND Phone <> '0'";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WebRecoredVehicle1");
            DataView dv = new DataView(ds.Tables["WebRecoredVehicle1"]);
            DataTable dt = ds.Tables["WebRecoredVehicle1"];
            if (dt.Rows.Count != 0)
            {
                GridView4.DataSource = dt;

                GridView4.DataBind();
                GridView4.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }
        }

        protected void Button48_Click(object sender, EventArgs e)
        {

        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            foreach (GridViewRow row in gvServed.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {

                    string idRecord = row.Cells[10].Text;
                    string Vehicle = row.Cells[3].Text;
                    string pLateNo = row.Cells[2].Text;





                    TextBox59.Text = idRecord.ToString();
                    TextBox57.Text = Vehicle.ToString();
                    TextBox58.Text = pLateNo.ToString();
                    Label58.Visible = true;
                    Label59.Visible = true;
                    Button60.Visible = true;




                }
            }
        }

        protected void Button60_Click(object sender, EventArgs e)
        {

        }

        protected void Button59_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string l = "exec DeleteRecord '" + TextBox59.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
            gvServed.DataBind();

        }

        protected void Button60_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string l = "exec DeleteRecord '" + TextBox59.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
            gvServed.DataBind();

        }

        protected void Button34_Click(object sender, EventArgs e)
        {
            //if (PanelDelete.Visible == false)
            //{
            //    PanelDailyServedVehicle.Visible = false;
            //    PanelSTAFFDAILYCREDIT0.Visible = false;
            //    Panel48ALL.Visible = true;
            //    PanelSTAFFDAILYCREDIT.Visible = false;
            //    PanelSTAFFDAILYCREDIT1.Visible = false;
            //    PanelDAILYEXPENSES.Visible = false;
            //    PanelStaffCreditStatus.Visible = false;
            //    PanelChangePrice.Visible = false;
            //    PanelClientMna.Visible = false;
            //    AddUserNew.Visible = false;
            //    AddNewStaff.Visible = false;
            //    PanelDelete.Visible = true;


            //}
            //else
            //{
            //    PanelDailyServedVehicle.Visible = true;
            //    PanelSTAFFDAILYCREDIT0.Visible = true;
            //    Panel48ALL.Visible = true;
            //    PanelSTAFFDAILYCREDIT.Visible = true;
            //    PanelSTAFFDAILYCREDIT1.Visible = true;
            //    PanelDAILYEXPENSES.Visible = true;
            //    PanelStaffCreditStatus.Visible = false;
            //    PanelChangePrice.Visible = false;
            //    PanelClientMna.Visible = false;
            //    AddUserNew.Visible = false;
            //    AddNewStaff.Visible = false;
            //    PanelDelete.Visible = false;

            //}
        }

        protected void Button36_Click1(object sender, EventArgs e)
        {
            Response.Redirect("InvoiceLong.aspx");
        }

        protected void TextBox9_TextChanged(object sender, EventArgs e)
        {

        }


    }
}