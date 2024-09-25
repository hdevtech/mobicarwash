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
    public partial class WebForm67 : System.Web.UI.Page
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
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
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
            



            //ccccccccccccccccccccccccccccccccccccc
        }

        protected void Button38_Click(object sender, EventArgs e)
        {

   

        }

        protected void Button40_Click(object sender, EventArgs e)
        {
            //DropDownList1.DataBind();

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
            //con.Close();
            //con.Open();


            //Button imgbtn = sender as Button;
            //GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            //string getId = gvInformation7.DataKeys[row.RowIndex].Values[0].ToString();
            //System.Diagnostics.Debug.WriteLine(getId);
            //Label4.Text = getId;

            ////ooooooooooooooooooooooooo
            ////gvInformation3.DataBind();

            ////gvInformation5.DataBind();




            //PanelCommand0.Visible = false;
            ////PanelList2.Visible = true;
            //PanelAll.Visible = true;
            ////Drinks.Visible = true;
            ////FormView10.DataBind();
            ////ooooooooooooooooooooooo


        }

        protected void Button41_Click1(object sender, EventArgs e)
        {
            //con.Close();
            //con.Open();


            //Button imgbtn = sender as Button;
            //GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            //string getId = gvInformation7.DataKeys[row.RowIndex].Values[0].ToString();
            //System.Diagnostics.Debug.WriteLine(getId);
            //Label4.Text = getId;
            //Label7.Visible = true;
            //Label7.Text = getId;
            //DropDownList1.SelectedValue = getId;

            ////ooooooooooooooooooooooooo
            ////gvInformation3.DataBind();
            ////gvInformation5.DataBind();

            //PanelCommand0.Visible = true;
            ////PanelList2.Visible = true;
            //PanelAll.Visible = true;
            ////Drinks.Visible = true;
            ////Drinks0.Visible = true;
            ////FormView10.DataBind();
            ////Button37.Visible = true;
            ////ooooooooooooooooooooooo


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
           
        }

        protected void gvInformation7_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //try
            //{
            //    if (e.Row.RowType == DataControlRowType.DataRow)
            //    {

            //        if (double.Parse(e.Row.Cells[4].Text) == double.Parse(e.Row.Cells[5].Text))
            //        {
            //            e.Row.Cells[6].ForeColor = Color.Orange;
            //            e.Row.Cells[6].Text = "Paid";
            //            e.Row.Cells[3].ForeColor = Color.Orange;

            //        }
            //    }
            //}
            //catch (Exception ex)
            //{

            //    return;

            //}
            ////========================================
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{

            //    PAIDM += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Paid"));

            //}
            //else if (e.Row.RowType == DataControlRowType.Footer)
            //{

            //    e.Row.Cells[5].Text = PAIDM.ToString("0,000");

            //}
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
          
        }

        protected void gvInformation4_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //try
            //{
            //    if (e.Row.RowType == DataControlRowType.DataRow)
            //    {

            //        if (double.Parse(e.Row.Cells[4].Text) == double.Parse(e.Row.Cells[5].Text))
            //        {
            //            e.Row.Cells[6].ForeColor = Color.Orange;
            //            e.Row.Cells[6].Text = "Paid";
            //            e.Row.Cells[3].ForeColor = Color.Orange;

            //        }
            //    }
            //}
            //catch (Exception ex)
            //{

            //    return;

            //}
        }

        protected void Button78_Click(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoOperator2.aspx");
        }

        protected void Button93_Click(object sender, EventArgs e)
        {
          


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
            


        }

        protected void Button40_Click2(object sender, EventArgs e)
        {
            
                 


        }

        protected void Button78_Click1(object sender, EventArgs e)
        {
    
        }

        protected void Button41_Click2(object sender, EventArgs e)
        {
            //con.Close();
            //con.Open();

    
            //Button imgbtn = sender as Button;
            //GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            //string getId = gvInformation4.DataKeys[row.RowIndex].Values[0].ToString();
            //System.Diagnostics.Debug.WriteLine(getId);
            //Label7.Text = getId;
            
            //string ll = "exec BillardCreateCommandCancel '" + Label7.Text + "'";
            //SqlCommand cmdd = new SqlCommand(ll, con);
            //cmdd.Dispose();
            //cmdd.ExecuteNonQuery();                           
            //gvInformation4.DataBind();
            //gvInformation5.DataBind();
            //gvInformation4.Visible = true;
            //gvInformation5.Visible = true;
                 


        }

        protected void Button79_Click(object sender, EventArgs e)
        {

            TextBox11.Visible = true;
            Button80.Visible = true;
            Button81.Visible = true;
            Button79.Visible = false;

        }

        protected void Button80_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            if (TextBox11.Text == "")
            {
                AlertLabel24.Text = "";

            }
            else if (double.Parse(TextBox11.Text) == 0)
            {
                AlertLabel24.Text = "Enter Amount";

            }

            else
            {


                string ll = "exec BarInsertNewRequestAmount '" + TextBox11.Text + "','" + Label2.Text + "','" + Label3.Text + "'";
                SqlCommand cmdd = new SqlCommand(ll, con);
                cmdd.Dispose();
                cmdd.ExecuteNonQuery();
                DropDownList15.DataBind();
                DropDownList16.DataBind();
                AlertLabel24.Text = "";

                string lllll = "exec BillarReport '" + DropDownList14.SelectedValue + "','" + DropDownList15.SelectedValue + "'";
                SqlCommand cmdddll = new SqlCommand(lllll, con);
                cmdddll.Dispose();
                cmdddll.ExecuteNonQuery();

                TextBox11.Visible = false;
                Button80.Visible = false;
                Button81.Visible = false;
                Button79.Visible = true;
                FormView35.DataBind();
                FormView36.DataBind();
                FormView37.DataBind();
                TextBox11.Text = "";


            }
        }

        protected void Button81_Click(object sender, EventArgs e)
        {
            TextBox11.Visible = false;
            Button80.Visible = false;
            Button81.Visible = false;
            Button79.Visible = true;
            AlertLabel24.Text = "";
        }

        protected void Button82_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            DropDownList16.DataBind();
            DropDownList15.DataBind();
            if (double.Parse(DropDownList16.Text) < 200)
            {
                AlertLabel24.Text = "Request Amount";

            }

            else
            {

                string ll = "exec BillardPlayGame '" + Label2.Text + "','" + Label3.Text + "','" + Label3.Text + "','" + DropDownList15.SelectedValue + "'";
                SqlCommand cmdd = new SqlCommand(ll, con);
                cmdd.Dispose();
                cmdd.ExecuteNonQuery();
                DropDownList15.DataBind();

                string lllll = "exec BillarReport '" + DropDownList14.SelectedValue + "','" + DropDownList15.SelectedValue + "'";
                SqlCommand cmdddll = new SqlCommand(lllll, con);
                cmdddll.Dispose();
                cmdddll.ExecuteNonQuery();

                TextBox11.Visible = false;
                Button80.Visible = false;
                Button81.Visible = false;
                Button79.Visible = true;
                FormView35.DataBind();
                FormView36.DataBind();
                FormView37.DataBind();
                DataList1.DataBind();
                AlertLabel24.Text = "";
            }
        }

        protected void Button89_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
           
            DropDownList16.DataBind();
            DropDownList15.DataBind();
            if (double.Parse(DropDownList16.Text) < 200)
            {
                AlertLabel24.Text = "Request Amount";

            }

            else
            {


                string ll = "exec BillardPlayGameFree '" + Label2.Text + "','" + Label3.Text + "','" + Label3.Text + "','" + DropDownList15.SelectedValue + "'";
                SqlCommand cmdd = new SqlCommand(ll, con);
                cmdd.Dispose();            
                cmdd.ExecuteNonQuery();
                DropDownList15.DataBind();


                string lllll = "exec BillarReport '" + DropDownList14.SelectedValue + "','" + DropDownList15.SelectedValue + "'";
                SqlCommand cmdddll = new SqlCommand(lllll, con);
                cmdddll.Dispose();
                cmdddll.ExecuteNonQuery();

                TextBox11.Visible = false;
                Button80.Visible = false;
                Button81.Visible = false;
                Button79.Visible = true;
                FormView35.DataBind();
                FormView36.DataBind();
                FormView37.DataBind();
                DataList1.DataBind();
                AlertLabel24.Text = "";
            }
        }

        protected void Button93_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            DropDownList16.DataBind();
            DropDownList15.DataBind();
            if (double.Parse(DropDownList16.Text) < 200)
            {
                AlertLabel24.Text = "Request Amount";

            }

            else
            {


                string ll = "exec BillardPlayGame500'" + Label2.Text + "','" + Label3.Text + "','" + Label3.Text + "','" + DropDownList15.SelectedValue + "'";
                SqlCommand cmdd = new SqlCommand(ll, con);
                cmdd.Dispose();
                cmdd.ExecuteNonQuery();
                DropDownList15.DataBind();


                string lllll = "exec BillarReport '" + DropDownList14.SelectedValue + "','" + DropDownList15.SelectedValue + "'";
                SqlCommand cmdddll = new SqlCommand(lllll, con);
                cmdddll.Dispose();
                cmdddll.ExecuteNonQuery();

                TextBox11.Visible = false;
                Button80.Visible = false;
                Button81.Visible = false;
                Button79.Visible = true;
                FormView35.DataBind();
                FormView36.DataBind();
                FormView37.DataBind();
                DataList1.DataBind();
                AlertLabel24.Text = "";
            }
        }

        protected void Button94_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            DropDownList16.DataBind();
            DropDownList15.DataBind();
            if (double.Parse(DropDownList16.Text) < 200)
            {
                AlertLabel24.Text = "Request Amount";

            }

            else
            {


                string ll = "exec BillardPlayGame1000'" + Label2.Text + "','" + Label3.Text + "','" + Label3.Text + "','" + DropDownList15.SelectedValue + "'";
                SqlCommand cmdd = new SqlCommand(ll, con);
                cmdd.Dispose();
                cmdd.ExecuteNonQuery();
                DropDownList15.DataBind();


                string lllll = "exec BillarReport '" + DropDownList14.SelectedValue + "','" + DropDownList15.SelectedValue + "'";
                SqlCommand cmdddll = new SqlCommand(lllll, con);
                cmdddll.Dispose();
                cmdddll.ExecuteNonQuery();

                TextBox11.Visible = false;
                Button80.Visible = false;
                Button81.Visible = false;
                Button79.Visible = true;
                FormView35.DataBind();
                FormView36.DataBind();
                FormView37.DataBind();
                DataList1.DataBind();
                AlertLabel24.Text = "";
            }
        }

        protected void Button95_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            DropDownList16.DataBind();
            DropDownList15.DataBind();
            if (double.Parse(DropDownList16.Text) < 200)
            {
                AlertLabel24.Text = "Request Amount";

            }

            else
            {


                string ll = "exec BillardPlayGame2000'" + Label2.Text + "','" + Label3.Text + "','" + Label3.Text + "','" + DropDownList15.SelectedValue + "'";
                SqlCommand cmdd = new SqlCommand(ll, con);
                cmdd.Dispose();
                cmdd.ExecuteNonQuery();
                DropDownList15.DataBind();


                string lllll = "exec BillarReport '" + DropDownList14.SelectedValue + "','" + DropDownList15.SelectedValue + "'";
                SqlCommand cmdddll = new SqlCommand(lllll, con);
                cmdddll.Dispose();
                cmdddll.ExecuteNonQuery();

                TextBox11.Visible = false;
                Button80.Visible = false;
                Button81.Visible = false;
                Button79.Visible = true;
                FormView35.DataBind();
                FormView36.DataBind();
                FormView37.DataBind();
                DataList1.DataBind();
                AlertLabel24.Text = "";
            }
        }
       }
        
        


    
}