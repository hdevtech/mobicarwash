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
    public partial class WebForm60 : System.Web.UI.Page
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
                  

            //=====
            if ((Session["role_ame"] != null))
            {

                UserName.Text = Session["UserName"].ToString();             
                RoleName.Text = Session["role_ame"].ToString();


                if (RoleName.Text == "SellesManager")
                {

                    Button80.Enabled = false;
                    gvInformation14.Enabled = false;
                  

                }
                else
                {
                    Button80.Enabled = true;
                    gvInformation14.Enabled = true;
                    //Button98.Enabled = true;
                    //Button98.Visible = true;
                    //Button100.Enabled = true;
                    //Button100.Visible = true;
                }

            }
            else
            {

                Response.Redirect("~/Default.aspx");
            }
            //======

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
           
            //ccccccccccccccccccccccccccccccccccccc
        }

        protected void Button38_Click(object sender, EventArgs e)
        {







        }

        protected void Button40_Click(object sender, EventArgs e)
        {
            DropDownList1.DataBind();

            PanelCommand.Visible = true;
          
            PanelAll.Visible = true;
           

            DropDownList1.DataBind();
           
        }

        protected void gvInformation3_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    if (double.Parse(e.Row.Cells[4].Text) <= 0)
                    {
                        e.Row.Cells[4].Text = "Empty!";
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

            


        }

        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void gvInformation5_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
        }

        protected void Button41_Click(object sender, EventArgs e)
        {
           
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

        protected void Button70_Click(object sender, EventArgs e)
        {
            PanelCommand.Visible = true;
           
        }

        protected void Button71_Click(object sender, EventArgs e)
        {


            
        }

        protected void Button72_Click(object sender, EventArgs e)
        {
            

        }

        protected void CheckBox12_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void gvInformation4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvInformation4_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    if (double.Parse(e.Row.Cells[5].Text) > 0)
                    {
                        e.Row.Cells[3].Text = "PAID";
                        //e.Row.Cells[3].ForeColor = Color.White;
                    }
                    else if (double.Parse(e.Row.Cells[5].Text) == 0)
                    {
                        e.Row.Cells[5].ForeColor = Color.Red;
                        //e.Row.Cells[3].ForeColor = Color.Red;
                    }
                    ////else if (double.Parse(e.Row.Cells[5].Text) < 0)
                    ////{
                    ////    e.Row.Cells[6].Text = "No autorisation!";
                    ////    e.Row.Cells[6].ForeColor = Color.Yellow;
                    ////}
                }
            }
            catch (Exception ex)
            {

                return;

            }
        }

        protected void Button73_Click(object sender, EventArgs e)
        {
            
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button74_Click(object sender, EventArgs e)
        {
           
        }

        protected void gvInformation11_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    if (double.Parse(e.Row.Cells[5].Text) > 0)
                    {
                        e.Row.Cells[3].Text = "PAID";
                        //e.Row.Cells[3].ForeColor = Color.White;
                    }
                    else if (double.Parse(e.Row.Cells[5].Text) == 0)
                    {
                        e.Row.Cells[5].ForeColor = Color.Red;
                        //e.Row.Cells[3].ForeColor = Color.Red;
                    }
                    ////else if (double.Parse(e.Row.Cells[5].Text) < 0)
                    ////{
                    ////    e.Row.Cells[6].Text = "No autorisation!";
                    ////    e.Row.Cells[6].ForeColor = Color.Yellow;
                    ////}
                }
            }
            catch (Exception ex)
            {

                return;

            }
        }

        protected void CheckBox71_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void gvInformation5_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void Button37_Click1(object sender, EventArgs e)
        {
          
        }

        protected void Button40_Click1(object sender, EventArgs e)
        {
           



          
        }

        protected void g(object sender, GridViewRowEventArgs e)
        {

        }

        protected void gvInformation6_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    if (double.Parse(e.Row.Cells[4].Text) <= 0)
                    {
                        e.Row.Cells[4].Text = "Empty!";
                        e.Row.Cells[4].ForeColor = Color.Red;

                    }


                }
            }
            catch (Exception ex)
            {
                return;

            }
        }

        protected void Button75_Click(object sender, EventArgs e)
        {
            
          
        }

        protected void Button76_Click(object sender, EventArgs e)
        {

        }

        protected void Button77_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button78_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            //if (Drinks.Visible == false)
            //{

            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation12.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label6.Text = getId;
            DropDownList1.SelectedValue = getId;

            //SELECT idCommand, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, PriceSales, OperationDay, userAdded FROM BarRequestView WHERE (idCommand = @idCommand) GROUP BY idCommand, productName, PriceSales, OperationDay, userAdded

            string com = "SELECT idRecord,idProduct,idCommand, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,recordStatus ,PriceSales, OperationDay, userAdded FROM BarRequestViewFood WHERE (idCommand = '" + getId + "') and (requestStatus='unconfirmed') and (recordStatus='recorded')  GROUP BY idCommand,idRecord, productName,idProduct,recordStatus, PriceSales, OperationDay, userAdded";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarRequestViewFood");
            DataView dv = new DataView(ds.Tables["BarRequestViewFood"]);
            DataTable dt = ds.Tables["BarRequestViewFood"];
            if (dt.Rows.Count != 0)
            {
                gvInformation14.DataSource = dt;
                gvInformation14.DataBind();
                gvInformation14.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }

            PanelPayment0.Visible = true;
          
            gvInformation14.DataBind(); 
            gvInformation7.DataBind();

        }

        protected void Button80_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            foreach (GridViewRow row in gvInformation14.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox71");

                //TextBox QUnty = (TextBox)row.FindControl("TextBox1");
                //DropDownList QUntyp = (DropDownList)row.FindControl("DropDownList35");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;
                    string idRecord = row.Cells[3].Text;
                    string idCommand = row.Cells[4].Text;
                    string quantity = row.Cells[7].Text;


                    //TextBox8.Text = idProduct.ToString();
                    //TextBox5.Text = idRecord.ToString();                 
                    //TextBox9.Text = quantity.ToString();

                    string ll = "exec BarInsertNewRequestConfirmFood '" + row.Cells[3].Text + "','" + row.Cells[1].Text + "','" + row.Cells[7].Text + "','" + row.Cells[4].Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

                    //string lll = "exec BarInsertNewRequestConfirm2 '" + row.Cells[3].Text + "','" + row.Cells[1].Text + "','" + row.Cells[7].Text + "','" + row.Cells[4].Text + "'";
                    //SqlCommand cmddl = new SqlCommand(lll, con);
                    //cmddl.Dispose();
                    //cmddl.ExecuteNonQuery();

                    string l = "exec BarinsertSalesBar '" + row.Cells[1].Text + "','" + row.Cells[7].Text + "','" + Label3.Text + "','" + UserName.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();


                    gvInformation14.DataBind();
                    gvInformation12.DataBind();
                    gvInformation7.DataBind();
                    PanelPayment0.Visible = false;



                }
            }
        }

        protected void Button41_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            //if (Drinks.Visible == false)
            //{

            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation7.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label6.Text = getId;
            DropDownList1.SelectedValue = getId;

            //SELECT idCommand, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, PriceSales, OperationDay, userAdded FROM BarRequestView WHERE (idCommand = @idCommand) GROUP BY idCommand, productName, PriceSales, OperationDay, userAdded

            string com = "SELECT idRecord,idProduct,idCommand, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, PriceSales, OperationDay,recordStatus,requestStatus, userAdded FROM BarRequestViewFood WHERE (idCommand = '" + getId + "') and (requestStatus='confirmed') and (recordStatus='recorded')  GROUP BY idCommand,idRecord,recordStatus,requestStatus, productName,idProduct, PriceSales, OperationDay, userAdded";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarRequestViewFood");
            DataView dv = new DataView(ds.Tables["BarRequestViewFood"]);
            DataTable dt = ds.Tables["BarRequestViewFood"];
            if (dt.Rows.Count != 0)
            {
                gvInformation14.DataSource = dt;
                gvInformation14.DataBind();
                gvInformation14.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }

            PanelPayment0.Visible = true;
           
            gvInformation14.DataBind();
            gvInformation7.DataBind();
            Button80.Visible = false;
            gvInformation14.Enabled = false;


        }

        protected void CheckBox72_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            foreach (GridViewRow row in gvInformation14.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox72");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {


                  

                    string idProduct = row.Cells[1].Text;
                    string idRecord = row.Cells[3].Text;
                    string idCommand = row.Cells[4].Text;
                    string quantity = row.Cells[7].Text;


                    //TextBox8.Text = idProduct.ToString();
                    //TextBox5.Text = idRecord.ToString();
                    //TextBox6.Text = idCommand.ToString();
                    //TextBox9.Text = quantity.ToString();

                    string ll = "exec BarInsertNewRequestDeleteKitchen '" + row.Cells[1].Text + "','" + row.Cells[3].Text + "','" + row.Cells[4].Text + "','" + row.Cells[7].Text + "','" + Label3.Text + "','" + UserName.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();


                    string com = "SELECT idRecord,idProduct,idCommand, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, PriceSales, OperationDay, userAdded FROM BarRequestViewFood WHERE (idCommand = '" + Label6.Text + "') and requestStatus='unconfirmed'  GROUP BY idCommand,idRecord, productName,idProduct, PriceSales, OperationDay, userAdded";
                    SqlDataAdapter da = new SqlDataAdapter(com, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "BarRequestViewFood");
                    DataView dv = new DataView(ds.Tables["BarRequestViewFood"]);
                    DataTable dt = ds.Tables["BarRequestViewFood"];
                    if (dt.Rows.Count != 0)
                    {
                        gvInformation14.DataSource = dt;
                        gvInformation14.DataBind();
                        gvInformation14.Visible = true;
                        //GridView1.Visible = false;
                        //Labelsave.Text = "";


                    }



                }
                gvInformation14.DataBind();
            }
        }

        protected void Button87_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string ll = "exec BarCreateCommand '" + Label2.Text + "','" + Label3.Text + "','" + Label3.Text + "','" + TextBox10.Text + "'";
            SqlCommand cmdd = new SqlCommand(ll, con);
            cmdd.Dispose();
            cmdd.ExecuteNonQuery();

            DropDownList1.DataBind();
           


            PanelCommand.Visible = false;
            PanelCommand0.Visible = false;
          
            PanelAll.Visible = true;
         
            
            gvInformation7.Visible = false;
           
            AlertLabel37.Visible = false;
          





        }

        protected void Button84_Click(object sender, EventArgs e)
        {
          
           

        }

        protected void Button85_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button86_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button88_Click(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoManagerWee.aspx");
        }

        protected void Button90_Click(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoManagerWee.aspx");
        }

        protected void Button79_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button81_Click(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoManagerWee.aspx");
        }

        protected void gvInformation15_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridClientPayment4_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    if ((double.Parse(e.Row.Cells[4].Text) > 0) && (e.Row.Cells[8].Text == "deleted"))
                    {
                        e.Row.Cells[0].ForeColor = Color.Red;
                        e.Row.Cells[1].ForeColor = Color.Red;
                        e.Row.Cells[2].ForeColor = Color.Red;
                        e.Row.Cells[3].ForeColor = Color.Red;
                        e.Row.Cells[4].ForeColor = Color.Red;
                        e.Row.Cells[5].ForeColor = Color.Red;
                        e.Row.Cells[6].ForeColor = Color.Red;
                        e.Row.Cells[5].Text = "0";
                        e.Row.Cells[6].Text = "0";

                    }


                }
            }
            catch (Exception ex)
            {

                return;

            }
        }

        protected void Button37_Click2(object sender, EventArgs e)
        {
          


        }

        protected void Button89_Click(object sender, EventArgs e)
        {
           

        }

        protected void Button91_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button69_Click(object sender, EventArgs e)
        {

        }

        protected void Command2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void gvInformation7_SelectedIndexChanged(object sender, EventArgs e)
        {

        }




    }
}