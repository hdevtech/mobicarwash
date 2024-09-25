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
    public partial class WebForm56 : System.Web.UI.Page
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
            //Label3.Text = cstTime.ToString();

            //Label2.Text = Session["Next"].ToString();
        }

        protected void gvInformation3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //con.Close();
            //con.Open();
            ////Alert.Show("Are you sure you want to delete");

            //int idProduct = Convert.ToInt32(gvInformation3.DataKeys[e.RowIndex].Value.ToString());
            //GridViewRow row = (GridViewRow)gvInformation3.Rows[e.RowIndex];
            //TextBox QUnty = (TextBox)row.FindControl("TextBox1");

            //string ll = "exec insertNewRequest '" + idProduct + "','" + QUnty.Text + "'";
            //SqlCommand cmdd = new SqlCommand(ll, con);
            //cmdd.Dispose();
            //cmdd.ExecuteNonQuery();

            //    //SqlCommand cmd1 = new SqlCommand("insert into BarRequest values( '" + SelectedID + "','" + QUnty.Text + "')", con);
            //    //cmd1.ExecuteNonQuery();
            //    //cmd1.Dispose();

        }



        protected void Button36_Click(object sender, EventArgs e)
        {

        }

        protected void Button37_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button38_Click(object sender, EventArgs e)
        {
                

        }

        protected void Button40_Click(object sender, EventArgs e)
        {
            
       
        }

        protected void gvInformation3_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
            
           
                //string MemberId = GridView4_Details.DataKeys[e.Row.RowIndex].Values[0].ToString();
               
                    DropDownList Drop_SelectedQnty = (DropDownList)e.Row.FindControl("DropDownList35");
                    CheckBox SelectedProdctCheckBox = (CheckBox)e.Row.FindControl("CheckBox2");
                    if (double.Parse(Drop_SelectedQnty.SelectedItem.Text)> 0)
                    {

                        SelectedProdctCheckBox.Checked = true;
                    }
                    else
                    {
                        SelectedProdctCheckBox.Checked = false;
                    }

            }
            catch (Exception ex)
            {
                ex.ToString();
            }


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
            con.Close();
            con.Open();

            //foreach (GridViewRow row in gvInformation3.Rows)
            //{
            //    CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");

            //    //Check if the checkbox is checked.

            //    if (checkbox.Checked)
            //    {







            //    }
            //}

            //try
            //{


            //    //string MemberId = GridView4_Details.DataKeys[e.Row.RowIndex].Values[0].ToString();

            //    DropDownList Drop_SelectedQnty = (DropDownList)e.Row.FindControl("DropDownList35");
            //    CheckBox SelectedProdctCheckBox = (CheckBox)e.Row.FindControl("CheckBox2");
            //    if (double.Parse(Drop_SelectedQnty.SelectedItem.Text) > 0)
            //    {

            //        SelectedProdctCheckBox.Checked = true;
            //    }
            //    else
            //    {
            //        SelectedProdctCheckBox.Checked = false;
            //    }

            //}
            //catch (Exception ex)
            //{
            //    ex.ToString();
            //}
        }

        protected void COMMAND_ID0_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DropDownList35_SelectedIndexChanged(object sender, EventArgs e)
        {
            //try
            //{


            //    //string MemberId = GridView4_Details.DataKeys[e.Row.RowIndex].Values[0].ToString();

            //    DropDownList Drop_SelectedQnty = (DropDownList)e.Row.FindControl("DropDownList35");
            //    CheckBox SelectedProdctCheckBox = (CheckBox)e.Row.FindControl("CheckBox2");
            //    if (double.Parse(Drop_SelectedQnty.SelectedItem.Text) > 0)
            //    {

            //        SelectedProdctCheckBox.Checked = true;
            //    }
            //    else
            //    {
            //        SelectedProdctCheckBox.Checked = false;
            //    }

            //}
            //catch (Exception ex)
            //{
            //    ex.ToString();
            //}
        }

        protected void gvInformation0_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    PaidAmount += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Price"));
               
            //}
            //else if (e.Row.RowType == DataControlRowType.Footer)
            //{
            //    e.Row.Cells[5].Text = PaidAmount.ToString("");
            
            //}
        }

        protected void Button90_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportsMenu.aspx");
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvInformation0_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //protected void DropDownList35_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    if(DropDownList35.)
        //}


    }
}