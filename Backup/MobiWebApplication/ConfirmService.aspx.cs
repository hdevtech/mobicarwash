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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=SmartAdimin; Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = Session["Next"].ToString();

            //SqlDataAdapter sqlddr = new SqlDataAdapter("select top 1 * from WebRepetition1 where PlateNumber like '%" + TextBox9.Text + "%'", con);
            //DataTable dtttr = new DataTable();
            //sqlddr.Fill(dtttr);
            //gvInformation1.DataSource = dtttr;
            //gvInformation1.DataBind();
            //con.Close();

         

           


            if (Page.IsPostBack == false)
            {
                //SqlConnection con = new SqlConnection(strconn);
                SqlCommand sqlcmd = new SqlCommand("VehicleManufacture_SELECT", con);
                sqlcmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
                DataTable DT = new DataTable();
                adapter.Fill(DT);

                DropDownList5.DataSource = DT;
                DropDownList5.DataTextField = "manufactureName";
                DropDownList5.DataValueField = "IdManufacture";
                DropDownList5.DataBind();
                DropDownList5.Items.Insert(0, "----Select Category----");
                DropDownList6.Items.Insert(0, "----Select Service-----");
                //DropDownList2.Items.Insert(0, "----Select Washman----");
                //DropDownList4.Items.Insert(0, "----Select Payment----");
               
                //drpcity.Items.Insert(0, "SELECT");
            }

            ////////////////////////////////////////////////////
            if (Page.IsPostBack == false)
            {
                //SqlConnection con = new SqlConnection(strconn);
                SqlCommand sqlcmdd = new SqlCommand("WashMan_SELECT", con);
                sqlcmdd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapterr = new SqlDataAdapter(sqlcmdd);
                DataTable DTT = new DataTable();
                adapterr.Fill(DTT);

                DropDownList2.DataSource = DTT;
                DropDownList2.DataTextField = "StaffName";
                DropDownList2.DataValueField = "IDStaff";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, "----Select Washman----");
               
                
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

                DropDownList4.DataSource = DTTT;
                DropDownList4.DataTextField = "Payment";
                DropDownList4.DataValueField = "IDPayment";
                DropDownList4.DataBind();
                DropDownList4.Items.Insert(0, "----Select Payment----");
                //drpcity.Items.Insert(0, "SELECT");
            }


            /////////////////////////////////////////////////
        


            ////////////////////////////////////////////////
           
                
            

           
        }
                  


        protected void gvSales_SelectedIndexChanged(object sender, EventArgs e)
        {

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
            TextBox1.Text = dtt.Rows[0]["PlateNumber"].ToString();
            TextBox2.Text = dtt.Rows[0]["brand"].ToString();
            TextBox3.Text = dtt.Rows[0]["Name"].ToString();
            TextBox4.Text = dtt.Rows[0]["manufactureName"].ToString();           
            TextBox6.Text = dtt.Rows[0]["idClient"].ToString();         
            ////TextBox8.Text = dtt.Rows[0]["IdService"].ToString();           
            DropDownList5.SelectedValue = dtt.Rows[0]["IdManufacture"].ToString();
            //DropDownList5.SelectedValue = dtt.Rows[0]["manufactureName"].ToString();


            if (DropDownList5.SelectedIndex != 0)
            {
                //SqlConnection sqlconn = new SqlConnection(strconn);
                SqlCommand sqlcmd = new SqlCommand("DeriveryService_SELECT", con);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.AddWithValue("@IdManufacture", Convert.ToInt32(DropDownList5.SelectedValue));

                SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
                DataTable DT = new DataTable();
                adapter.Fill(DT);

                DropDownList6.DataSource = DT;
                DropDownList6.DataTextField = "NameService";
                DropDownList6.DataValueField = "IdService";
                DropDownList6.DataBind();
                DropDownList6.Items.Insert(0, "----Select Service-----");
        

            }
            


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            


            if (TextBox6.Text == "")
            {
                Alert.Show("Please Select Vehicle");
            }

            //else if (DropDownList5.SelectedValue == TextBox4.Text)
            //{
            //    Alert.Show("Please Vehicle Category");
            //}
                           
            else if (DropDownList6.Text == "----Select Service-----")
            {
                Alert.Show("Please Select Service");
            }
            else if (DropDownList2.Text == "----Select Washman----")
            {
                Alert.Show("Please Select Washman");
            }
            else if (DropDownList4.Text == "----Select Payment----")
            {
                Alert.Show("Please Select Payment");
            }
            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    string l = "exec ConfirmPrice '" + TextBox6.Text + "','" + DropDownList6.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + Label1.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();

                    string ll = "exec InsertCreditNew '" + TextBox6.Text + "','" + DropDownList4.SelectedValue + "','" + DropDownList6.SelectedValue + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();
                    Alert.Show("Submitted Successfull!");

                    SqlDataAdapter sqlddr = new SqlDataAdapter("select top 1 * from WebRepetition1 where PlateNumber like '%" + TextBox9.Text + "%'", con);
                    DataTable dtttr = new DataTable();
                    sqlddr.Fill(dtttr);
                    gvInformation1.DataSource = dtttr;
                    gvInformation1.DataBind();
                    con.Close();

                    TextBox6.Text = TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";


                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }
        
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //con.Open();           
            //SqlCommand cmda = new SqlCommand("select IdService,NameService from ServiceDerivery where IdManufacture='" + DropDownList1.SelectedValue + "'", con);
           
            //DropDownList6.DataSource = cmda.ExecuteReader();
            //DropDownList6.DataTextField = "IdService";
            //DropDownList6.DataValueField = "IdService";
            //DropDownList6.DataBind();
            //con.Close();
            
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {

            //if (!Page.IsPostBack)
            //{
            //    //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
            //    //SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=SmartAdimin; Integrated Security=True");
            //    SqlCommand cmdd = new SqlCommand("select * from ServiceDerivery where IdManufacture='" + DropDownList5.SelectedValue + "'", con);
            //    SqlDataAdapter sdad = new SqlDataAdapter(cmdd);
            //    DataTable dtd = new DataTable();
            //    sdad.Fill(dtd);
            //    DropDownList6.DataSource = dtd;
            //    DropDownList6.DataTextField = "NameService";
            //    DropDownList6.DataValueField = "IdService";
            //    DropDownList6.DataBind();



            ////}  


            //{

            //    SqlCommand cmdd = new SqlCommand("select IdService,NameService,IdManufacture from ServiceDerivery where IdManufacture='" + DropDownList5.SelectedValue + "'", con);
            //    con.Open();
            //    DropDownList6.DataSource = cmdd.ExecuteReader();
            //    DropDownList6.DataTextField = "NameService";
            //    DropDownList6.DataValueField = "IdService";
            //    DropDownList6.DataBind();
            //    con.Close();
            //}
          

        }

        protected void DropDownList5_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList5_SelectedIndexChanged1(object sender, EventArgs e)
        {


            //if (DropDownList5.SelectedIndex != 0)
            //{
            //    //SqlConnection sqlconn = new SqlConnection(strconn);
            //    SqlCommand sqlcmd = new SqlCommand("DeriveryService_SELECT", con);
            //    sqlcmd.CommandType = CommandType.StoredProcedure;
            //    sqlcmd.Parameters.AddWithValue("@IdManufacture", Convert.ToInt32(DropDownList5.SelectedValue));

            //    SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
            //    DataTable DT = new DataTable();
            //    adapter.Fill(DT);

            //    DropDownList6.DataSource = DT;
            //    DropDownList6.DataTextField = "NameService";
            //    DropDownList6.DataValueField = "IdService";
            //    DropDownList6.DataBind();
            //    DropDownList6.Items.Insert(0, "----Select Service-----");

            //}


            
        }

        protected void DropDownList5_Disposed(object sender, EventArgs e)
        {

        }

        protected void DropDownList5_SelectedIndexChanged2(object sender, EventArgs e)
        {



          
              

        }

        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter sqldd = new SqlDataAdapter("select top 1 * from WebRecoredVehicle1 where PlateNumber like '%" + TextBox9.Text + "%'", con);
            DataTable dttt = new DataTable();
            sqldd.Fill(dttt);
            gvInformation.DataSource = dttt;
            gvInformation.DataBind();
      

        
            SqlDataAdapter sqlddr = new SqlDataAdapter("select top 1 * from WebRepetition1 where PlateNumber like '%" + TextBox9.Text + "%'", con);
            DataTable dtttr = new DataTable();
            sqlddr.Fill(dtttr);
            gvInformation1.DataSource = dtttr;
            gvInformation1.DataBind();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServedVehicle.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientCredit.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffCredit.aspx");
        }

        protected void TextBox9_TextChanged(object sender, EventArgs e)
        {

        }

        protected void gvInformation1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Service.aspx");
        }
        }
        }
    

