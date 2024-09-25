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
    public partial class WebForm57 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        decimal TotalInoice = 0;
        decimal PaidAmount = 0;
        decimal TOTALM = 0;
        decimal PAIDM = 0;
        decimal REMAIN = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Namibia Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            //Label2.Text = cstTime.ToShortDateString();
            Label3.Text = cstTime.ToString();

            if ((Session["role_ame"] != null))
            {

                Label2.Text = Session["UserName"].ToString();
                Label8.Text = Session["role_ame"].ToString();
                              


            }
            else
            {

                Response.Redirect("~/Default.aspx");
            }
        }

        protected void gvInformation3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
         

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


                        string ll = "exec BarInsertNewRequestManager2 '" + row.Cells[1].Text + "','" + QUnty.Text + "','" + Label3.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedValue + "'";
                        SqlCommand cmdd = new SqlCommand(ll, con);
                        cmdd.Dispose();
                        cmdd.ExecuteNonQuery();

                        //string lll = "exec BarinsertSalesBar2 '" + row.Cells[1].Text + "','" + QUnty.Text + "','" + Label3.Text + "','" + Label2.Text + "'";
                        //SqlCommand cmdll = new SqlCommand(lll, con);
                        //cmdll.Dispose();
                        //cmdll.ExecuteNonQuery();


                        gvInformation3.DataBind();
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


                        string ll = "exec BarInsertNewRequestManager2 '" + row.Cells[1].Text + "','" + QUntyP.Text + "','" + Label3.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedValue + "'";
                        SqlCommand cmdd = new SqlCommand(ll, con);
                        cmdd.Dispose();
                        cmdd.ExecuteNonQuery();

                        //string lll = "exec BarinsertSalesBar2 '" + row.Cells[1].Text + "','" + QUntyP.Text + "','" + Label3.Text + "','" + Label2.Text + "'";
                        //SqlCommand cmdll = new SqlCommand(lll, con);
                        //cmdll.Dispose();
                        //cmdll.ExecuteNonQuery();



                        gvInformation3.DataBind();

                        //gvInformation5.DataBind();
                        gvInformation6.DataBind();
                    }

                }
            }
            //00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation8.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox6");

                TextBox QUntyP = (TextBox)row.FindControl("TextBox10");
                DropDownList QUntyU = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;
                    //string Quantity = row.Cells[3].Text;

                    //TextBox3.Text = idProduct.ToString();
                    //QUnty.Text = Quantity.ToString();

                    string ll = "exec BarInsertNewRequestManager2 '" + row.Cells[1].Text + "','" + QUntyP.Text + "','" + Label3.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedValue + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

                    //string lll = "exec BarinsertSalesBar2 '" + row.Cells[1].Text + "','" + QUntyP.Text + "','" + Label3.Text + "','" + Label2.Text + "'";
                    //SqlCommand cmdll = new SqlCommand(lll, con);
                    //cmdll.Dispose();
                    //cmdll.ExecuteNonQuery();



                    gvInformation3.DataBind();

                    //gvInformation5.DataBind();
                    gvInformation8.DataBind();


                }
            }
            //000000000000000000000000000000000000

            //00000000000000000000000000000000000

            //00000000000000000000000000000000000

            //ccccccccccccccccccccccccccccccccccccccccc

            PanelCommand0.Visible = true;
            PanelList2.Visible = false;
            PanelAll.Visible = true;
            Drinks.Visible = false;
            gvInformation7.DataBind();
            gvInformation4.DataBind();



            //ccccccccccccccccccccccccccccccccccccc
        }

        protected void Button38_Click(object sender, EventArgs e)
        {
            
            con.Close();
            con.Open();
          

            if (TextBox9.Text == "")
            {
                //Alert.Show("Please Select Vehicle");
                AlertLabel24.Text = "Plz write Table No";
            }

       
            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {



                    string ll = "exec BarCreateCommand '" + Label2.Text + "','" + Label3.Text + "','" + Label3.Text + "','" + TextBox9.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

                    //DropDownList1.DataBind();
                    gvInformation3.DataBind();

                    DropDownList1.DataBind();


                    PanelCommand0.Visible = false;
                    PanelList2.Visible = true;
                    PanelAll.Visible = true;
                    Drinks.Visible = false;
                    Label4.DataBind();
                    AlertLabel24.Text = "";
                    TextBox9.Text = "";






                }
                catch (Exception ex)
                {
                    //Alert.Show("Not Saved?");
                }

               



            }

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

            //Response.Redirect("BarRestoOperator2.aspx");
        }

        protected void gvInformation3_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //try
            //{
            //    if (e.Row.RowType == DataControlRowType.DataRow)
            //    {
            //        if (double.Parse(e.Row.Cells[4].Text) <= 0)
            //        {
            //            e.Row.Cells[4].Text = "0";
            //            e.Row.Cells[4].ForeColor = Color.Red;

            //        }


            //    }
            //}
            //catch (Exception ex)
            //{
            //    return;

            //}

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
            string getId = gvInformation7.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label4.Text = getId;

            //ooooooooooooooooooooooooo
            gvInformation3.DataBind();
     
            gvInformation5.DataBind();



        
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
            Label7.Visible = true;
            Label7.Text = getId;
            DropDownList1.SelectedValue = getId;

            //ooooooooooooooooooooooooo
            gvInformation3.DataBind();     
            gvInformation5.DataBind();
          
            PanelCommand0.Visible =true;
            PanelList2.Visible = true;
            PanelAll.Visible = true;
            Drinks.Visible = true;
            Drinks0.Visible = true;
            FormView10.DataBind();
            Button37.Visible = true;
            //ooooooooooooooooooooooo


        }

        protected void gvInformation6_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //try
            //{
            //    if (e.Row.RowType == DataControlRowType.DataRow)
            //    {
            //        if (double.Parse(e.Row.Cells[4].Text) <= 0)
            //        {
            //            e.Row.Cells[4].Text = "0";
            //            e.Row.Cells[4].ForeColor = Color.Red;

            //        }


            //    }
            //}
            //catch (Exception ex)
            //{
            //    return;

            //}
        }

        protected void Button42_Click1(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoOperator2.aspx");
        }

        protected void Button42_Click2(object sender, EventArgs e)
        {
            //Response.Redirect("BarRestoOperator.aspx");
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

                    string lllll = "exec BarINSERTDailyCloseNew '" + DropDownList14.SelectedValue + "'";
                    SqlCommand cmdddll = new SqlCommand(lllll, con);
                    cmdddll.Dispose();
                    cmdddll.ExecuteNonQuery();

                    AlertLabel27.Text = "Paid Successfull!";
                    AlertLabel26.Text = "";
                    TextBox7.Text = "";
                    gvInformation3.DataBind();
                    gvInformation5.DataBind();
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
                    Response.Redirect("BarRestoOperator2.aspx");


                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }
            }
        }

        protected void gvInformation7_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                   
                    if (double.Parse(e.Row.Cells[4].Text) == double.Parse(e.Row.Cells[5].Text))
                    {
                        e.Row.Cells[6].ForeColor = Color.Orange;
                        e.Row.Cells[6].Text = "Paid";
                        e.Row.Cells[3].ForeColor = Color.Orange;

                    }
                }
            }
            catch (Exception ex)
            {

                return;

            }
            //========================================
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
              
                PAIDM += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Paid"));
               
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
              
                e.Row.Cells[5].Text = PAIDM.ToString("0,000");
               
            }
        }

        protected void Button74_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button77_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button40_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation4.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label4.Text = getId;
            Label7.Visible = true;
            Label7.Text = getId;
            DropDownList1.SelectedValue = getId;

            //ooooooooooooooooooooooooo
            gvInformation3.DataBind();
            gvInformation5.DataBind();

            PanelCommand0.Visible = true;
            PanelList2.Visible = true;
            PanelAll.Visible = true;
            Drinks.Visible = true;
            Drinks0.Visible = true;
            FormView10.DataBind();
            Button37.Visible = true;
            //ooooooooooooooooooooooo
        }

        protected void gvInformation4_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {

                    if (double.Parse(e.Row.Cells[4].Text) == double.Parse(e.Row.Cells[5].Text))
                    {
                        e.Row.Cells[6].ForeColor = Color.Orange;
                        e.Row.Cells[6].Text = "Paid";
                        e.Row.Cells[3].ForeColor = Color.Orange;

                    }
                }
            }
            catch (Exception ex)
            {

                return;

            }
        }

        protected void Button78_Click(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoOperator2.aspx");
        }

        protected void Button93_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            //00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation13.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox71");

                TextBox QUntyP = (TextBox)row.FindControl("TextBox44");
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


                    string ll = "exec BarInsertNewRequestFood '" + row.Cells[1].Text + "','" + QUntyP.Text + "','" + Label3.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedValue + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

                    //DropDownList1.DataBind();
                
                    ////gvInformation5.DataBind();
                    //gvInformation6.DataBind();
                    //}
                }
            }

            //========
            foreach (GridViewRow row in gvInformation17.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox72");

                TextBox QUntyPP = (TextBox)row.FindControl("TextBox45");
                DropDownList QUntyU = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {
                    if (double.Parse(QUntyPP.Text) > double.Parse(row.Cells[4].Text))
                    {
                        AlertLabel26.Text = "";
                    }
                    else if (double.Parse(QUntyPP.Text) == 0)
                    {
                        AlertLabel26.Text = "";
                      
                    }
                    else
                    {
                        string idProduct = row.Cells[1].Text;


                        string ll = "exec BarInsertNewRequestFood '" + row.Cells[1].Text + "','" + QUntyPP.Text + "','" + Label3.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedValue + "'";
                        SqlCommand cmdd = new SqlCommand(ll, con);
                        cmdd.Dispose();
                        cmdd.ExecuteNonQuery();

                        DropDownList1.DataBind();
                        gvInformation3.DataBind();
                        gvInformation4.DataBind();               
                        gvInformation13.DataBind();                    
                        gvInformation17.DataBind();
                        gvInformation6.DataBind();
                        //Button101.Click = true;
                        //}
                    }
                }


               

            }
           


            Response.Redirect("BarRestoOperator2.aspx");
        }

        protected void CheckBox71_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button88_Click(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoOperator2.aspx");
        }

        protected void Button94_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string ll = "exec BarCreateCommand '" + Label2.Text + "','" + Label3.Text + "','" + Label3.Text + "','" + TextBox9.Text + "'";
            SqlCommand cmdd = new SqlCommand(ll, con);
            cmdd.Dispose();
            cmdd.ExecuteNonQuery();

            //DropDownList1.DataBind();
            gvInformation3.DataBind();

            DropDownList1.DataBind();


            PanelCommand0.Visible = false;
            Label4.DataBind();
            Drinks2.Visible = true;
            Drinks0.Visible = false;
            PanelCommand0.Visible = false;
            Button38.Visible = false;
            Button94.Visible = false;
            TextBox9.Visible = false;
            
           
        }


    }
}