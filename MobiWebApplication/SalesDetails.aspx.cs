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
    public partial class WebForm55 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        decimal TotalInoice = 0;
        decimal PaidAmount = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            //Label2.Text = cstTime.ToShortDateString();
            Label3.Text = cstTime.ToString();

            //Label2.Text = Session["Next"].ToString();
        }

        protected void CheckBox12_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();



            foreach (GridViewRow row in gvInformation5.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox12");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {
                    string idProduct = row.Cells[1].Text;
                    string idRecord = row.Cells[2].Text;
                    string idCommand = row.Cells[3].Text;
                    string quantity = row.Cells[6].Text;


                    TextBox5.Text = idRecord.ToString();
                    TextBox6.Text = idCommand.ToString();
                    TextBox8.Text = quantity.ToString();
                    TextBox9.Text = idProduct.ToString();



                    string ll = "exec BarInsertNewRequestDelete '" + TextBox9.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

                    gvInformation5.DataBind();
                    //gvInformation4.DataBind();
                    gvInformation10.DataBind();
                    FormView10.DataBind();
                    FormView11.DataBind();
                    //FormView12.DataBind();
                    FormView15.DataBind();


                }
            }
        }

        protected void Button73_Click(object sender, EventArgs e)
        {
            if (TextBox7.Text == "")
            {

                AlertLabel0.Text = "Plz Enter Paid Amount";
            }


            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec BarPayCommand '" + DropDownList1.SelectedValue + "','" + TextBox7.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();

                    AlertLabel1.Text = "Paid Successfull!";
                    AlertLabel0.Text = "";
                    TextBox7.Text = "";
                    gvInformation3.DataBind();
                    gvInformation5.DataBind();
                    gvInformation4.DataBind();

                    PanelCommand.Visible = true;
                    //PanelList2.Visible = true;
                    PanelAll.Visible = true;
                    Drinks.Visible = false;
                    Drinks1.Visible = false;
                    Button72.Visible = false;
                    FormView10.DataBind();
                    FormView11.DataBind();
                    //FormView12.DataBind();
                    FormView15.DataBind();


                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }
        }

        protected void Button37_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            foreach (GridViewRow row in gvInformation3.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");

                TextBox QUnty = (TextBox)row.FindControl("TextBox1");
                DropDownList QUntyp = (DropDownList)row.FindControl("DropDownList35");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;
                    //string Quantity = row.Cells[3].Text;

                    //TextBox3.Text = idProduct.ToString();
                    //QUnty.Text = Quantity.ToString();

                    string ll = "exec BarInsertNewRequest '" + row.Cells[1].Text + "','" + QUntyp.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedValue + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

                    DropDownList1.DataBind();
                    gvInformation3.DataBind();
                    gvInformation4.DataBind();
                    gvInformation5.DataBind();

                }
            }


            PanelCommand.Visible = true;
            PanelList2.Visible = false;
            PanelAll.Visible = true;
            Drinks.Visible = true;
            Drinks1.Visible = true;

            FormView10.DataBind();
            FormView11.DataBind();
            //FormView12.DataBind();

            //ccccccccccccccccccccccccccccccccccccc
        }

        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            if (Drinks.Visible == false)
            {
                FormView10.DataBind();
                foreach (GridViewRow row in gvInformation4.Rows)
                {
                    CheckBox checkbox = (CheckBox)row.FindControl("CheckBox4");



                    if (checkbox.Checked)
                    {

                        string idCommand = row.Cells[0].Text;
                        DropDownList1.SelectedValue = idCommand.ToString();




                    }

                    //ooooooooooooooooooooooooo
                    gvInformation3.DataBind();
                    gvInformation5.DataBind();

                    PanelCommand.Visible = true;
                    //PanelList2.Visible = true;
                    PanelAll.Visible = true;
                    Drinks.Visible = true;
                    //Drinks1.Visible = true;
                    Button72.Visible = false;
                    FormView10.DataBind();
                    FormView11.DataBind();
                    //FormView12.DataBind();
                    //ooooooooooooooooooooooo

                }



            }
            else
            {
                PanelCommand.Visible = true;
                //PanelList2.Visible = true;
                PanelAll.Visible = true;
                Drinks.Visible = false;
                Drinks1.Visible = false;
                Button72.Visible = false;
                FormView10.DataBind();
                FormView11.DataBind();
                //FormView12.DataBind();
                FormView15.DataBind();




            }
            AlertLabel0.Text = "";
            AlertLabel1.Text = "";
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

        protected void Button38_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string ll = "exec BarCreateCommand '" + Label2.Text + "','" + Label3.Text + "','" + Label3.Text + "'";
            SqlCommand cmdd = new SqlCommand(ll, con);
            cmdd.Dispose();
            cmdd.ExecuteNonQuery();

            DropDownList1.DataBind();
            gvInformation3.DataBind();
            gvInformation4.DataBind();
            gvInformation5.DataBind();


            PanelCommand.Visible = false;
            PanelList2.Visible = true;
            PanelAll.Visible = true;
            Drinks.Visible = false;
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}