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
    public partial class WebForm66 : System.Web.UI.Page
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
                Label8.Text = Session["role_ame"].ToString();


                if (Label8.Text == "SellesManager")
                {

                    //Button90.Enabled = false;

                }
                else
                {
                    //Button90.Enabled = true;
                }

            }
            else
            {

                Response.Redirect("~/Default.aspx");
            }
        }

        protected void Button89_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManagerTool.aspx");
        }

        protected void Button75_Click(object sender, EventArgs e)
        {

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

        protected void gvInformation3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void gvInformation3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvInformation8_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvInformation3_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {

                    if (double.Parse(e.Row.Cells[5].Text) != double.Parse(e.Row.Cells[6].Text))
                    {
                        e.Row.Cells[2].ForeColor = Color.Orange;
                   
                        e.Row.Cells[7].ForeColor = Color.Orange;

                    }
                }
            }
            catch (Exception ex)
            {

                return;

            }
        }

        protected void gvInformation6_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void gvInformation8_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void Button37_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            foreach (GridViewRow row in gvInformation3.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");

               
                TextBox QUntP = (TextBox)row.FindControl("TextBox7");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;

                    string l = "exec BarUpdatePhysicalStock '" + row.Cells[1].Text + "','" + QUntP.Text + "','" + Label3.Text + "','" + UserName.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    //Label2.Text = "Submitted Successfull!";
                    //GridClientPayment3.DataBind();
                    gvInformation3.DataBind();
                    //DataList5.DataBind();
                    gvInformation3.DataBind();
                    

                    QUntP.Text = QUntP.Text = "";
                    Response.Redirect("ProductPhisicalStock.aspx");
                    //gvInformation3.Visible = false;

                


                }

            }

          

        }

        protected void Button38_Click(object sender, EventArgs e)
        {
            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation3.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label6.Text = getId;
            FormView1.Visible = true;
        }

        protected void GridClientPayment4_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void Button86_Click(object sender, EventArgs e)
        {
            if (Panel3.Visible == false)
            {
                Panel3.Visible = true;
                Button87.Visible = true;



            }
            else
            {
                Panel3.Visible = false;
                Button87.Visible = false;
            }
        }

        protected void Button88_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductPhisicalStock.aspx");
        }

        protected void Button89_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            foreach (GridViewRow row in gvInformation3.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");
                TextBox QUnty = (TextBox)row.FindControl("TextBox7");
           

                if (checkbox.Checked)
                {
                       
                        string idProduct = row.Cells[1].Text;

                        string l = "exec BarUpdatePhysicalStock '" + row.Cells[1].Text + "','" + QUnty.Text + "','" + Label3.Text + "','" + UserName.Text + "'";
                        SqlCommand cmd = new SqlCommand(l, con);
                        cmd.Dispose();
                        cmd.ExecuteNonQuery();                       
                        gvInformation3.DataBind();
                                        
                }
            }
        }

        protected void Button90_Click(object sender, EventArgs e)
        {
           

           
        }

        protected void FormView3_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void GridClientPayment4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

      
    }
}