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
    public partial class WebForm3 : System.Web.UI.Page
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
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Namibia Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            Label16.Text = cstTime.ToShortDateString();
            Label17.Text = cstTime.ToString();

       
            con.Close();
            con.Open();

            if ((Session["role_ame"] != null))
            {

                Label15.Text = Session["UserName"].ToString();
                RoleName.Text = Session["role_ame"].ToString();



                if (RoleName.Text == "VehicleRecord")
                {


                    Button1.Enabled = false;
                    Button1.Visible = false;
                    TextBox9.Enabled = false;
                    TextBox9.Visible = false;
                }
                else
                {
                    Button1.Enabled = true;
                    Button1.Visible = true;
                    TextBox9.Enabled = true;
                    TextBox9.Visible = true;
                }


            }
            else
            {

                Response.Redirect("~/Default.aspx");
            }

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
            if (Page.IsPostBack == false)
            {
                //SqlConnection con = new SqlConnection(strconn);
                SqlCommand sqlcmd = new SqlCommand("VehicleManufacture_SELECT", con);
                sqlcmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
                DataTable DT = new DataTable();
                adapter.Fill(DT);

                DropDownList19.DataSource = DT;
                DropDownList19.DataTextField = "manufactureName";
                DropDownList19.DataValueField = "IdManufacture";
                DropDownList19.DataBind();
                DropDownList19.Items.Insert(0, "----Select Category----");
                DropDownList16.Items.Insert(0, "----Select Service-----");
                //DropDownList2.Items.Insert(0, "----Select Washman----");
                //DropDownList4.Items.Insert(0, "----Select Payment----");

                //drpcity.Items.Insert(0, "SELECT");
            }
            //////////////////////////////////
            //if (Page.IsPostBack == false)
            //{
            //    //SqlConnection con = new SqlConnection(strconn);
            //    SqlCommand sqlcmd = new SqlCommand("SELECTClient", con);
            //    sqlcmd.CommandType = CommandType.StoredProcedure;

            //    SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
            //    DataTable DT = new DataTable();
            //    adapter.Fill(DT);

            //    DropDownList28.DataSource = DT;
            //    DropDownList28.DataTextField = "Name";
            //    DropDownList28.DataValueField = "idClient";
            //    DropDownList28.DataBind();




            //    //drpcity.Items.Insert(0, "SELECT");
            //}
            ////////////////////////////////////////////////////
            if (Page.IsPostBack == false)
            {
                //SqlConnection con = new SqlConnection(strconn);
                SqlCommand sqlcmdd = new SqlCommand("WashMan_SELECT", con);
                sqlcmdd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapterr = new SqlDataAdapter(sqlcmdd);
                DataTable DTT = new DataTable();
                adapterr.Fill(DTT);

                DropDownList17.DataSource = DTT;
                DropDownList17.DataTextField = "StaffName";
                DropDownList17.DataValueField = "IDStaff";
                DropDownList17.DataBind();
                DropDownList17.Items.Insert(0, "----Select Washman----");

                DropDownList37.DataSource = DTT;
                DropDownList37.DataTextField = "StaffName";
                DropDownList37.DataValueField = "IDStaff";
                DropDownList37.DataBind();
                DropDownList37.Items.Insert(0, "----Select Washman----");


            }
            ///////////////////////////////////////////////////

            if (Page.IsPostBack == false)
            {
                //SqlConnection con = new SqlConnection(strconn);
                SqlCommand sqlcmddd = new SqlCommand("Payment_SELECT", con);
                sqlcmddd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapterrr = new SqlDataAdapter(sqlcmddd);
                DataTable DTTT = new DataTable();
                adapterrr.Fill(DTTT);

                DropDownList18.DataSource = DTTT;
                //DropDownList27.DataSource = DTTT; 
                DropDownList18.DataTextField = "Payment";
                //DropDownList27.DataTextField = "Payment";    
                DropDownList18.DataValueField = "IDPayment";
                //DropDownList27.DataValueField = "IDPayment";   
                DropDownList18.DataBind();
                //DropDownList27.DataBind();
                DropDownList18.Items.Insert(0, "----Select Payment----");
                //DropDownList27.Items.Insert(0, "----Select Payment----");

                //drpcity.Items.Insert(0, "SELECT");
            }

            if (Page.IsPostBack == false)
            {
                //SqlConnection con = new SqlConnection(strconn);
                SqlCommand sqlcmd = new SqlCommand("VehicleManufacture_SELECT", con);
                sqlcmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
                DataTable DT = new DataTable();
                adapter.Fill(DT);

                DropDownList24.DataSource = DT;
                DropDownList24.DataTextField = "manufactureName";
                DropDownList24.DataValueField = "IdManufacture";
                DropDownList24.DataBind();
                DropDownList24.Items.Insert(0, "----Select Category----");


            }

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void Button38_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string com = "SELECT top 5  Name, Phone, brand, PlateNumber, manufactureName,  idClient, IdManufacture FROM WebRecoredVehicle1  where PlateNumber LIKE '%" + TextBox28.Text + "%'";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WebRecoredVehicle1");
            DataView dv = new DataView(ds.Tables["WebRecoredVehicle1"]);
            DataTable dt = ds.Tables["WebRecoredVehicle1"];
            if (dt.Rows.Count != 0)
            {
                GridView3.DataSource = dt;

                GridView3.DataBind();
                GridView3.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }
            //AlertLabel2.Text = "";
            AlertLabel.Text = "";
            //AlertLabel3.Text = "";
            AlertLabel7.Text = "";
            DropDownList26.Visible = false;
            Button56.Visible = false;
            gvServed.Visible = false;
            DropDownList17.DataBind();
            DropDownList18.DataBind();
        }

        protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView3.Rows)
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






                    TextBox29.Text = idClient.ToString();
                    TextBox30.Text = IdManufacture.ToString();
                    TextBox26.Text = PlateNumber.ToString();
                    TextBox27.Text = brand.ToString();
                    DropDownList19.SelectedValue = IdManufacture.ToString();
                    Name.Text = NameClient.ToString();


                    DropDownList26.Visible = false;
                    Button56.Visible = false;

                    if (DropDownList19.SelectedIndex != 0)
                    {
                        //SqlConnection sqlconn = new SqlConnection(strconn);
                        SqlCommand sqlcmd = new SqlCommand("DeriveryService_SELECT", con);
                        sqlcmd.CommandType = CommandType.StoredProcedure;
                        sqlcmd.Parameters.AddWithValue("@IdManufacture", Convert.ToInt32(DropDownList19.SelectedValue));


                        SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
                        DataTable DT = new DataTable();
                        adapter.Fill(DT);

                        DropDownList16.DataSource = DT;
                        DropDownList16.DataTextField = "NameService";
                        DropDownList16.DataValueField = "IdService";
                        DropDownList16.DataBind();
                        DropDownList16.Items.Insert(0, "----Select Service-----");


                    }



                    con.Close();
                    con.Open();
                    TextBox28.Text = PlateNumber.ToString();
                    string com = "SELECT distinct Name, Phone, brand, PlateNumber, manufactureName,idClient, IdManufacture  FROM WebRecoredVehicle1  where PlateNumber='" + TextBox28.Text + "'";
                    SqlDataAdapter da = new SqlDataAdapter(com, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "WebRecoredVehicle1");
                    DataView dv = new DataView(ds.Tables["WebRecoredVehicle1"]);
                    DataTable dt = ds.Tables["WebRecoredVehicle1"];
                    if (dt.Rows.Count != 0)
                    {
                        GridView3.DataSource = dt;

                        GridView3.DataBind();
                        GridView3.Visible = true;
                        //GridView1.Visible = false;
                        //Labelsave.Text = "";


                    }



                }
            }
        }

        protected void Button32_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServiceMobile.aspx");
        }

        protected void Button41_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();



            if (TextBox26.Text == "")
            {
                //Alert.Show("Please Select Vehicle");
                AlertLabel.Text = "Please Select Vehicle";
            }

            //else if (DropDownList5.SelectedValue == TextBox4.Text)
            //{
            //    Alert.Show("Please Vehicle Category");
            //}

            else if (DropDownList16.Text == "----Select Service-----")
            {
                //Alert.Show("Please Select Service");
                AlertLabel.Text = "PlZ Select Service";
            }
            else if (DropDownList17.Text == "----Select Washman----")
            {
                //Alert.Show("Please Select Washman");
                AlertLabel.Text = "PlZ Select Washman";
            }
            else if (DropDownList18.Text == "----Select Payment----")
            {
                //Alert.Show("Please Select Payment");
                AlertLabel.Text = "PlZ Select Payment";
            }
            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    string l = "exec ConfirmPrice '" + TextBox29.Text + "','" + DropDownList16.SelectedValue + "','" + DropDownList17.SelectedValue + "','" + DropDownList18.SelectedValue + "','" + Label15.Text + "','" + Label17.Text + "','" + Label17.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    AlertLabel7.Text = "Submitted Successfull!";

                    string lld = "exec paymentNewaEverDay '" + Name.Text + "','" + Label15.Text + "','" + Label17.Text + "','" + Label17.Text + "','" + DropDownList16.SelectedValue + "','" + DropDownList18.SelectedValue + "'";
                    SqlCommand cmdld = new SqlCommand(lld, con);
                    cmdld.Dispose();
                    cmdld.ExecuteNonQuery();


                    string lll = "exec INSERTDailyCloseNew '" + DropDownList14.SelectedValue + "'";
                    SqlCommand cmddd = new SqlCommand(lll, con);
                    cmddd.Dispose();
                    cmddd.ExecuteNonQuery();

                    string llll = "exec INSERTDailyCloseNewii '" + DropDownList20.SelectedValue + "'";
                    SqlCommand cmdddl = new SqlCommand(llll, con);
                    cmdddl.Dispose();
                    cmdddl.ExecuteNonQuery();

                    string ll = "exec InsertCreditNew '" + TextBox29.Text + "','" + DropDownList18.SelectedValue + "','" + DropDownList17.SelectedValue + "','" + Label15.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();
                    DropDownList26.Visible = false;
                    Button56.Visible = false;









                }
                catch (Exception ex)
                {
                    //Alert.Show("Not Saved?");
                }

                FormView10.DataBind();
                FormView9.DataBind();
                FormView7.DataBind();
                DropDownList16.DataBind();
                DropDownList17.DataBind();
                DropDownList18.DataBind();
                GridView3.DataBind();
                TextBox26.Text = "";

                TextBox27.Text = "";
                TextBox29.Text = "";
                gvServed.Visible = true;
                gvServed.DataBind();



            }
        }

        protected void SqlDataSource5_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }



        protected void Button42_Click(object sender, EventArgs e)
        {


        }

        protected void Button30_Click(object sender, EventArgs e)
        {
            if (Registration.Visible == false)
            {
                ServiceDervery.Visible = false;
                Registration.Visible = true;
                ServiceRegista.Visible = true;
                RegisteredVehicle.Visible = true;
                gvServed.Visible = false;
                Invoice.Visible = false;







            }
            else
            {
                ServiceDervery.Visible = true;
                Registration.Visible = false;
                ServiceRegista.Visible = true;
                RegisteredVehicle.Visible = false;
                gvServed.Visible = true;
                Invoice.Visible = false;



            }

            DropDownList26.Visible = false;
            Button56.Visible = false;
        }

        protected void Button31_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownList24_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button44_Click(object sender, EventArgs e)
        {
            if (TextBox37.Text == "")
            {
                //Alert.Show("Plz Enter Client");
                AlertLabel0.Text = "Plz Enter Client";
            }
            else if (TextBox38.Text == "")
            {
                //Alert.Show("Please Enter Client Contact");
                AlertLabel0.Text = "Plz Enter Contact No";
            }
            else if (TextBox39.Text == "")
            {
                //Alert.Show("Please write Vehicle Type");
                AlertLabel0.Text = "Plz Enter Vehicle Type";
            }
            else if (TextBox40.Text == "")
            {
                //Alert.Show("Please write Vehicle Type");
                AlertLabel0.Text = "Plz Enter Plate No";
            }
            else if (DropDownList24.Text == "----Select Category----")
            {
                //Alert.Show("Please Select Category");
                AlertLabel0.Text = "Plz Enter Select Category";
            }
            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec insertCOmpanyCar '" + TextBox37.Text + "','" + TextBox38.Text + "','" + TextBox39.Text + "','" + TextBox40.Text + "','" + DropDownList24.SelectedValue + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    //Alert.Show("Saved Successfull!");
                    AlertLabel0.Text = "Submitted Successfull!";
                    //AlertLabel2.Text = "";
                    DropDownList26.Visible = false;
                    Button56.Visible = false;

                    TextBox37.Text = TextBox38.Text = TextBox39.Text = TextBox40.Text = TextBox40.Text = "";
                    //------------------------------
                    if (ServiceDervery.Visible == false)
                    {
                        ServiceDervery.Visible = true;
                        PanelAll.Visible = true;
                        Registration.Visible = false;


                    }
                    else
                    {
                        ServiceDervery.Visible = true;
                        Registration.Visible = false;
                        PanelAll.Visible = true;

                    }
                    //----------------------------
                    if (ServiceDervery.Visible == false)
                    {
                        ServiceDervery.Visible = true;
                        Registration.Visible = false;
                        RegisteredVehicle.Visible = true;
                        ServiceDervery0.Visible = false;
                        Panel7.Visible = false;
                        Panel10.Visible = false;




                    }
                    else
                    {
                        ServiceDervery.Visible = true;
                        Registration.Visible = false;
                        RegisteredVehicle.Visible = false;
                        ServiceDervery0.Visible = true;
                        Panel7.Visible = true;
                        Panel10.Visible = true;



                    }

                    DropDownList26.Visible = true;
                    Button56.Visible = true;
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }

        }

        protected void Button33_Click(object sender, EventArgs e)
        {
            if (MobiExpenses.Visible == false)
            {
                StaffCreditPanelAll.Visible = false;
                PanelSevice.Visible = false;
                PanelAll.Visible = true;
                PanelBackGround.Visible = false;
                MobiExpenses.Visible = true;
                ClientCredit.Visible = false;



            }
            else
            {
                StaffCreditPanelAll.Visible = false;
                PanelSevice.Visible = false;
                PanelAll.Visible = true;
                PanelBackGround.Visible = true;
                MobiExpenses.Visible = false;
                ClientCredit.Visible = false;


            }
        }

        protected void Button35_Click(object sender, EventArgs e)
        {
            if (StaffCreditPanelAll.Visible == false)
            {
                StaffCreditPanelAll.Visible = true;
                PanelSevice.Visible = false;
                PanelAll.Visible = true;
                PanelBackGround.Visible = false;
                MobiExpenses.Visible = false;
                ClientCredit.Visible = false;



            }
            else
            {
                StaffCreditPanelAll.Visible = false;
                PanelSevice.Visible = false;
                PanelAll.Visible = true;
                PanelBackGround.Visible = true;
                MobiExpenses.Visible = false;
                ClientCredit.Visible = false;


            }
        }

        protected void Button45_Click(object sender, EventArgs e)
        {
            //con.Close();
            //con.Open();
            //string l = "exec insertStartDaily '" + Label17.Text + "'";
            //SqlCommand cmd = new SqlCommand(l, con);
            //cmd.Dispose();
            //cmd.ExecuteNonQuery();
            ////Alert.Show("Successfull!");
            ////AlertLabel3.Text = "A Daily Service started Successfull!";
        }



        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            if (DropDownList26.Visible == false)
            {




                DropDownList26.Visible = true;
                DropDownList27.Visible = true;
                DropDownList37.Visible = true;
                Button66.Visible = true;
                Button56.Visible = true;
                Button69.Visible = true;
                Button41.Visible = false;
                Invoice.Visible = true;

            }
            else
            {


                DropDownList26.Visible = false;
                DropDownList27.Visible = false;
                DropDownList37.Visible = false;
                Button66.Visible = false;
                Button56.Visible = false;
                Invoice.Visible = false;
                Button69.Visible = false;
                Button41.Visible = true;

            }

            foreach (GridViewRow row in gvServed.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {


                    string idRecord = row.Cells[10].Text;
                    string IdManufacture = row.Cells[11].Text;
                    string Staffnamee = row.Cells[5].Text;
                    string NameClient = row.Cells[12].Text;
                    string SeviceName = row.Cells[3].Text;
                    string payment = row.Cells[8].Text;


                    PaymenName.Text = payment.ToString();
                    idCategory.Text = IdManufacture.ToString();
                    TextBox1.Text = idRecord.ToString();
                    DropDownList19.SelectedValue = IdManufacture.ToString();
                    //DropDownList27.SelectedValue = Payment.ToString();
                    StaffName.Text = Staffnamee.ToString();
                    Name.Text = NameClient.ToString();
                    ClientName.Text = NameClient.ToString();
                    NameOfSevice.Text = SeviceName.ToString();

                    Button56.Visible = true;
                    GridView3.DataBind();
                    TextBox26.Text = "";
                    TextBox27.Text = "";
                    TextBox29.Text = "";

                    DropDownList26.Visible = true;
                  
                    //if (DropDownList19.SelectedIndex != 0)
                    //{
                    //    //SqlConnection sqlconn = new SqlConnection(strconn);
                    //    SqlCommand sqlcmd = new SqlCommand("DeriveryService_SELECT", con);
                    //    sqlcmd.CommandType = CommandType.StoredProcedure;
                    //    sqlcmd.Parameters.AddWithValue("@IdManufacture", Convert.ToInt32(DropDownList19.SelectedValue));


                    //    SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
                    //    DataTable DT = new DataTable();
                    //    adapter.Fill(DT);


                    //    DropDownList26.DataSource = DT;
                    //    DropDownList26.DataTextField = "NameService";
                    //    DropDownList26.DataValueField = "IdService";
                    //    DropDownList26.DataBind();

                    //    DropDownList16.DataSource = DT;
                    //    DropDownList16.DataTextField = "NameService";
                    //    DropDownList16.DataValueField = "IdService";
                    //    DropDownList16.DataBind();
                    //    //DropDownList16.Items.Insert(0, "----Select Service-----");


                    //}


                    AlertLabel.Text = "";

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
                        con.Close();
                        con.Open();
                    


                        //SqlCommand cmd = new SqlCommand("update DetailSales set PayedCash='" + TextBox9.Text + "' where idRecord='" + TextBox1.Text + "'", con);
                        //cmd.ExecuteNonQuery();
                        ////Labelsave.Text = "Price Updated successfull!";
                        ////Alert.Show("Deleted successfull!");
                        //gvServed.DataBind();
                        ////AlertLabel2.Text = "Vehicle Paid Successfull!";

                        string llll = "exec UpdatePriceSett '" + TextBox1.Text + "','" + TextBox9.Text + "'";
                        SqlCommand cmdddl = new SqlCommand(llll, con);
                        cmdddl.Dispose();
                        cmdddl.ExecuteNonQuery();
                        gvServed.DataBind();

                        string lll = "exec INSERTDailyCloseNew '" + DropDownList14.SelectedValue + "'";
                        SqlCommand cmddd = new SqlCommand(lll, con);
                        cmddd.Dispose();
                        cmddd.ExecuteNonQuery();

                        Button41.Visible = true;

                        string lld = "exec paymentNewaEverDay '" + Name.Text + "','" + Label15.Text + "','" + Label17.Text + "','" + Label17.Text + "','" + DropDownList26.SelectedValue + "','" + DropDownList27.SelectedValue + "'";
                        SqlCommand cmdld = new SqlCommand(lld, con);
                        cmdld.Dispose();
                        cmdld.ExecuteNonQuery();
                   
                        //string lu = "exec insertStaffCreditPaymentNew '" + TextBox70.Text + "','" + DropDownList36.SelectedValue + "','" + Label17.Text + "','" + Label15.Text + "'";

                        //SqlCommand cmdu = new SqlCommand(lu, con);
                        //cmdu.Dispose();
                        //cmdu.ExecuteNonQuery();

                        FormView9.DataBind();
                        FormView10.DataBind();
                        FormView7.DataBind();
                        FormView11.DataBind();
                        DropDownList26.Visible = false;
                        Button56.Visible = false;
                        DropDownList26.Visible = false;
                        DropDownList27.Visible = false;
                        DropDownList37.Visible = false;
                        Button66.Visible = false;
                        Button56.Visible = false;
                        Button69.Visible = false;

                        Invoice.Visible = false;

                        //FormView15.DataBind();
                        //string ldd = "exec INSERTDailyCloseNew '" + Label3.Text + "','" + DropDownList14.SelectedValue + "'";
                        //SqlCommand cmddd = new SqlCommand(ldd, con);
                        //cmddd.Dispose();
                        //cmddd.ExecuteNonQuery();

              
            TextBox9.Text = ""; TextBox70.Text = "";
          
        
        }

        protected void Button46_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();



            if (TextBox26.Text == "")
            {
                //Alert.Show("Please Select Vehicle");
                AlertLabel.Text = "Please Select Vehicle";
            }

            //else if (DropDownList5.SelectedValue == TextBox4.Text)
            //{
            //    Alert.Show("Please Vehicle Category");
            //}

            else if (DropDownList16.Text == "----Select Service-----")
            {
                //Alert.Show("Please Select Service");
                AlertLabel.Text = "PlZ Select Service";
            }
            else if (DropDownList17.Text == "----Select Washman----")
            {
                //Alert.Show("Please Select Washman");
                AlertLabel.Text = "PlZ Select Washman";
            }
            else if (DropDownList18.Text == "----Select Payment----")
            {
                //Alert.Show("Please Select Payment");
                AlertLabel.Text = "PlZ Select Payment";
            }
            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    string l = "exec ConfirmPrice '" + TextBox29.Text + "','" + DropDownList16.SelectedValue + "','" + DropDownList17.SelectedValue + "','" + DropDownList18.SelectedValue + "','" + Label15.Text + "','" + Label16.Text + "','" + Label17.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    //AlertLabel.Text = "Submitted Successfull!";

                    string ll = "exec InsertCreditNew '" + TextBox29.Text + "','" + DropDownList18.SelectedValue + "','" + DropDownList17.SelectedValue + "','" + Label15.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();









                }
                catch (Exception ex)
                {
                    //Alert.Show("Not Saved?");
                }

                FormView10.DataBind();
                FormView9.DataBind();
                Response.Redirect("~/ServiceAll.aspx");
            }
        }

        protected void Button34_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportsMenu.aspx");
        }

        protected void Button47_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string com = "SELECT DISTINCT  [IDStaff], [StaffName] ,[NID],[phone] FROM [MStaffOperator]  where StaffName LIKE '%" + TextBox46.Text + "%'";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "MStaffOperator");
            DataView dv = new DataView(ds.Tables["MStaffOperator"]);
            DataTable dt = ds.Tables["MStaffOperator"];
            if (dt.Rows.Count != 0)
            {
                StaffMobicarwash.DataSource = dt;

                StaffMobicarwash.DataBind();
                StaffMobicarwash.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }
            //AlertLabel2.Text = "";
            //AlertLabel.Text = "";
            Panel19.Visible = true;
        }

        protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            foreach (GridViewRow row in StaffMobicarwash.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox7");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {

                    string idClient = row.Cells[0].Text;
                    string staffName = row.Cells[2].Text;


                    TextBox45.Text = idClient.ToString();
                    TextBox11.Text = staffName.ToString();
                    AlertLabel4.Text = "";
                    AlertLabel5.Text = "";
                    Label18.Visible = true;
                    Label19.Visible = true;





                }
            }
        }

        protected void Button46_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            if (TextBox45.Text == "")
            {

                AlertLabel4.Text = "PlZ Select Staff";
            }
            else if (TextBox41.Text == "")
            {

                AlertLabel4.Text = "PlZ Enter Amount";
            }
            else if (TextBox42.Text == "")
            {

                AlertLabel4.Text = "PlZ Enter Remark";
            }
            else if (DropDownList30.Text == "1")
            {
                //Alert.Show("Please Select Category");
                AlertLabel4.Text = "Plz Select Category";
            }

            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {

                    string l = "exec insertStaffCredit '" + TextBox41.Text + "','" + TextBox45.Text + "','" + TextBox42.Text + "','" + Label17.Text + "','" + Label15.Text + "','" + DropDownList30.SelectedValue + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();

                    string ldd = "exec INSERTDailyCloseNew '" + DropDownList32.SelectedValue + "'";
                    SqlCommand cmddd = new SqlCommand(ldd, con);
                    cmddd.Dispose();
                    cmddd.ExecuteNonQuery();
                    FormView12.DataBind();
                    AlertLabel4.Text = "Submitted Successfully";
                    TextBox41.Text = "";
                    //TextBox45.Text = "";
                    TextBox42.Text = "";
                    gvInformation.DataBind();





                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved");
                }
            }
        }

        protected void Button49_Click(object sender, EventArgs e)
        {
            if (PanelNewCredit.Visible == false)
            {
                PanelPayment.Visible = false;
                PanelNewCredit.Visible = true;
                Panel25All.Visible = true;


            }
            else
            {
                PanelNewCredit.Visible = false;
                PanelPayment.Visible = false;
                Panel25All.Visible = true;


            }
            AlertLabel4.Text = "";
            AlertLabel5.Text = "";
        }

        protected void Button50_Click(object sender, EventArgs e)
        {
            if (PanelPayment.Visible == false)
            {
                PanelPayment.Visible = true;
                PanelNewCredit.Visible = false;
                Panel25All.Visible = true;


            }
            else
            {
                PanelNewCredit.Visible = false;
                PanelPayment.Visible = false;
                Panel25All.Visible = true;
            }
            AlertLabel4.Text = "";
            AlertLabel5.Text = "";
        }

        protected void Button48_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            if (TextBox45.Text == "")
            {

                AlertLabel5.Text = "PlZ Select Staff";
            }
            else if (TextBox47.Text == "")
            {

                AlertLabel5.Text = "PlZ Enter Amount";
            }
            else if (TextBox48.Text == "")
            {

                AlertLabel5.Text = "PlZ Enter Remark";
            }
            else if (DropDownList31.Text == "1")
            {
                //Alert.Show("Please Select Category");
                AlertLabel5.Text = "Plz Select Category";
            }

            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {

                    string l = "exec insertStaffCreditPayment '" + TextBox47.Text + "','" + TextBox45.Text + "','" + TextBox48.Text + "','" + Label17.Text + "','" + Label15.Text + "','" + DropDownList31.SelectedValue + "'";

                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();



                    string ldd = "exec INSERTDailyCloseNew '" + DropDownList32.SelectedValue + "'";
                    SqlCommand cmddd = new SqlCommand(ldd, con);
                    cmddd.Dispose();
                    cmddd.ExecuteNonQuery();
                    FormView12.DataBind();
                    AlertLabel5.Text = "Submitted Successfully";
                    TextBox47.Text = "";
                    //TextBox45.Text = "";
                    TextBox48.Text = "";
                    gvInformation.DataBind();




                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved");
                }
            }
            string llll = "exec INSERTDailyCloseNew '" + DropDownList32.SelectedValue + "'";
            SqlCommand cmdddl = new SqlCommand(llll, con);
            cmdddl.Dispose();
            cmdddl.ExecuteNonQuery();
        }

        protected void Button52_Click(object sender, EventArgs e)
        {
            if (PanelSevice.Visible == false)
            {
                StaffCreditPanelAll.Visible = false;
                PanelSevice.Visible = true;
                PanelAll.Visible = true;
                PanelBackGround.Visible = false;
                MobiExpenses.Visible = false;
                ClientCredit.Visible = false;



            }
            else
            {
                StaffCreditPanelAll.Visible = false;
                PanelSevice.Visible = false;
                PanelAll.Visible = true;
                PanelBackGround.Visible = true;
                MobiExpenses.Visible = false;
                ClientCredit.Visible = false;




            }
            FormView10.DataBind();
            FormView11.DataBind();
            FormView9.DataBind();
        }

        protected void Button51_Click(object sender, EventArgs e)
        {
            if (gvServed.Visible == false)
            {

                gvServed.Visible = true;



            }
            else
            {
                gvServed.Visible = false;

            }
            AlertLabel7.Text = "";
            gvServed.DataBind();
        }

        protected void Button53_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            if (TextBox49.Text == "")
            {

                AlertLabel6.Text = "PlZ Enter Amount";
            }
            else if (TextBox50.Text == "")
            {

                AlertLabel6.Text = "PlZ Enter Remark";
            }

            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {


                    //string l = "exec insertExpenses '" + TextBox6.Text + "','" + TextBox7.Text + "','" + Label1.Text + "','" + Label3.Text + "'";

                    string l = "exec insertExpenses '" + TextBox49.Text + "','" + TextBox50.Text + "','" + Label15.Text + "','" + Label17.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();



                    string ldd = "exec INSERTDailyCloseNew '" + DropDownList33.SelectedValue + "'";
                    SqlCommand cmddd = new SqlCommand(ldd, con);
                    cmddd.Dispose();
                    cmddd.ExecuteNonQuery();
                    FormView12.DataBind();
                    StaffMobicarwash0.DataBind();
                    AlertLabel6.Text = "Submitted Successfully";
                    TextBox49.Text = "";
                    //TextBox45.Text = "";
                    TextBox50.Text = "";





                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved");
                }
            }
        }

        protected void Button56_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in gvServed.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");

                if (checkbox.Checked)
                {
                    if (DropDownList26.Text == "")
                    {

                        Alert.Show("Please Enter Paid Cash");
                    }
                    else
                    {
                        //
                        con.Close();
                        con.Open();
                        string IDRECORD = row.Cells[10].Text;


                        SqlCommand cmd = new SqlCommand("update DetailSales set IdService='" + DropDownList26.SelectedValue + "',IDPayment='" + DropDownList27.SelectedValue + "' where idRecord='" + IDRECORD + "'", con);
                        cmd.ExecuteNonQuery();
                        //Labelsave.Text = "Price Updated successfull!";
                        //Alert.Show("Deleted successfull!");
                        gvServed.DataBind();
                        //AlertLabel2.Text = "Updated Successfull!";

                        FormView9.DataBind();
                        FormView10.DataBind();
                        FormView11.DataBind();
                        DropDownList26.Visible = false;
                        Button56.Visible = false;
                        //AlertLabel12.Visible = false;
                        FormView15.Visible = false;
                        TextBox9.Visible = false;
                        TextBox70.Visible = false;
                        Button1.Visible = false;
                        DropDownList26.Visible = false;
                        DropDownList27.Visible = false;
                        DropDownList37.Visible = false;
                        Button66.Visible = false;
                        Button56.Visible = false;
                        //string ldd = "exec INSERTDailyCloseNew '" + Label3.Text + "','" + DropDownList14.SelectedValue + "'";
                        //SqlCommand cmddd = new SqlCommand(ldd, con);
                        //cmddd.Dispose();
                        //cmddd.ExecuteNonQuery();

                    }

                }
            }
            TextBox9.Text = ""; TextBox70.Text = "";
        }

        protected void DropDownList28_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button59_Click(object sender, EventArgs e)
        {
            if (TextBox55.Text == "")
            {
                //Alert.Show("Client Name");
                GridView9.DataBind();


            }
            else
            {
                con.Close();
                con.Open();
                string com = "SELECT DISTINCT Name  FROM CompanyVehicles where Name LIKE '%" + TextBox55.Text + "%'";
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


            }
        }

        protected void CheckBox9_CheckedChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView9.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox9");



                if (checkbox.Checked)
                {
                    con.Close();
                    con.Open();


                    string Names = row.Cells[1].Text;
                    DropDownList28.SelectedValue = Names.ToString();
                    TextBox63.Text = Names.ToString();
                    GridClientPayment.Visible = true;
                    FormView13.Visible = true;
                    DropDownList29.Visible = true;
                    Button60.Visible = true;
                    Button61.Visible = true;
                    TextBox62.Visible = true;
                    Label36.Visible = true;
                    Label37.Visible = true;

                }
            }
        }

        protected void Button60_Click(object sender, EventArgs e)
        {


        }

        protected void Button60_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            foreach (GridViewRow row in GridClientPayment.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox3");

                if (checkbox.Checked)
                {

                    if (TextBox62.Text == "")
                    {

                        //AlertLabel8.Text = "Enter Paid Amount";
                    }
                    else
                    {


                        string IDRECORD = row.Cells[9].Text;



                        SqlCommand cmda = new SqlCommand("update DetailSales set IDPayment='" + TextBox64.Text + "' where idRecord='" + IDRECORD + "'", con);
                        cmda.ExecuteNonQuery();

                        ////string ll = "exec updatePayment '" + row.Cells[9].Text + "'";
                        ////SqlCommand cmdd = new SqlCommand(ll, con);
                        ////cmdd.Dispose();
                        ////cmdd.ExecuteNonQuery();


                    }

                }

            }


            string l = "exec paymentNewa '" + DropDownList28.Text + "','" + TextBox62.Text + "','" + DropDownList29.Text + "','" + Label15.Text + "','" + Label16.Text + "','" + Label17.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
            //Alert.Show("Saved Successfull!");
            AlertLabel8.Text = "Submitted Successfull!";

            TextBox62.Text = "";
            //TextBox56.Text = "";
            GridClientPayment.DataBind();
            FormView13.Visible = false;
            DropDownList29.Visible = false;
            Button60.Visible = false;
            Button61.Visible = false;
            TextBox62.Visible = false;
            Label36.Visible = false;
            Label37.Visible = false;
            StaffCreditPanel0.Visible = false;

            string com = "SELECT idRecord, Name, oldCredit, Remain, paid, oldCredit + Remain - paid AS Reman, userAdded, dateRecorded, dateAdded FROM ViewPaymentNew WHERE (Remain > 0)  OR (Name='" + DropDownList28.SelectedValue + "') AND (IDPayment = 2) AND (paid > 0) ORDER BY dateRecorded DESC";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "ViewPaymentNew");
            DataView dv = new DataView(ds.Tables["ViewPaymentNew"]);
            DataTable dt = ds.Tables["ViewPaymentNew"];
            if (dt.Rows.Count != 0)
            {
                GridClientPayment0.DataSource = dt;
                GridClientPayment0.DataBind();
                GridClientPayment0.Visible = true;
                GridClientPayment.Visible = false;
                //Button62.Visible = true;
                //TextBox65.Visible = true;


            }

            string llll = "exec INSERTDailyCloseNew '" + DropDownList34.SelectedValue + "'";
            SqlCommand cmdddl = new SqlCommand(llll, con);
            cmdddl.Dispose();
            cmdddl.ExecuteNonQuery();

        }

        protected void Button36_Click(object sender, EventArgs e)
        {
            if (ClientCredit.Visible == false)
            {
                StaffCreditPanelAll.Visible = false;
                PanelSevice.Visible = false;
                PanelAll.Visible = true;
                PanelBackGround.Visible = false;
                MobiExpenses.Visible = false;
                ClientCredit.Visible = true;



            }
            else
            {
                StaffCreditPanelAll.Visible = false;
                PanelSevice.Visible = false;
                PanelAll.Visible = true;
                PanelBackGround.Visible = true;
                MobiExpenses.Visible = false;
                ClientCredit.Visible = false;


            }
        }

        protected void CheckBox2_CheckedChanged1(object sender, EventArgs e)
        {

        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            foreach (GridViewRow row in GridClientPayment.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox3");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {

                    string idRecord = row.Cells[9].Text;
                    TextBox61.Text = idRecord.ToString();




                }
            }
        }

        protected void Button61_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            if (GridClientPayment0.Visible == true)
            {

                string com = "SELECT idRecord, Name, oldCredit, Remain, paid, oldCredit + Remain - paid AS Reman, userAdded, dateRecorded, dateAdded FROM ViewPaymentNew WHERE (Remain > 0)  OR (Name='" + DropDownList28.SelectedValue + "') AND (IDPayment = 2) AND (paid > 0) ORDER BY dateRecorded DESC";
                SqlDataAdapter da = new SqlDataAdapter(com, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "ViewPaymentNew");
                DataView dv = new DataView(ds.Tables["ViewPaymentNew"]);
                DataTable dt = ds.Tables["ViewPaymentNew"];
                if (dt.Rows.Count != 0)
                {
                    GridClientPayment0.DataSource = dt;
                    GridClientPayment0.DataBind();
                    GridClientPayment0.Visible = true;
                    GridClientPayment.Visible = false;
                    //Button62.Visible = true;
                    //TextBox65.Visible = true;


                }



            }
            else
            {
                GridClientPayment0.Visible = false;
                GridClientPayment.Visible = true;
                //Button62.Visible = false;
                //TextBox65.Visible = false;

            }



        }

        protected void DropDownListYEAR3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListYEAR4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList29_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void GridClientPayment0_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button62_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridClientPayment0.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox10");

                if (checkbox.Checked)
                {

                    if (TextBox65.Text == "")
                    {

                        AlertLabel8.Text = "Enter Repaid Amount";
                    }
                    else
                    {

                        con.Close();
                        con.Open();
                        string IDRECORD = row.Cells[8].Text;

                        string l = "exec paymentNewaa '" + TextBox66.Text + "','" + DropDownList28.Text + "','" + TextBox65.Text + "','" + Label15.Text + "','" + Label16.Text + "','" + Label17.Text + "'";
                        SqlCommand cmd = new SqlCommand(l, con);
                        cmd.Dispose();
                        cmd.ExecuteNonQuery();




                        string llll = "exec INSERTDailyCloseNew '" + DropDownList34.SelectedValue + "'";
                        SqlCommand cmdddl = new SqlCommand(llll, con);
                        cmdddl.Dispose();
                        cmdddl.ExecuteNonQuery();

                        string com = "SELECT idRecord, Name,  Remain as TotalCredit,paid ,Remain-paid As Reman, userAdded, dateRecorded, dateAdded FROM ViewPaymentNew WHERE (Name='" + DropDownList28.SelectedValue + "') ORDER BY idRecord DESC";
                        SqlDataAdapter da = new SqlDataAdapter(com, con);
                        DataSet ds = new DataSet();
                        da.Fill(ds, "ViewPaymentNew");
                        DataView dv = new DataView(ds.Tables["ViewPaymentNew"]);
                        DataTable dt = ds.Tables["ViewPaymentNew"];
                        if (dt.Rows.Count != 0)
                        {
                            GridClientPayment0.DataSource = dt;
                            GridClientPayment0.DataBind();
                            GridClientPayment0.Visible = true;
                            GridClientPayment.Visible = false;
                            //Button62.Visible = true;
                            //TextBox65.Visible = true;


                        }




                    }

                }

            }
            Button62.Visible = false;
            TextBox65.Visible = false;
            Label39.Visible = false;
            TextBox67.Visible = false;
            AlertLabel11.Text = "Saved Successfull!";
            TextBox65.Text = "";


        }

        protected void CheckBox10_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            foreach (GridViewRow row in GridClientPayment0.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox10");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {

                    string idRecord = row.Cells[8].Text;
                    string Remain = row.Cells[5].Text;
                    TextBox66.Text = idRecord.ToString();
                    TextBox67.Text = Remain.ToString();
                    Button62.Visible = true;
                    TextBox65.Visible = true;
                    Label39.Visible = true;
                    TextBox67.Visible = true;
                    StaffCreditPanel0.Visible = false;
                    AlertLabel11.Text = "";

                    string com = "SELECT idRecord, Name,  Remain as TotalCredit,paid ,Remain-paid As Reman, userAdded, dateRecorded, dateAdded FROM ViewPaymentNew WHERE (Name='" + DropDownList28.SelectedValue + "' AND  idRecord='" + TextBox66.Text + "') ORDER BY idRecord DESC";
                    SqlDataAdapter da = new SqlDataAdapter(com, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "ViewPaymentNew");
                    DataView dv = new DataView(ds.Tables["ViewPaymentNew"]);
                    DataTable dt = ds.Tables["ViewPaymentNew"];
                    if (dt.Rows.Count != 0)
                    {
                        GridClientPayment0.DataSource = dt;
                        GridClientPayment0.Visible = true;
                        GridClientPayment.Visible = false;
                        //Button62.Visible = true;
                        //TextBox65.Visible = true;


                    }









                }
            }
        }

        protected void Button37_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button63_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string com = "SELECT   Name, Phone, brand, PlateNumber, manufactureName,  idClient, IdManufacture FROM WebRecoredVehicle1  where PlateNumber LIKE '%" + TextBox68.Text + "%'";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WebRecoredVehicle1");
            DataView dv = new DataView(ds.Tables["WebRecoredVehicle1"]);
            DataTable dt = ds.Tables["WebRecoredVehicle1"];
            if (dt.Rows.Count != 0)
            {
                GridView10.DataSource = dt;

                GridView10.DataBind();
                GridView10.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }
            //AlertLabel2.Text = "";
            //AlertLabel.Text = "";
            //AlertLabel3.Text = "";
            //AlertLabel7.Text = "";
            //DropDownList26.Visible = false;
            //Button56.Visible = false;
            //gvServed.Visible = false;
            //DropDownList17.DataBind();
            //DropDownList18.DataBind();
        }

        protected void CheckBox12_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            foreach (GridViewRow row in GridView10.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox12");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {

                    string idClient = row.Cells[6].Text;
                    string clientName = row.Cells[3].Text;
                    string phone = row.Cells[4].Text;
                    string Vehicle = row.Cells[2].Text;
                    string PlteNo = row.Cells[1].Text;
                    string category = row.Cells[7].Text;




                    TextBox69.Text = idClient.ToString();
                    TextBox37.Text = clientName.ToString();
                    TextBox38.Text = phone.ToString();
                    TextBox39.Text = Vehicle.ToString();
                    TextBox40.Text = PlteNo.ToString();
                    DropDownList24.SelectedValue = category.ToString();



                }
            }
        }

        protected void Button64_Click(object sender, EventArgs e)
        {
            if (TextBox37.Text == "")
            {
                //Alert.Show("Plz Enter Client");
                AlertLabel0.Text = "Plz Enter Client";
            }
            else if (TextBox38.Text == "")
            {
                //Alert.Show("Please Enter Client Contact");
                AlertLabel0.Text = "Plz Enter Contact No";
            }
            else if (TextBox39.Text == "")
            {
                //Alert.Show("Please write Vehicle Type");
                AlertLabel0.Text = "Plz Enter Vehicle Type";
            }
            else if (TextBox40.Text == "")
            {
                //Alert.Show("Please write Vehicle Type");
                AlertLabel0.Text = "Plz Enter Plate No";
            }
            else if (DropDownList24.Text == "----Select Category----")
            {
                //Alert.Show("Please Select Category");
                AlertLabel0.Text = "Plz Enter Select Category";
            }
            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec UpdateCOmpanyCar '" + TextBox69.Text + "','" + TextBox37.Text + "','" + TextBox38.Text + "','" + TextBox39.Text + "','" + TextBox40.Text + "','" + DropDownList24.SelectedValue + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    //Alert.Show("Saved Successfull!");
                    AlertLabel0.Text = "Upadted Successfull!";
                    //AlertLabel2.Text = "";
                    DropDownList26.Visible = false;
                    Button56.Visible = false;

                    TextBox37.Text = TextBox38.Text = TextBox39.Text = TextBox40.Text = TextBox40.Text = "";

                    GridView10.DataBind();
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }
            string llll = "exec INSERTDailyCloseNew '" + DropDownList35.SelectedValue + "'";
            SqlCommand cmdddl = new SqlCommand(llll, con);
            cmdddl.Dispose();
            cmdddl.ExecuteNonQuery();
        }

        protected void Button65_Click(object sender, EventArgs e)
        {
            //if (PanelSevice.Visible == false)
            //{
            //    StaffCreditPanelAll.Visible = false;
            //    PanelSevice.Visible = true;
            //    PanelAll.Visible = true;
            //    PanelBackGround.Visible = false;
            //    MobiExpenses.Visible = false;
            //    ClientCredit.Visible = false;



            //}
            //else
            //{
            //    StaffCreditPanelAll.Visible = false;
            //    PanelSevice.Visible = false;
            //    PanelAll.Visible = true;
            //    PanelBackGround.Visible = true;
            //    MobiExpenses.Visible = false;
            //    ClientCredit.Visible = false;




            //}
            //FormView10.DataBind();
            //FormView11.DataBind();
            //FormView9.DataBind();
        }

        protected void DropDownList27_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList18_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button65_Click1(object sender, EventArgs e)
        {

        }

        protected void gvServed_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList14_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList17_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList16_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvServed_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    if ((double.Parse(e.Row.Cells[7].Text) == 0) && ((e.Row.Cells[8].Text == "Cash") || (e.Row.Cells[8].Text == "MoMo Pay")))
                    {
                        e.Row.Cells[5].ForeColor = Color.Yellow;
                    }
                    if ((e.Row.Cells[3].Text == "Discount S-CW") || (e.Row.Cells[3].Text == "Discount G-CW"))
                    {
                        e.Row.Cells[5].ForeColor = Color.White;
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
            foreach (GridViewRow row in gvServed.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");

                if (checkbox.Checked)
                {
                    if (DropDownList26.Text == "")
                    {

                        Alert.Show("Please Enter Paid Cash");
                    }
                    else
                    {
                        //
                        con.Close();
                        con.Open();
                        string IDRECORD = row.Cells[10].Text;


                        SqlCommand cmd = new SqlCommand("update DetailSales set IDStaff='" + DropDownList37.SelectedValue + "' where idRecord='" + IDRECORD + "'", con);
                        cmd.ExecuteNonQuery();
                        //Labelsave.Text = "Price Updated successfull!";
                        //Alert.Show("Deleted successfull!");
                        gvServed.DataBind();
                        //AlertLabel2.Text = "Updated Successfull!";

                        FormView9.DataBind();
                        FormView10.DataBind();
                        FormView11.DataBind();
                        DropDownList26.Visible = false;
                        Button56.Visible = false;
                        //AlertLabel12.Visible = false;
                        FormView15.Visible = false;
                        TextBox9.Visible = false;
                        TextBox70.Visible = false;
                        Button1.Visible = false;
                        DropDownList26.Visible = false;
                        DropDownList27.Visible = false;
                        DropDownList37.Visible = false;
                        Button66.Visible = false;
                        Button56.Visible = false;
                        //string ldd = "exec INSERTDailyCloseNew '" + Label3.Text + "','" + DropDownList14.SelectedValue + "'";
                        //SqlCommand cmddd = new SqlCommand(ldd, con);
                        //cmddd.Dispose();
                        //cmddd.ExecuteNonQuery();

                    }

                }
            }
            TextBox9.Text = ""; TextBox70.Text = "";
        }

        protected void Button67_Click(object sender, EventArgs e)
        {
            //if (DropDownList38.Visible == false)
            //{


            //    Button68.Visible = true;
            //    DropDownList38.Visible = true;
            //    DropDownList39.Visible = true;
            //    FormView18.Visible = true;
            //    FormView19.Visible = true;



            //}
            //else
            //{
            //    Button68.Visible = false;
            //    DropDownList38.Visible = false;
            //    DropDownList39.Visible = false;
            //    FormView18.Visible = false;
            //    FormView19.Visible = false;


            //}
        }

        protected void Button68_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string l = "exec insertSaving '" + DropDownList38.Text + "','" + DropDownList39.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();

            string lll = "exec INSERTDailyCloseNew '" + DropDownList14.SelectedValue + "'";
            SqlCommand cmddd = new SqlCommand(lll, con);
            cmddd.Dispose();
            cmddd.ExecuteNonQuery();
            AlertLabel13.Text = "Saved Successfull!";

            Button68.Visible = false;
            DropDownList38.Visible = false;
            DropDownList39.Visible = false;
            FormView18.Visible = false;
            FormView19.Visible = false;
            FormView18.DataBind();
            FormView19.DataBind();

            AlertLabel13.Text = "";

        }

        protected void CheckBox25_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            if (Invoice.Visible == false)
            {
                ServiceDervery.Visible = false;
                Registration.Visible = false;
                ServiceRegista.Visible = true;
                Invoice.Visible = true;
                Button69.Visible = true;







            }
            else
            {
                ServiceDervery.Visible = true;
                Registration.Visible = false;
                ServiceRegista.Visible = true;
                Invoice.Visible = false;
                Button69.Visible = false;




            }

            foreach (GridViewRow row in gvServed.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox25");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {


                    string idRecord = row.Cells[10].Text;
                    TextBox1.Text = idRecord.ToString();

                }
            }
        }

        protected void TextBox73_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox26_TextChanged(object sender, EventArgs e)
        {

        }

        protected void gvInformation_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridClientPayment_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList39_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox28_TextChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string com = "SELECT top 5  Name, Phone, brand, PlateNumber, manufactureName,  idClient, IdManufacture FROM WebRecoredVehicle1  where PlateNumber LIKE '%" + TextBox28.Text + "%'";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WebRecoredVehicle1");
            DataView dv = new DataView(ds.Tables["WebRecoredVehicle1"]);
            DataTable dt = ds.Tables["WebRecoredVehicle1"];
            if (dt.Rows.Count != 0)
            {
                GridView3.DataSource = dt;
                GridView3.DataBind();
                GridView3.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }
            //AlertLabel2.Text = "";
            AlertLabel.Text = "";
            //AlertLabel3.Text = "";
            AlertLabel7.Text = "";
            DropDownList26.Visible = false;
            Button56.Visible = false;
            gvServed.Visible = false;
            DropDownList17.DataBind();
            DropDownList18.DataBind();
        }

        protected void Button69_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ServiceAll.aspx");
        }

    }
}