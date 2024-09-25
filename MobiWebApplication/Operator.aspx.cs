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
    public partial class WebForm49 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button32_Click(object sender, EventArgs e)
        {

        }

        protected void Button35_Click(object sender, EventArgs e)
        {

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


                    string IdSupplier = row.Cells[4].Text;
                    string SupplierName = row.Cells[2].Text;



                    TextBox39.Text = IdSupplier.ToString();
                    TextBox11.Text = SupplierName.ToString();
                  



                 



              


                }
            }
        }

        protected void Button53_Click(object sender, EventArgs e)
        {
         
        }

        protected void Button53_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();



            if (TextBox39.Text == "")
            {

                AlertLabel.Text = "Please Select Supplier";
            }


            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    string l = "exec createTranzactionSupp '" + TextBox39.Text + "','" + Label2.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();











                }
                catch (Exception ex)
                {
                    //Alert.Show("Not Saved?");
                }




            }
        }

        protected void CheckBox8_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            foreach (GridViewRow row in gvInformation3.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox8");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {


                    string idItem = row.Cells[1].Text;
                    string Item = row.Cells[2].Text;



                    TextBox40.Text = idItem.ToString();
                    TextBox46.Text = Item.ToString();











                }
            }
        }

        protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}