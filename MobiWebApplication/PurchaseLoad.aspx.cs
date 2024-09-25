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
    public partial class WebForm62 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            //Label2.Text = cstTime.ToShortDateString();
            Label3.Text = cstTime.ToString();


            if ((Session["role_ame"] != null))
            {

                UserName.Text = Session["UserName"].ToString();
                RoleName.Text = Session["role_ame"].ToString();
                
            }
            else
            {

                Response.Redirect("~/Default.aspx");
            }
        }

        protected void TextBox41_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button75_Click(object sender, EventArgs e)
        {
          
            con.Close();
            con.Open();


            foreach (GridViewRow row in gvInformation3.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");

                TextBox QUnty = (TextBox)row.FindControl("TextBox26");
               TextBox QUntP = (TextBox)row.FindControl("TextBox7");

                if (checkbox.Checked)
                {
                 
                        string idProduct = row.Cells[1].Text;

                        string l = "exec BarinsertPuchase2 '" + row.Cells[1].Text + "','" + QUnty.Text + "','" + QUntP.Text + "','" + Label3.Text + "','" + UserName.Text + "'";
                        SqlCommand cmd = new SqlCommand(l, con);
                        cmd.Dispose();
                        cmd.ExecuteNonQuery();
                        Label2.Text = "Submitted Successfull!";
                        GridClientPayment3.DataBind();
                        gvInformation3.DataBind();
                        DataList5.DataBind();
                        gvInformation3.DataBind();

                        QUnty.Text = QUntP.Text = "";
                        gvInformation3.Visible = false;
                                      

                }
            }
            //00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation6.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox5");

                TextBox QUntM = (TextBox)row.FindControl("TextBox25");
               TextBox QUntN = (TextBox)row.FindControl("TextBox8");

                if (checkbox.Checked)
                {
                    
                        string idProduct = row.Cells[1].Text;


                        string l = "exec BarinsertPuchase2 '" + row.Cells[1].Text + "','" + QUntM.Text + "','" + QUntN.Text + "','" + Label3.Text + "','" + UserName.Text + "'";
                        SqlCommand cmdd = new SqlCommand(l, con);
                        cmdd.Dispose();
                        cmdd.ExecuteNonQuery();
                        Label2.Text = "Submitted Successfull!";
                        GridClientPayment3.DataBind();
                        gvInformation6.DataBind();
                        DataList5.DataBind();
                        gvInformation6.DataBind();
                        QUntM.Text = QUntN.Text = "";
                        gvInformation6.Visible = false;
                

                }
            }

            ////00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation8.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox6");

                TextBox QUntD = (TextBox)row.FindControl("TextBox27");
                TextBox QUntC = (TextBox)row.FindControl("TextBox43");

                if (checkbox.Checked)
                {
                   
                        string idProduct = row.Cells[1].Text;

                        string l = "exec BarinsertPuchase2 '" + row.Cells[1].Text + "','" + QUntD.Text + "','" + QUntC.Text + "','" + Label3.Text + "','" + UserName.Text + "'";
                        SqlCommand cmddd = new SqlCommand(l, con);
                        cmddd.Dispose();
                        cmddd.ExecuteNonQuery();
                        Label2.Text = "Submitted Successfull!";
                        GridClientPayment3.DataBind();
                        gvInformation8.DataBind();
                        DataList5.DataBind();
                        QUntD.Text = QUntC.Text = "";
                        gvInformation8.Visible = false;
                                     


                }
            }

            ////00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation9.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox7");

                TextBox QUntT = (TextBox)row.FindControl("TextBox45");
                TextBox QUntK = (TextBox)row.FindControl("TextBox46");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;

                    string l = "exec BarinsertPuchase2 '" + row.Cells[1].Text + "','" + QUntT.Text + "','" + QUntK.Text + "','" + Label3.Text + "','" + UserName.Text + "'";
                    SqlCommand cmddd = new SqlCommand(l, con);
                    cmddd.Dispose();
                    cmddd.ExecuteNonQuery();
                    Label2.Text = "Submitted Successfull!";
                    GridClientPayment3.DataBind();
                    gvInformation9.DataBind();
                    DataList5.DataBind();
                    QUntT.Text = QUntK.Text = "";
                    gvInformation9.Visible = false;



                }
            }
            Response.Redirect("PurchaseLoad.aspx");
        }

        protected void Button76_Click(object sender, EventArgs e)
        {
            if (Panel2.Visible == false)
            {
                Panel2.Visible = true;
                Panel1.Visible = false;
               
                
            }
            else
            {
                Panel2.Visible = false;
                Panel1.Visible = true;
                             

            }
        }

        protected void Button79_Click(object sender, EventArgs e)
        {
                   
            if (TextBox44.Text == "")
            {

                Label1.Text = "Plz Enter New Item Name";
            }
            

            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec BarNewItem '" + TextBox44.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();                   
                   
                    TextBox44.Text = "";
                    Panel2.Visible = false;
                    Panel1.Visible = true;
                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }

        }

        protected void Button41_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = GridClientPayment3.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label4.Text = getId;

            string l = "exec BarinsertPuchase2Delete '" + Label4.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();
            Label2.Text = "Deleled Successfull!";
            GridClientPayment3.DataBind();
            DataList5.DataBind();
        }

        protected void CheckBox2_CheckedChanged1(object sender, EventArgs e)
        {

        }

        protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button80_Click(object sender, EventArgs e)
        {
            if (gvInformation3.Visible == false)
            {
                gvInformation3.Visible = true;
                


            }
            else
            {
                gvInformation3.Visible = false;
                


            }
        }

        protected void Button81_Click(object sender, EventArgs e)
        {
            if (gvInformation6.Visible == false)
            {
                gvInformation6.Visible = true;



            }
            else
            {
                gvInformation6.Visible = false;



            }
        }

        protected void Button82_Click(object sender, EventArgs e)
        {
            if (gvInformation8.Visible == false)
            {
                gvInformation8.Visible = true;



            }
            else
            {
                gvInformation8.Visible = false;



            }
        }

        protected void Button92_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void ProductsSkol_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button93_Click(object sender, EventArgs e)
        {
            if (gvInformation9.Visible == false)
            {
                gvInformation9.Visible = true;



            }
            else
            {
                gvInformation9.Visible = false;



            }
        }

        protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button94_Click(object sender, EventArgs e)
        {
            
                

                if (GridClientPayment3.Visible == false)
                {
                    GridClientPayment3.Visible = true;
                    GridClientPayment3.Enabled = true;



                }
                else
                {
                    GridClientPayment3.Visible = false;
                    GridClientPayment3.Enabled = false;



                }

                      
        }

        protected void Button95_Click(object sender, EventArgs e)
        {
            

        }

        protected void GridClientPayment3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ServedDrink1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}