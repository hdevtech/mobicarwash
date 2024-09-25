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
    public partial class WebForm37 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        decimal TotalInoice = 0;
        decimal PaidAmount = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Namibia Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            //Label2.Text = cstTime.ToShortDateString();
            Label3.Text = cstTime.ToString();

            if ((Session["Next"] != null))
            {

                Label2.Text = Session["Next"].ToString();

            }
            else
            {

                Response.Redirect("~/Default.aspx");
            }
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
            con.Close();
            con.Open();


            foreach (GridViewRow row in gvInformation3.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");

                TextBox QUnty = (TextBox)row.FindControl("TextBox7");
                DropDownList QUntyp = (DropDownList)row.FindControl("DropDownList35");

                if (checkbox.Checked)
                {
                    if (double.Parse(QUnty.Text) > double.Parse(row.Cells[4].Text))
                    {
                        AlertLabel26.Text = "";
                    }
                    else
                    {
                        string idProduct = row.Cells[1].Text;


                        string ll = "exec BarInsertNewRequest '" + row.Cells[1].Text + "','" + QUnty.Text + "','" + Label3.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedValue + "'";
                        SqlCommand cmdd = new SqlCommand(ll, con);
                        cmdd.Dispose();
                        cmdd.ExecuteNonQuery();

                        DropDownList1.DataBind();
                        gvInformation3.DataBind();
                        gvInformation4.DataBind();
                        //gvInformation5.DataBind();
                    }

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
                    if (double.Parse(QUntyP.Text) > double.Parse(row.Cells[4].Text))
                    {
                        AlertLabel26.Text = "";
                    }
                    else
                    {
                        string idProduct = row.Cells[1].Text;


                        string ll = "exec BarInsertNewRequest '" + row.Cells[1].Text + "','" + QUntyP.Text + "','" + Label3.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedValue + "'";
                        SqlCommand cmdd = new SqlCommand(ll, con);
                        cmdd.Dispose();
                        cmdd.ExecuteNonQuery();

                        DropDownList1.DataBind();
                        gvInformation3.DataBind();
                        gvInformation4.DataBind();
                        //gvInformation5.DataBind();
                        gvInformation6.DataBind();
                    }
                }
            }
           
           
            //ccccccccccccccccccccccccccccccccccccccccc
            //00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation8.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox6");

                TextBox QUntyP = (TextBox)row.FindControl("TextBox43");
                DropDownList QUntyU = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {
                    //if (double.Parse(QUntyP.Text) > double.Parse(row.Cells[4].Text))
                    //{
                    //    AlertLabel26.Text = "";
                    //}
                    //else
                    //{
                        string idProduct = row.Cells[1].Text;


                        string ll = "exec BarInsertNewRequest '" + row.Cells[1].Text + "','" + QUntyP.Text + "','" + Label3.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedValue + "'";
                        SqlCommand cmdd = new SqlCommand(ll, con);
                        cmdd.Dispose();
                        cmdd.ExecuteNonQuery();

                        DropDownList1.DataBind();
                        gvInformation3.DataBind();
                        gvInformation4.DataBind();
                        //gvInformation5.DataBind();
                        gvInformation6.DataBind();
                    //}
                }
            }
           



            PanelCommand.Visible = true;
            PanelCommand0.Visible = true;
            PanelList2.Visible = true;
            PanelAll.Visible = true;
            Drinks.Visible = false;

            Response.Redirect("BarRestoManagerWea.aspx");

            //ccccccccccccccccccccccccccccccccccccc
        }

        protected void Button38_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button40_Click(object sender, EventArgs e)
        {
            DropDownList1.DataBind();

            //PanelCommand.Visible = true;
            //PanelCommand0.Visible = true;
            //PanelList2.Visible = false;
            //PanelAll.Visible = true;
            //Drinks.Visible = false;

            //DropDownList1.DataBind();
            //gvInformation3.DataBind();
            //gvInformation4.DataBind();
            //gvInformation5.DataBind();

            //Response.Redirect("BarRestoManagerWea.aspx");
        }

        protected void gvInformation3_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    if (double.Parse(e.Row.Cells[4].Text) <= 0)
                    {
                        e.Row.Cells[4].Text = "0";
                        e.Row.Cells[4].ForeColor = Color.Red;

                    }


                }
            }
            catch (Exception ex)
            {
                return;

            }

        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {

            con.Close();
            con.Open();

            foreach (GridViewRow row in gvInformation4.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox3");



                if (checkbox.Checked)
                {

                    string idCommand = row.Cells[1].Text;
                    DropDownList1.SelectedValue = idCommand.ToString();




                }

                //ooooooooooooooooooooooooo
                PanelCommand.Visible = false;
                PanelList2.Visible = false;
                PanelAll.Visible = true;
                Drinks.Visible = true;

                //DropDownList1.DataBind();
                gvInformation3.DataBind();
                gvInformation4.DataBind();
                gvInformation5.DataBind();
                //ooooooooooooooooooooooo

            }


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

            foreach (GridViewRow row in gvInformation3.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {

                  





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
            con.Close();
            con.Open();
       

            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation4.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label4.Text = getId;

                //ooooooooooooooooooooooooo
                gvInformation3.DataBind();
                gvInformation4.DataBind();
                gvInformation5.DataBind();



                PanelCommand.Visible = false;
                PanelCommand0.Visible = false;
                PanelList2.Visible = true;
                PanelAll.Visible = true;
                Drinks.Visible = true;
                FormView10.DataBind();
                //ooooooooooooooooooooooo

           
        }

        protected void Button41_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
           

            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation7.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label4.Text = getId;

                //ooooooooooooooooooooooooo
                gvInformation3.DataBind();
                gvInformation4.DataBind();
                gvInformation5.DataBind();



                PanelCommand.Visible = true;
                PanelCommand0.Visible = true;
                PanelList2.Visible = true;
                PanelAll.Visible = true;
                Drinks.Visible = true;
                Drinks0.Visible = false;
                FormView10.DataBind();
                Button37.Visible = false;
                //ooooooooooooooooooooooo

            
        }

        protected void gvInformation6_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    if (double.Parse(e.Row.Cells[4].Text) <= 0)
                    {
                        e.Row.Cells[4].Text = "0";
                        e.Row.Cells[4].ForeColor = Color.Red;

                    }
                  

                }
            }
            catch (Exception ex)
            {
                return;

            }
        }

        protected void Button42_Click1(object sender, EventArgs e)
        {
            //Response.Redirect("BarRestoOperator2.aspx");
        }

        protected void Button43_Click1(object sender, EventArgs e)
        {
           
        }

        protected void Button73_Click(object sender, EventArgs e)
        {
            if (TextBox7.Text == "")
            {

                AlertLabel26.Text = "Plz Enter Paid Amount";
            }


            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec BarPayCommand '" + Label4.Text + "','" + TextBox7.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();

                    AlertLabel27.Text = "Paid Successfull!";
                    AlertLabel26.Text = "";
                    TextBox7.Text = "";
                    gvInformation3.DataBind();
                    gvInformation5.DataBind();
                    gvInformation7.DataBind();
                    //gvInformation4.DataBind();
                    //gvInformation11.DataBind();

                    //PanelCommand.Visible = true;
                    //PanelList2.Visible = true;
                    PanelAll.Visible = true;
                    Drinks.Visible = false;
                    //Drinks1.Visible = false;
                    //Button72.Visible = false;
                    FormView10.DataBind();
                    //FormView11.DataBind();
                    //FormView12.DataBind();
                    FormView15.DataBind();


                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }
        }

        protected void Button74_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button77_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void gvInformation8_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    }
}