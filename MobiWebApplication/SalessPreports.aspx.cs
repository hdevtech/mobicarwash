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
    public partial class WebForm63 : System.Web.UI.Page
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

           
        }

        protected void Button41_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            //Button imgbtn = sender as Button;
            //GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            //string getId = GridClientPayment3.DataKeys[row.RowIndex].Values[0].ToString();
            //System.Diagnostics.Debug.WriteLine(getId);
            //Label4.Text = getId;

            //string l = "exec BarinsertPuchase2Delete '" + Label4.Text + "'";
            //SqlCommand cmd = new SqlCommand(l, con);
            //cmd.Dispose();
            //cmd.ExecuteNonQuery();
            //Label2.Text = "Deleled Successfull!";
         
            //DataList5.DataBind();
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
           
        }

        protected void Button81_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button82_Click(object sender, EventArgs e)
        {
        
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
            
        }

        protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button94_Click(object sender, EventArgs e)
        {




        }

        protected void Button95_Click(object sender, EventArgs e)
        {


        }

        protected void MonthlyReports_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridClientPayment9_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}