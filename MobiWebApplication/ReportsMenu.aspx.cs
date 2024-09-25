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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);

        int annee;
        int mois;

        decimal Price = 0;
        decimal PriceS = 0;

        decimal TOTALM = 0;
        decimal PAIDM = 0;
        decimal REMAIN = 0;


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

         

            if ((Session["role_ame"] != null))
            {

                Label9.Text = Session["UserName"].ToString();
                RoleName.Text = Session["role_ame"].ToString();
                

                if (RoleName.Text == "Operator")
                {


                    Button3.Enabled = false;
                    Button6.Enabled = false;
                    Button34.Enabled = false;
                    Button38.Enabled = false;
                    Button33.Enabled = true;
                    Button37.Enabled = false;
                    Button72.Enabled = false;
                    Button73.Enabled = false;
                    Button74.Enabled = false;
                    Button85.Visible = false;
                    Button87.Visible = false;
                    Button88.Visible = false;
                    FormView35.Visible = false;
                    PanelSTAFFDAILYCREDIT5.Visible = false;
                    PanelSTAFFDAILYCREDIT6.Visible = false;
                    PanelSTAFFDAILYCREDIT4.Visible = false;
                    //Label80.Visible = false;
                    Label71.Visible = false;
                    Button72.Visible = false;
                    Button73.Visible = false;
                    Button74.Visible = false;
                    Button82.Visible = false;
                    Button83.Visible = false;
                    Button84.Visible = false;
                    //DataList4.Visible = false;
                    //Label80.Visible = false;
                    PanelSTAFFDAILYCREDIT4.Visible = false;
                    PanelSTAFFDAILYCREDIT6.Visible = false;
                    PanelSTAFFDAILYCREDIT5.Visible = false;
                    PanelSTAFFDAILYCREDIT3.Visible = false;
                    PanelSTAFFDAILYCREDIT7.Visible = false;
                    //PanelSTAFFDAILYCREDIT8.Visible = false;
                }
                else
                {
                    Button3.Enabled = true;
                    Button6.Enabled = true;
                    Button34.Enabled = true;
                    Button33.Enabled = true;
                    Button37.Enabled = true;
                    Button72.Enabled = true;
                    Button73.Enabled = true;
                    Button74.Enabled = true;
                    FormView35.Visible = true;
                    PanelSTAFFDAILYCREDIT5.Visible = true;
                    PanelSTAFFDAILYCREDIT6.Visible = true;
                    PanelSTAFFDAILYCREDIT4.Visible = true;
                    //Label80.Visible = true;
                    Label71.Visible = true;
                    Button72.Visible = true;
                    Button73.Visible = true;
                    Button74.Visible = true;
                    Button82.Visible = true;
                    Button83.Visible = true;
                    Button84.Visible = true;
                    Button85.Visible = true;
                    Button87.Visible = true;
                    Button88.Visible = true;
                    //DataList4.Visible = true;
                    //Label80.Visible = true;
                    PanelSTAFFDAILYCREDIT4.Visible = true;
                    PanelSTAFFDAILYCREDIT6.Visible = true;
                    PanelSTAFFDAILYCREDIT5.Visible = true;
                    PanelSTAFFDAILYCREDIT3.Visible = true;
                    PanelSTAFFDAILYCREDIT7.Visible = true;
                    //PanelSTAFFDAILYCREDIT8.Visible = true;
                } 


            }
            else
            {

                Response.Redirect("~/Default.aspx");
            }

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

            Response.Redirect("ViewClientCredit.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string com = "SELECT [StaffName], [IDStaff], [phone], [NID], [code], [status], [decisionM] FROM [MStaffOperator] ORDER BY [StaffName]";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WebRecoredVehicle1");
            DataView dv = new DataView(ds.Tables["WebRecoredVehicle1"]);
            DataTable dt = ds.Tables["WebRecoredVehicle1"];
            if (dt.Rows.Count != 0)
            {
                gvInformation2.DataSource = dt;

                gvInformation2.DataBind();
                gvInformation2.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }

            if (AddNewStaff.Visible == false)
            {
                PanelDailyServedVehicle.Visible = false;
                PanelSTAFFDAILYCREDIT0.Visible = false;
                Panel48ALL.Visible = true;
                PanelSTAFFDAILYCREDIT.Visible = false;
                PanelSTAFFDAILYCREDIT1.Visible = false;
                PanelSTAFFDAILYCREDIT3.Visible = false;
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
                PanelSTAFFDAILYCREDIT3.Visible = false;
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
            if (AddUserNew.Visible == false)
            {
                PanelDailyServedVehicle.Visible = false;
                PanelSTAFFDAILYCREDIT0.Visible = false;
                Panel48ALL.Visible = true;
                PanelSTAFFDAILYCREDIT.Visible = false;
                PanelSTAFFDAILYCREDIT1.Visible = false;
                PanelSTAFFDAILYCREDIT3.Visible = false;
                PanelDAILYEXPENSES.Visible = false;
                PanelStaffCreditStatus.Visible = false;
                PanelChangePrice.Visible = false;
                PanelClientMna.Visible = false;
                AddUserNew.Visible = true;
                AddNewStaff.Visible = false;
                PanelDelete.Visible = false;
                PanelDelete.Visible = false;




            }
            else
            {
                PanelDailyServedVehicle.Visible = true;
                PanelSTAFFDAILYCREDIT0.Visible = true;
                Panel48ALL.Visible = true;
                PanelSTAFFDAILYCREDIT.Visible = true;
                PanelSTAFFDAILYCREDIT1.Visible = true;
                PanelSTAFFDAILYCREDIT3.Visible = false;
                PanelDAILYEXPENSES.Visible = true;
                PanelStaffCreditStatus.Visible = false;
                PanelChangePrice.Visible = false;
                PanelClientMna.Visible = false;
                AddUserNew.Visible = false;
                AddNewStaff.Visible = false;
                PanelDelete.Visible = false;
                PanelDelete.Visible = false;

            }
        }

        protected void Button38_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportsMenui.aspx");
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

                    string IDStaff = row.Cells[0].Text;
                    string StaffName = row.Cells[3].Text;
                    string phone = row.Cells[4].Text;
                    string NID = row.Cells[5].Text;
                    string code = row.Cells[6].Text;




                    TextBox47.Text = IDStaff.ToString();
                    TextBox56.Text = StaffName.ToString();
                    TextBox49.Text = phone.ToString();
                    TextBox50.Text = NID.ToString();
                    TextBox61.Text = code.ToString();


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



            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec insertStaffOperator '" + TextBox56.Text + "','" + TextBox49.Text + "','" + TextBox50.Text + "','" + TextBox61.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    AlertLabel8.Text = "Submitted Successfull!";
                    gvInformation2.DataBind();


                    TextBox56.Text = TextBox49.Text = ""; TextBox50.Text = TextBox61.Text = "";
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
                    string l = "exec UpdateinsertStaffOperator '" + TextBox47.Text + "','" + TextBox56.Text + "','" + TextBox49.Text + "','" + TextBox50.Text + "','" + TextBox61.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    AlertLabel8.Text = "Update Successfull!";
                    gvInformation2.DataBind();


                    TextBox56.Text = TextBox49.Text = ""; TextBox50.Text = TextBox61.Text = "";
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
                        //DataList4.Visible = false;
                        //Label80.Visible = false;
                        PanelSTAFFDAILYCREDIT4.Visible = false;
                        PanelSTAFFDAILYCREDIT6.Visible = false;
                        PanelSTAFFDAILYCREDIT5.Visible = false;
                        PanelSTAFFDAILYCREDIT3.Visible = false;
                        PanelSTAFFDAILYCREDIT7.Visible = false;


                    }
                    else
                    {

                        AlertLabel10.Text = "Not Found";



                    }

                }
            }
            Panel7.Visible = true;
        }

        protected void Button2_Click2(object sender, EventArgs e)
        {
            //PanelDailyServedVehicle.Visible = true;
            //PanelSTAFFDAILYCREDIT0.Visible = true;
            //Panel48ALL.Visible = true;
            //PanelSTAFFDAILYCREDIT.Visible = true;
            //PanelSTAFFDAILYCREDIT1.Visible = true;
            //PanelSTAFFDAILYCREDIT3.Visible = false;
            //PanelDAILYEXPENSES.Visible = true;
            //PanelStaffCreditStatus.Visible = false;
            //PanelChangePrice.Visible = false;
            //PanelClientMna.Visible = false;
            Response.Redirect("StaffCreditStatusNew.aspx");
        }

        protected void Button57_Click(object sender, EventArgs e)
        {


        }

        protected void Button37_Click(object sender, EventArgs e)
        {
            if (PanelChangePrice.Visible == false)
            {
                PanelDailyServedVehicle.Visible = false;
                PanelSTAFFDAILYCREDIT0.Visible = false;
                Panel48ALL.Visible = true;
                PanelSTAFFDAILYCREDIT.Visible = false;
                PanelSTAFFDAILYCREDIT1.Visible = false;
                PanelSTAFFDAILYCREDIT3.Visible = false;
                PanelDAILYEXPENSES.Visible = false;
                PanelStaffCreditStatus.Visible = false;
                PanelChangePrice.Visible = true;
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
                PanelSTAFFDAILYCREDIT3.Visible = false;
                PanelDAILYEXPENSES.Visible = true;
                PanelStaffCreditStatus.Visible = false;
                PanelChangePrice.Visible = false;
                PanelClientMna.Visible = false;
                AddUserNew.Visible = false;
                AddNewStaff.Visible = false;
                PanelDelete.Visible = false;

            }
        }

        protected void DropDownList14_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string llll = "exec INSERTDailyCloseNew '" + DropDownList14.SelectedValue + "'";
            SqlCommand cmdddl = new SqlCommand(llll, con);
            cmdddl.Dispose();
            cmdddl.ExecuteNonQuery();

            string lllll = "exec BarINSERTDailyCloseNew '" + DropDownList14.SelectedValue + "'";
            SqlCommand cmdddll = new SqlCommand(lllll, con);
            cmdddll.Dispose();
            cmdddll.ExecuteNonQuery();
        }

        protected void Button47_Click(object sender, EventArgs e)
        {
            string com = "SELECT  idProduct, productName,quantityStock, PriceSales,PricePurchase,idDrinkCategory,CategoryName ,UnitName,IdUnit  FROM BarProducts3 WHERE  (productName LIKE '%" + TextBox28.Text + "%') order by productName";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarProducts3");
            DataView dv = new DataView(ds.Tables["BarProducts3"]);
            DataTable dt = ds.Tables["BarProducts3"];
            if (dt.Rows.Count != 0)
            {
                gvInformation7.DataSource = dt;
                gvInformation7.DataBind();
                gvInformation7.Visible = true;
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
                    string idClient = row.Cells[11].Text;





                    TextBox59.Text = idRecord.ToString();
                    TextBox60.Text = idClient.ToString();
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
            string l = "exec DeleteRecord '" + TextBox59.Text + "','" + TextBox60.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
            gvServed.DataBind();

        }

        protected void Button34_Click(object sender, EventArgs e)
        {
            if (PanelDelete.Visible == false)
            {
                PanelDailyServedVehicle.Visible = false;
                PanelSTAFFDAILYCREDIT0.Visible = false;
                Panel48ALL.Visible = true;
                PanelSTAFFDAILYCREDIT.Visible = false;
                PanelSTAFFDAILYCREDIT1.Visible = false;
                PanelSTAFFDAILYCREDIT3.Visible = false;
                PanelDAILYEXPENSES.Visible = false;
                PanelStaffCreditStatus.Visible = false;
                PanelChangePrice.Visible = false;
                PanelClientMna.Visible = false;
                AddUserNew.Visible = false;
                AddNewStaff.Visible = false;
                PanelDelete.Visible = true;


            }
            else
            {
                PanelDailyServedVehicle.Visible = true;
                PanelSTAFFDAILYCREDIT0.Visible = true;
                Panel48ALL.Visible = true;
                PanelSTAFFDAILYCREDIT.Visible = true;
                PanelSTAFFDAILYCREDIT1.Visible = true;
                PanelSTAFFDAILYCREDIT3.Visible = false;
                PanelDAILYEXPENSES.Visible = true;
                PanelStaffCreditStatus.Visible = false;
                PanelChangePrice.Visible = false;
                PanelClientMna.Visible = false;
                AddUserNew.Visible = false;
                AddNewStaff.Visible = false;
                PanelDelete.Visible = false;

            }
        }

        protected void Button36_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ServiceAll.aspx");
            //con.Close();
            //con.Open();
            ////string llll = "exec INSERTDailyCloseNewii '" + DropDownList20.SelectedValue + "'";
            ////SqlCommand cmdddl = new SqlCommand(llll, con);
            ////cmdddl.Dispose();
            ////cmdddl.ExecuteNonQuery();

        }

        protected void TextBox9_TextChanged(object sender, EventArgs e)
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

        protected void MonthlyReports_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button45_Click(object sender, EventArgs e)
        {

        }

        protected void Button45_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button61_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffCreditHistoric.aspx");
        }

        protected void Button62_Click(object sender, EventArgs e)
        {
            Response.Redirect("InvoiceLong.aspx");
        }

        protected void Button63_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientPaymentHistoric.aspx");
        }

        protected void Button64_Click(object sender, EventArgs e)
        {


            if (TextBox47.Text == "")
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
                    string l = "exec DeleteinsertStaffOperator '" + TextBox47.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    AlertLabel8.Text = "Staff Deleted Successfull!";
                    gvInformation2.DataBind();


                    TextBox56.Text = TextBox49.Text = ""; TextBox50.Text = TextBox61.Text = "";
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }



        }

        protected void Button65_Click(object sender, EventArgs e)
        {
            if (TextBox47.Text == "")
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
                    string l = "exec DesactiveinsertStaffOperator '" + TextBox47.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    AlertLabel8.Text = "Staff Desactivated Successfull!";
                    gvInformation2.DataBind();


                    TextBox56.Text = TextBox49.Text = ""; TextBox50.Text = TextBox61.Text = "";
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }

        }

        protected void gvInformation2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {


                    if (e.Row.Cells[7].Text == "desactive")
                    {
                        e.Row.Cells[2].ForeColor = Color.Red;
                        e.Row.Cells[3].ForeColor = Color.Red;
                        e.Row.Cells[4].ForeColor = Color.Red;
                        e.Row.Cells[5].ForeColor = Color.Red;
                        e.Row.Cells[6].ForeColor = Color.Red;
                        e.Row.Cells[7].ForeColor = Color.Red;
                    }
                    //else if (double.Parse(e.Row.Cells[5].Text) < 0)
                    //{
                    //    e.Row.Cells[6].Text = "No autorisation!";
                    //    e.Row.Cells[6].ForeColor = Color.Yellow;
                    //}
                }
            }
            catch (Exception ex)
            {

                return;

            }
        }

        protected void Button66_Click(object sender, EventArgs e)
        {
            if (TextBox47.Text == "")
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
                    string l = "exec DesactiveinsertStaffOperatorACRIVE '" + TextBox47.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    AlertLabel8.Text = "Staff Activated Successfull!";
                    gvInformation2.DataBind();


                    TextBox56.Text = TextBox49.Text = ""; TextBox50.Text = TextBox61.Text = "";
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    if ((double.Parse(e.Row.Cells[6].Text) == 0) && ((e.Row.Cells[7].Text == "Cash") || (e.Row.Cells[7].Text == "MoMo Pay")))
                    {
                        e.Row.Cells[1].ForeColor = Color.Orange;
                        e.Row.Cells[6].ForeColor = Color.Orange;
                    }

                    if (double.Parse(e.Row.Cells[4].Text) == 11)
                    {
                        e.Row.Cells[4].ForeColor = Color.Yellow;
                    }
                }
            }
            catch (Exception ex)
            {

                return;

            }
        }

        protected void Button67_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string com = "SELECT [StaffName], [IDStaff], [phone], [NID], [code], [status], [decisionM] FROM [MStaffOperator]   where StaffName LIKE '%" + TextBox62.Text + "%' ORDER BY [StaffName]";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "MStaffOperator");
            DataView dv = new DataView(ds.Tables["MStaffOperator"]);
            DataTable dt = ds.Tables["MStaffOperator"];
            if (dt.Rows.Count != 0)
            {
                gvInformation2.DataSource = dt;

                gvInformation2.DataBind();
                gvInformation2.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }
        }

        protected void g(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void Button70_Click(object sender, EventArgs e)
        {

            if (PanelNewProduct.Visible == false)
            {
                PanelNewProduct.Visible = true;
                PanelNewProduct0.Visible = false;
                PanelClientMna.Visible = true;
                gvInformation9.Visible = false;
                PanelSTAFFDAILYCREDIT5.Visible = false;
                PanelSTAFFDAILYCREDIT6.Visible = false;
                PanelSTAFFDAILYCREDIT4.Visible = false;
                PanelSTAFFDAILYCREDIT7.Visible = false;
                PanelSTAFFDAILYCREDIT3.Visible = false;
                FormView35.Visible = false;
                FormView42.Visible = false;
                //DataList4.Visible = false;
                //Label80.Visible = false;
                Label71.Visible = false;

                string com = "SELECT  idProduct, productName,quantityStock, PriceSales,PricePurchase,idDrinkCategory,CategoryName ,UnitName,IdUnit  FROM BarProducts3 order by productName";
                SqlDataAdapter da = new SqlDataAdapter(com, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "BarProducts3");
                DataView dv = new DataView(ds.Tables["BarProducts3"]);
                DataTable dt = ds.Tables["BarProducts3"];
                if (dt.Rows.Count != 0)
                {
                    gvInformation7.DataSource = dt;
                    gvInformation7.DataBind();
                    gvInformation7.Visible = true;
                    //GridView1.Visible = false;
                    //Labelsave.Text = "";


                }

            }
            else
            {
                PanelNewProduct.Visible = false;
                PanelNewProduct0.Visible = false;
                PanelClientMna.Visible = true;
                gvInformation7.Visible = false;
                gvInformation9.Visible = false;
                PanelSTAFFDAILYCREDIT5.Visible = true;
                PanelSTAFFDAILYCREDIT6.Visible = true;
                PanelSTAFFDAILYCREDIT4.Visible = true;
                PanelSTAFFDAILYCREDIT7.Visible = true;
                PanelSTAFFDAILYCREDIT3.Visible = true;
                FormView35.Visible = true;
                //DataList4.Visible = true;
                //Label80.Visible = true;
                Label71.Visible = true;
                FormView42.Visible = true;

            }
        }

        protected void Button71_Click(object sender, EventArgs e)
        {

        }

        protected void Button68_Click(object sender, EventArgs e)
        {

            PanelNewProduct0.Visible = true;
            PanelNewProduct.Visible = false;
            PanelClientMna.Visible = true;
            Panel115.Visible = true;
            gvInformation9.Visible = false;



        }

        protected void Button75_Click(object sender, EventArgs e)
        {
            if (TextBox41.Text == "")
            {

                Label69.Text = "Plz Enter Product Names";
            }
            else if (TextBox63.Text == "")
            {

                Label69.Text = "Plz Enter Price";
            }



            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec insertNewProduct '" + TextBox41.Text + "','" + TextBox63.Text + "','" + TextBox70.Text + "','" + DropDownList21.SelectedValue + "','" + DropDownList22.SelectedValue + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    Label69.Text = "Submitted Successfull!";
                    gvInformation7.DataBind();
                    gvInformation11.DataBind();
                    gvInformation6.DataBind();

                    string com = "SELECT  idProduct, productName,quantityStock, PriceSales,PricePurchase,idDrinkCategory,CategoryName ,UnitName,IdUnit  FROM BarProducts3 order by productName";
                    SqlDataAdapter da = new SqlDataAdapter(com, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "BarProducts3");
                    DataView dv = new DataView(ds.Tables["BarProducts3"]);
                    DataTable dt = ds.Tables["BarProducts3"];
                    if (dt.Rows.Count != 0)
                    {
                        gvInformation7.DataSource = dt;
                        gvInformation7.DataBind();
                        gvInformation7.Visible = true;
                        //GridView1.Visible = false;
                        //Labelsave.Text = "";


                    }


                    TextBox70.Text = TextBox41.Text = TextBox63.Text = TextBox64.Text = "";
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }
        }

        protected void CheckBox14_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox14_CheckedChanged1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();



            foreach (GridViewRow row in gvInformation7.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox14");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {
                    string idProduct = row.Cells[1].Text;
                    string ProductName = row.Cells[2].Text;
                    string PricePurchase = row.Cells[3].Text;
                    string PriceSales = row.Cells[4].Text;
                    string idDrinkCategory = row.Cells[7].Text;
                    string IdUnit = row.Cells[8].Text;


                    TextBox64.Text = idProduct.ToString();
                    TextBox41.Text = ProductName.ToString();
                    TextBox63.Text = PricePurchase.ToString();
                    TextBox70.Text = PriceSales.ToString();
                    DropDownList21.SelectedValue = idDrinkCategory.ToString();
                    DropDownList22.SelectedValue = IdUnit.ToString();






                }
            }
        }

        protected void Button76_Click(object sender, EventArgs e)
        {
            if (TextBox41.Text == "")
            {
                Label69.Text = "Plz Enter Product Names";
            }
            else if (TextBox63.Text == "")
            {
                Label69.Text = "Plz Enter Price";
            }
            else if (TextBox64.Text == "")
            {
                Label69.Text = "Plz Select Product";
            }

            else
            {

                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec insertNewProductUpdate '" + TextBox64.Text + "','" + TextBox41.Text + "','" + TextBox63.Text + "','" + TextBox70.Text + "','" + DropDownList21.SelectedValue + "','" + DropDownList22.SelectedValue + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    Label69.Text = "Updated Successfull!";
                    gvInformation7.DataBind();

                    string com = "SELECT  idProduct, productName,quantityStock, PriceSales,PricePurchase,idDrinkCategory,CategoryName ,UnitName,IdUnit  FROM BarProducts3 order by productName";
                    SqlDataAdapter da = new SqlDataAdapter(com, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "BarProducts3");
                    DataView dv = new DataView(ds.Tables["BarProducts3"]);
                    DataTable dt = ds.Tables["BarProducts3"];
                    if (dt.Rows.Count != 0)
                    {
                        gvInformation7.DataSource = dt;
                        gvInformation7.DataBind();
                        gvInformation7.Visible = true;
                        //GridView1.Visible = false;
                        //Labelsave.Text = "";


                    }


                    TextBox70.Text = TextBox41.Text = TextBox63.Text = TextBox64.Text = "";
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }
        }

        protected void Button72_Click(object sender, EventArgs e)
        {
            if (PanelClientMna.Visible == false)
            {
                PanelDailyServedVehicle.Visible = false;
                PanelSTAFFDAILYCREDIT0.Visible = false;
                Panel48ALL.Visible = true;
                PanelSTAFFDAILYCREDIT.Visible = false;
                PanelSTAFFDAILYCREDIT1.Visible = false;
                PanelSTAFFDAILYCREDIT3.Visible = false;
                PanelDAILYEXPENSES.Visible = false;
                PanelStaffCreditStatus.Visible = false;
                PanelChangePrice.Visible = false;
                PanelClientMna.Visible = true;
                AddUserNew.Visible = false;
                AddNewStaff.Visible = false;
                PanelDelete.Visible = false;
                PanelNewProduct0.Visible = true;
                Panel16.Visible = false;
                PanelSTAFFDAILYCREDIT5.Visible = false;
                PanelSTAFFDAILYCREDIT6.Visible = false;
                PanelSTAFFDAILYCREDIT4.Visible = false;
                PanelSTAFFDAILYCREDIT9.Visible = false;
                PanelSTAFFDAILYCREDIT7.Visible = false;
                //DataList3.Visible = false;
                //DataList4.Visible = false;



            }
            else
            {
                PanelDailyServedVehicle.Visible = true;
                PanelSTAFFDAILYCREDIT0.Visible = true;
                //Panel48ALL.Visible = true;
                //PanelSTAFFDAILYCREDIT.Visible = true;
                PanelSTAFFDAILYCREDIT1.Visible = true;
                PanelSTAFFDAILYCREDIT3.Visible = false;
                PanelDAILYEXPENSES.Visible = true;
                PanelStaffCreditStatus.Visible = false;
                PanelChangePrice.Visible = false;
                PanelClientMna.Visible = false;
                AddUserNew.Visible = false;
                AddNewStaff.Visible = false;
                PanelDelete.Visible = false;
                PanelNewProduct0.Visible = false;
                PanelSTAFFDAILYCREDIT5.Visible = true;
                PanelSTAFFDAILYCREDIT6.Visible = true;
                PanelSTAFFDAILYCREDIT4.Visible = true;
                Panel16.Visible = true;
                //DataList3.Visible = false;
                //DataList4.Visible = false;


            }
        }

        protected void CheckBox15_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button79_Click(object sender, EventArgs e)
        {

            con.Close();
            con.Open();


            foreach (GridViewRow row in gvInformation11.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox18");

                TextBox QUnty = (TextBox)row.FindControl("TextBox7");
                DropDownList QUntyp = (DropDownList)row.FindControl("DropDownList35");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;
                    //string Quantity = row.Cells[3].Text;

                    //TextBox3.Text = idProduct.ToString();
                    //QUnty.Text = Quantity.ToString();


                    string l = "exec BarinsertPuchase '" + row.Cells[1].Text + "','" + QUnty.Text + "','" + Label4.Text + "','" + Label9.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    //Label70.Text = "Submitted Successfull!";                  
                    gvInformation11.DataBind();



                }
            }
            //00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation6.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox5");

                TextBox QUntyP = (TextBox)row.FindControl("TextBox8");
                DropDownList QUntyU = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;
                    //string Quantity = row.Cells[3].Text;

                    //TextBox3.Text = idProduct.ToString();
                    //QUnty.Text = Quantity.ToString();



                    string l = "exec BarinsertPuchase '" + row.Cells[1].Text + "','" + QUntyP.Text + "','" + Label4.Text + "','" + Label9.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    //Label70.Text = "Submitted Successfull!";



                    gvInformation6.DataBind();


                }
            }

            //00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation12.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox19");

                TextBox QUntyPd = (TextBox)row.FindControl("TextBox71");
                DropDownList QUntyUd = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;
                    //string Quantity = row.Cells[3].Text;

                    //TextBox3.Text = idProduct.ToString();
                    //QUnty.Text = Quantity.ToString();



                    string l = "exec BarinsertPuchase '" + row.Cells[1].Text + "','" + QUntyPd.Text + "','" + Label4.Text + "','" + Label9.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    //Label70.Text = "Submitted Successfull!";



                    gvInformation12.DataBind();


                }
            }
            //00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation14.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox20");

                TextBox QUntyPdu = (TextBox)row.FindControl("TextBox75");
                DropDownList QUntyUd = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;
                    //string Quantity = row.Cells[3].Text;

                    //TextBox3.Text = idProduct.ToString();
                    //QUnty.Text = Quantity.ToString();



                    string l = "exec BarinsertPuchase '" + row.Cells[1].Text + "','" + QUntyPdu.Text + "','" + Label4.Text + "','" + Label9.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    //Label70.Text = "Submitted Successfull!";



                    gvInformation14.DataBind();


                }
            }
            //00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation15.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox21");

                TextBox QUntyPdd = (TextBox)row.FindControl("TextBox76");
                DropDownList QUntyUd = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;
                    //string Quantity = row.Cells[3].Text;

                    //TextBox3.Text = idProduct.ToString();
                    //QUnty.Text = Quantity.ToString();



                    string l = "exec BarinsertPuchase '" + row.Cells[1].Text + "','" + QUntyPdd.Text + "','" + Label4.Text + "','" + Label9.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    //Label70.Text = "Submitted Successfull!";

                    gvInformation15.DataBind();


                }
            }
            //000000000000000000000000000000000000

        }

        protected void Button81_Click(object sender, EventArgs e)
        {


            gvInformation9.Visible = true;
            AlertLabel63.Visible = false;
            AlertLabel13.Visible = false;
            Panel115.Visible = false;




            string com = "SELECT TOP (120) idRecord,idProduct,productName,Price,quantity,Price*quantity As Total ,dateRecorded  FROM BarPurchaseView ORDER BY idRecord DESC";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarPurchaseView");
            DataView dv = new DataView(ds.Tables["BarPurchaseView"]);
            DataTable dt = ds.Tables["BarPurchaseView"];
            if (dt.Rows.Count != 0)
            {
                gvInformation9.DataSource = dt;
                gvInformation9.DataBind();
                gvInformation9.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }


        }

        protected void GridClientPayment2_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                TOTALM += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Total"));
                PAIDM += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Paid"));
              
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[6].Text = TOTALM.ToString("0,000");
                e.Row.Cells[7].Text = PAIDM.ToString("0,000");
                
            }

            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {


                    if (double.Parse(e.Row.Cells[6].Text) == double.Parse(e.Row.Cells[7].Text))
                    {
                        e.Row.Cells[8].ForeColor = Color.Orange;
                        //e.Row.Cells[5].ForeColor = Color.Orange;
                        e.Row.Cells[9].Visible = false;

                    }
                }
            }
            catch (Exception ex)
            {

                return;

            }
        }

        protected void Button73_Click(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoManagerWee.aspx");
        }

        protected void Button74_Click(object sender, EventArgs e)
        {

            if (LoadingMainStore.Visible == false)
            {
               
                LoadingMainStore.Visible = true;             
                Panel16.Visible = false;
                Panel48ALL.Visible = false;
                AlertLabel68.Visible = false;
                AlertLabel69.Visible = false;
                AlertLabel70.Visible = false;
            }
            else
            {
                LoadingMainStore.Visible = false; 
                Panel16.Visible = false;
                Panel48ALL.Visible = false;
                AlertLabel68.Visible = false;
                AlertLabel69.Visible = false;
                AlertLabel70.Visible = false;
            }
        }

        protected void CheckBox18_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();



            foreach (GridViewRow row in gvInformation9.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox18");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {

                    string idRecord = row.Cells[0].Text;
                    string idProduct = row.Cells[1].Text;
                    string quantity = row.Cells[4].Text;


                    TextBox72.Text = idRecord.ToString();
                    TextBox73.Text = idProduct.ToString();
                    TextBox74.Text = quantity.ToString();




                    string ll = "exec BarinsertPuchaseDelete '" + TextBox72.Text + "','" + TextBox73.Text + "','" + TextBox74.Text + "','" + Label4.Text + "','" + Label9.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

                    gvInformation11.DataBind();
                    gvInformation6.DataBind();
                    gvInformation9.DataBind();

                    string com = "SELECT TOP (20) idRecord,idProduct,productName,Price,quantity,Price*quantity As Total ,dateRecorded  FROM BarPurchaseView ORDER BY idRecord DESC";
                    SqlDataAdapter da = new SqlDataAdapter(com, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "BarPurchaseView");
                    DataView dv = new DataView(ds.Tables["BarPurchaseView"]);
                    DataTable dt = ds.Tables["BarPurchaseView"];
                    if (dt.Rows.Count != 0)
                    {
                        gvInformation9.DataSource = dt;
                        gvInformation9.DataBind();
                        gvInformation9.Visible = true;
                        //GridView1.Visible = false;
                        //Labelsave.Text = "";


                    }


                }
            }
        }

        protected void Button40_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation6.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            idProductID.Text = getId;

            string com = "SELECT TOP (20) idRecord,idProduct,productName,Price,quantity,Price*quantity As Total ,dateRecorded  FROM BarPurchaseView WHERE  (idProduct = '" + idProductID + "')  ORDER BY idRecord DESC";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarPurchaseView");
            DataView dv = new DataView(ds.Tables["BarPurchaseView"]);
            DataTable dt = ds.Tables["BarPurchaseView"];
            if (dt.Rows.Count != 0)
            {
                gvInformation9.DataSource = dt;
                gvInformation9.DataBind();
                gvInformation9.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }
        }

        protected void Button40_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation11.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            idProductID.Text = getId;

            string com = "SELECT TOP (20) idRecord,idProduct,productName,Price,quantity,Price*quantity As Total ,dateRecorded  FROM BarPurchaseView WHERE  (idProduct = '" + idProductID + "')  ORDER BY idRecord DESC";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarPurchaseView");
            DataView dv = new DataView(ds.Tables["BarPurchaseView"]);
            DataTable dt = ds.Tables["BarPurchaseView"];
            if (dt.Rows.Count != 0)
            {
                gvInformation9.DataSource = dt;
                gvInformation9.DataBind();
                gvInformation9.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }
        }

        protected void Button40_Click2(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation12.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            idProductID.Text = getId;

            string com = "SELECT TOP (20) idRecord,idProduct,productName,Price,quantity,Price*quantity As Total ,dateRecorded  FROM BarPurchaseView WHERE  (idProduct = '" + idProductID + "')  ORDER BY idRecord DESC";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarPurchaseView");
            DataView dv = new DataView(ds.Tables["BarPurchaseView"]);
            DataTable dt = ds.Tables["BarPurchaseView"];
            if (dt.Rows.Count != 0)
            {
                gvInformation9.DataSource = dt;
                gvInformation9.DataBind();
                gvInformation9.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }
        }

        protected void TextBox28_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button82_Click(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoManagerKitchen.aspx");
        }

        protected void Button83_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManagerTool.aspx");
        }

        protected void ServedDrinkTotal0_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void Button84_Click(object sender, EventArgs e)
        {
            Response.Redirect("PurchaseLoad.aspx");
        }

        protected void vInformation3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void Button85_Click(object sender, EventArgs e)
        {
            Response.Redirect("SalessPreports.aspx");
        }

        protected void Button87_Click(object sender, EventArgs e)
        {
            Response.Redirect("Requests.aspx");
        }

        protected void Button88_Click(object sender, EventArgs e)
        {
            Response.Redirect("UnpaidReport.aspx");
        }

        protected void Button37_Click1(object sender, EventArgs e)
        {

        }

        protected void Button37_Click2(object sender, EventArgs e)
        {
            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = GridClientPayment2.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label6.Text = getId;
        }

        protected void GridClientPayment6_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {

                    if (double.Parse(e.Row.Cells[4].Text) == 0)
                    {
                        e.Row.Cells[6].ForeColor = Color.Orange;
                        e.Row.Cells[6].Text = "NotPaid";
                        e.Row.Cells[2].ForeColor = Color.Orange;
                        e.Row.Cells[4].ForeColor = Color.Orange;
                       

                    }
                  
                }
            }
            catch (Exception ex)
            {

                return;

            }
        }

        protected void Button95_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation19.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label7.Text = getId;
            GridClientPayment8.DataBind();
            GridClientPayment7.DataBind();
            GridClientPayment5.DataBind();
          
            Button91.Visible = true;
            Button79.Visible = false;
            gvInformation18.Visible = false;
            gvInformation16.Visible = false;
            gvInformation19.Visible = false;
            gvInformation18.Visible = false;
            gvInformation20.Visible = false;
            AlertLabel68.Visible = true;
            AlertLabel69.Visible = true;
            AlertLabel70.Visible = true;
            AlertLabel72.Visible = false;
            AlertLabel73.Visible = false;
            AlertLabel75.Visible = false;
            AlertLabel72.Visible = false;
            AlertLabel73.Visible = false;
            AlertLabel75.Visible = false;
            //AlertLabel71.Visible = true;
            Button91.Visible = true;
            GridClientPayment8.Visible = true;
            GridClientPayment5.Visible = true;
            GridClientPayment7.Visible = true;
        }

        protected void GridClientPayment4_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void Button96_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation16.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label7.Text = getId;
            GridClientPayment8.DataBind();
            GridClientPayment7.DataBind();
            GridClientPayment5.DataBind();

            Button91.Visible = true;
            Button79.Visible = false;
            gvInformation18.Visible = false;
            gvInformation16.Visible = false;
            gvInformation19.Visible = false;
            gvInformation18.Visible = false;
            gvInformation20.Visible = false;
            AlertLabel68.Visible = true;
            AlertLabel69.Visible = true;
            AlertLabel70.Visible = true;
            //AlertLabel71.Visible = true;
            Button91.Visible = true;
            AlertLabel72.Visible = false;
            AlertLabel73.Visible = false;
            AlertLabel75.Visible = false;
            GridClientPayment8.Visible = true;
            GridClientPayment5.Visible = true;
            GridClientPayment7.Visible = true;
        }

        protected void Button92_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation18.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label7.Text = getId;
            GridClientPayment8.DataBind();
            GridClientPayment7.DataBind();
            GridClientPayment5.DataBind();

            Button91.Visible = true;
            Button79.Visible = false;
            gvInformation18.Visible = false;
            gvInformation16.Visible = false;
            gvInformation19.Visible = false;
            gvInformation20.Visible = false;
            AlertLabel68.Visible = true;
            AlertLabel69.Visible = true;
            AlertLabel70.Visible = true;
            //AlertLabel71.Visible = true;
            Button91.Visible = true;
            AlertLabel72.Visible = false;
            AlertLabel73.Visible = false;
            AlertLabel75.Visible = false;
            GridClientPayment8.Visible = true;
            GridClientPayment5.Visible = true;
            GridClientPayment7.Visible = true;
        }

        protected void Button91_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportsMenu.aspx");
        }

        protected void Button97_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation20.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label7.Text = getId;
            GridClientPayment8.DataBind();
            GridClientPayment7.DataBind();
            GridClientPayment5.DataBind();

            Button91.Visible = true;
            Button79.Visible = false;
            gvInformation18.Visible = false;
            gvInformation16.Visible = false;
            gvInformation19.Visible = false;
            gvInformation20.Visible = false;
            AlertLabel68.Visible = true;
            AlertLabel69.Visible = true;
            AlertLabel70.Visible = true;
            //AlertLabel71.Visible = true;
            Button91.Visible = true;
            AlertLabel72.Visible = false;
            AlertLabel73.Visible = false;
            AlertLabel75.Visible = false;
            GridClientPayment8.Visible = true;
            GridClientPayment5.Visible = true;
            GridClientPayment7.Visible = true;
        }

        protected void TextBox9_DataBinding(object sender, EventArgs e)
        {

        }

        protected void TextBox9_Disposed(object sender, EventArgs e)
        {

        }

        protected void GridView9_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridClientPayment2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    }
}