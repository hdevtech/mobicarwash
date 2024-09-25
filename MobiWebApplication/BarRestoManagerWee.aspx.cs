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
    public partial class WebForm58: System.Web.UI.Page
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


            if ((Session["role_ame"] != null))
            {

                UserName.Text = Session["UserName"].ToString();
                RoleName.Text = Session["role_ame"].ToString();
                             

                if (RoleName.Text == "StoreKeeper")
                {
                     gvInformation5.Enabled = false;

                }
                else
                {
                    gvInformation5.Enabled = true;
                   
                }

                if (RoleName.Text == "Kitchen")
                {

                    gvInformation4.Visible = false;
                    PanelMain.Enabled = false;
                    AlertLabel24.Visible = false;
                    
                }

                if (RoleName.Text == "SellesManager")
                {

                    Button84.Enabled = false;
                    Button85.Enabled = false;
                    Button87.Enabled = false;
                    Button88.Enabled = false;
                    Button90.Enabled = false;
                    Button75.Enabled = false;
                    Button79.Enabled = false;
                    gvInformation14.Enabled = false;
                    gvInformation5.Enabled = false;


                }
                else
                {
                    Button84.Enabled = true;
                    Button85.Enabled = true;
                    Button87.Enabled = true;
                    Button88.Enabled = true;
                    Button90.Enabled = true;
                    Button75.Enabled = true;
                    Button79.Enabled = true;
                    gvInformation14.Enabled = true;
                    gvInformation5.Enabled = true;
               
                }




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

                    string idProduct = row.Cells[1].Text;
                    //string Quantity = row.Cells[3].Text;

                    //TextBox3.Text = idProduct.ToString();
                    //QUnty.Text = Quantity.ToString();

                    string ll = "exec BarInsertNewRequestManager '" + row.Cells[1].Text + "','" + QUnty.Text + "','" + Label2.Text + "','" + Label6.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

                    DropDownList1.DataBind();
                    gvInformation3.DataBind();
                    gvInformation4.DataBind();


                }
            }
            //00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation6.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox5");

                TextBox QUntP = (TextBox)row.FindControl("TextBox8");
                DropDownList QUntyU = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;
                    //string Quantity = row.Cells[3].Text;

                    //TextBox3.Text = idProduct.ToString();
                    //QUnty.Text = Quantity.ToString();

                    string ll = "exec BarInsertNewRequestManager '" + row.Cells[1].Text + "','" + QUntP.Text + "','" + Label2.Text + "','" + Label6.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

                    DropDownList1.DataBind();
                    gvInformation3.DataBind();
                    gvInformation4.DataBind();
                    gvInformation6.DataBind();



                }
            }


            PanelCommand.Visible = true;
            PanelList2.Visible = false;
            PanelAll.Visible = true;
            Drinks.Visible = true;

            FormView10.DataBind();
            FormView11.DataBind();
            gvInformation11.DataBind();

            string com = "SELECT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestView WHERE (idCommand = '" + Label6.Text + "')   and requestStatus='confirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarRequestView");
            DataView dv = new DataView(ds.Tables["BarRequestView"]);
            DataTable dt = ds.Tables["BarRequestView"];
            if (dt.Rows.Count != 0)
            {
                gvInformation5.DataSource = dt;
                gvInformation5.DataBind();
                gvInformation5.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";



            }








            //ccccccccccccccccccccccccccccccccccccc
        }

        protected void Button38_Click(object sender, EventArgs e)
        {
           






        }

        protected void Button40_Click(object sender, EventArgs e)
        {
            DropDownList1.DataBind();

            PanelCommand.Visible = true;
            PanelList2.Visible = false;
            PanelAll.Visible = true;
            Drinks.Visible = false;

            DropDownList1.DataBind();
            gvInformation3.DataBind();
            gvInformation4.DataBind();
            gvInformation5.DataBind();
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

                        string com = "SELECT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestView WHERE (idCommand = '" + DropDownList1.SelectedValue + "')  and requestStatus='unconfirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded";
                        SqlDataAdapter da = new SqlDataAdapter(com, con);
                        DataSet ds = new DataSet();
                        da.Fill(ds, "BarRequestView");
                        DataView dv = new DataView(ds.Tables["BarRequestView"]);
                        DataTable dt = ds.Tables["BarRequestView"];
                        if (dt.Rows.Count != 0)
                        {
                            gvInformation5.DataSource = dt;
                            gvInformation5.DataBind();
                            gvInformation5.Visible = true;
                            //GridView1.Visible = false;
                            //Labelsave.Text = "";


                        }


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
                    Button70.Visible = false;
                    Button71.Visible = false;
                    FormView10.DataBind();
                    FormView11.DataBind();
                    //FormView12.DataBind();
                    Panel98.Visible = false;
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
                Button70.Visible = true;
                Button71.Visible = true;
                FormView10.DataBind();
                FormView11.DataBind();
                //FormView12.DataBind();
                FormView15.DataBind();
                gvInformation5.Visible = false;
                Panel98.Visible = true;




            }
            AlertLabel0.Text = "";
            AlertLabel1.Text = "";
        }

        protected void gvInformation5_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{

            //    TotalInoice += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Total"));

            //}
            //else if (e.Row.RowType == DataControlRowType.Footer)
            //{

            //    e.Row.Cells[4].Text = TotalInoice.ToString("0,000");



            //}
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

                    string idProduct = row.Cells[1].Text;
                    //string idRecord = row.Cells[3].Text;
                    //string idCommand = row.Cells[4].Text;
                    //string quantity = row.Cells[7].Text;





                }
            }
        }

        protected void COMMAND_ID0_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button70_Click(object sender, EventArgs e)
        {
            PanelCommand.Visible = true;
            PanelList2.Visible = true;
            PanelAll.Visible = true;
            Drinks.Visible = false;
            Drinks1.Visible = true;
            FormView10.DataBind();
            AlertLabel0.Text = "";
            AlertLabel1.Text = "";
        }

        protected void Button71_Click(object sender, EventArgs e)
        {


            //ooooooooooooooooooooooooo
            gvInformation3.DataBind();


            PanelCommand.Visible = true;
            Button69.Visible = true;
            PanelAll.Visible = true;
            Drinks.Visible = true;
            Drinks1.Visible = true;
            Button72.Visible = true;
            Button71.Visible = false;
            FormView10.DataBind();
            FormView11.DataBind();
            //FormView12.DataBind();
            //ooooooooooooooooooooooo
            AlertLabel0.Text = "";
            AlertLabel1.Text = "";

            string com = "SELECT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestView WHERE (idCommand = '" + DropDownList1.SelectedValue + "')  and requestStatus='unconfirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarRequestView");
            DataView dv = new DataView(ds.Tables["BarRequestView"]);
            DataTable dt = ds.Tables["BarRequestView"];
            if (dt.Rows.Count != 0)
            {
                gvInformation5.DataSource = dt;
                gvInformation5.DataBind();
                gvInformation5.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }


        }

        protected void Button72_Click(object sender, EventArgs e)
        {
            //ooooooooooooooooooooooooo
            gvInformation3.DataBind();


            PanelCommand.Visible = true;
            //PanelList2.Visible = true;
            PanelAll.Visible = true;
            Drinks.Visible = true;
            Drinks1.Visible = false;
            Button72.Visible = false;
            Button71.Visible = true;
            FormView10.DataBind();
            FormView11.DataBind();
            //FormView12.DataBind();
            //ooooooooooooooooooooooo
            AlertLabel0.Text = "";
            AlertLabel1.Text = "";

            string com = "SELECT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestView WHERE (idCommand = '" + DropDownList1.SelectedValue + "')  and requestStatus='unconfirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarRequestView");
            DataView dv = new DataView(ds.Tables["BarRequestView"]);
            DataTable dt = ds.Tables["BarRequestView"];
            if (dt.Rows.Count != 0)
            {
                gvInformation5.DataSource = dt;
                gvInformation5.DataBind();
                gvInformation5.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }

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
                    string idRecord = row.Cells[3].Text;
                    string idCommand = row.Cells[4].Text;
                    string quantity = row.Cells[7].Text;


                    TextBox8.Text = idProduct.ToString();
                    TextBox5.Text = idRecord.ToString();
                    TextBox6.Text = idCommand.ToString();
                    TextBox9.Text = quantity.ToString();



                    //string ll = "exec BarInsertNewRequestDelete3 '" + TextBox8.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox9.Text + "'";
                    //SqlCommand cmdd = new SqlCommand(ll, con);
                    //cmdd.Dispose();
                    //cmdd.ExecuteNonQuery();

                    string l = "exec BarinsertRequestReturn '" + row.Cells[1].Text + "','" + row.Cells[7].Text + "','" + Label3.Text + "','" + Label2.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();

                    gvInformation5.DataBind();
                    //gvInformation4.DataBind();
                    gvInformation10.DataBind();
                    gvInformation11.DataBind();
                    FormView10.DataBind();
                    FormView11.DataBind();
                    //FormView12.DataBind();
                    FormView15.DataBind();

                    string com = "SELECT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestViewStockB WHERE (idCommand = '" + Label6.Text + "')  GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded";
                    SqlDataAdapter da = new SqlDataAdapter(com, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "BarRequestViewStockB");
                    DataView dv = new DataView(ds.Tables["BarRequestViewStockB"]);
                    DataTable dt = ds.Tables["BarRequestViewStockB"];
                    if (dt.Rows.Count != 0)
                    {
                        gvInformation5.DataSource = dt;
                        gvInformation5.DataBind();
                        gvInformation5.Visible = true;
                        //GridView1.Visible = false;
                        //Labelsave.Text = "";


                    }


                }
            }
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
                    string l = "exec BarPayCommand '" + Label6.Text + "','" + TextBox7.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();

                    AlertLabel1.Text = "Paid Successfull!";
                    AlertLabel0.Text = "";
                    TextBox7.Text = "";
                    gvInformation3.DataBind();
                    gvInformation5.DataBind();
                    gvInformation4.DataBind();
                    gvInformation11.DataBind();

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

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button74_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            foreach (GridViewRow row in gvInformation5.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox70");

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

                    string ll = "exec BarInsertNewRequestConfirm3 '" + row.Cells[3].Text + "','" + row.Cells[1].Text + "','" + row.Cells[7].Text + "','" + row.Cells[4].Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

                    //string lll = "exec BarInsertNewRequestConfirm2 '" + row.Cells[3].Text + "','" + row.Cells[1].Text + "','" + row.Cells[7].Text + "','" + row.Cells[4].Text + "'";
                    //SqlCommand cmddl = new SqlCommand(lll, con);
                    //cmddl.Dispose();
                    //cmddl.ExecuteNonQuery();

                    //string l = "exec BarinsertSalesBar '" + row.Cells[1].Text + "','" + row.Cells[7].Text + "','" + Label3.Text + "','" + Label2.Text + "'";
                    //SqlCommand cmd = new SqlCommand(l, con);
                    //cmd.Dispose();
                    //cmd.ExecuteNonQuery();

                    Drinks.Visible = false;
                    PanelPayment.Visible = false;
                    gvInformation11.DataBind();
                    gvInformation4.DataBind();
                    gvInformation5.DataBind();

                }
            }
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
            //con.Close();
            //con.Open();


            //if (Drinks.Visible == false)
            //{
            //    FormView10.DataBind();
            //    foreach (GridViewRow row in gvInformation11.Rows)
            //    {
            //        CheckBox checkbox = (CheckBox)row.FindControl("CheckBox71");



            //        if (checkbox.Checked)
            //        {

            //            string idCommand = row.Cells[0].Text;
            //            DropDownList1.SelectedValue = idCommand.ToString();

            //            string com = "SELECT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestView WHERE (idCommand = '" + DropDownList1.SelectedValue + "')  and requestStatus='confirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded";
            //            SqlDataAdapter da = new SqlDataAdapter(com, con);
            //            DataSet ds = new DataSet();
            //            da.Fill(ds, "BarRequestView");
            //            DataView dv = new DataView(ds.Tables["BarRequestView"]);
            //            DataTable dt = ds.Tables["BarRequestView"];
            //            if (dt.Rows.Count != 0)
            //            {
            //                gvInformation5.DataSource = dt;
            //                gvInformation5.DataBind();
            //                gvInformation5.Visible = true;
            //                //GridView1.Visible = false;
            //                //Labelsave.Text = "";


            //            }




            //        }

            //        //ooooooooooooooooooooooooo
            //        gvInformation3.DataBind();
            //        gvInformation5.DataBind();

            //        PanelCommand.Visible = true;
            //        //PanelList2.Visible = true;
            //        PanelAll.Visible = true;
            //        Drinks.Visible = true;
            //        //Drinks1.Visible = true;
            //        Button74.Visible = false;
            //        Button72.Visible = false;
            //        FormView10.DataBind();
            //        FormView11.DataBind();
            //        //FormView12.DataBind();
            //        //ooooooooooooooooooooooo

            //    }



            //}
            //else
            //{
            //    PanelCommand.Visible = true;
            //    //PanelList2.Visible = true;
            //    PanelAll.Visible = true;
            //    Drinks.Visible = false;
            //    Drinks1.Visible = false;
            //    Button72.Visible = false;
            //    Button74.Visible = true;
            //    FormView10.DataBind();
            //    FormView11.DataBind();
            //    //FormView12.DataBind();
            //    FormView15.DataBind();
            //    gvInformation5.Visible = false;




            //}
            //AlertLabel0.Text = "";
            //AlertLabel1.Text = "";
        }

        protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            foreach (GridViewRow row in gvInformation6.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox5");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;
                    //string idRecord = row.Cells[3].Text;
                    //string idCommand = row.Cells[4].Text;
                    //string quantity = row.Cells[7].Text;





                }
            }
        }

        protected void gvInformation5_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void Button37_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            //if (Drinks.Visible == false)
            //{
            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation11.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label6.Text = getId;
            DropDownList1.SelectedValue = getId;

            string com = "SELECT idCommand,idRecord, SUM(PricePurchase * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales,PricePurchase, OperationDay, userAdded,requestStatus FROM BarRequestViewStockB WHERE (idCommand = '" + getId + "')   and requestStatus='confirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord,PricePurchase, OperationDay, userAdded";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarRequestViewStockB");
            DataView dv = new DataView(ds.Tables["BarRequestViewStockB"]);
            DataTable dt = ds.Tables["BarRequestViewStockB"];
            if (dt.Rows.Count != 0)
            {
                gvInformation5.DataSource = dt;
                gvInformation5.DataBind();
                gvInformation5.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";



            }






            //ooooooooooooooooooooooooo
            gvInformation3.DataBind();
            gvInformation5.DataBind();

            PanelCommand.Visible = true;
            //PanelList2.Visible = true;
            PanelAll.Visible = true;
            Drinks.Visible = true;
            Panel98.Visible = false;
            PanelPayment0.Visible = false;
            PanelPayment.Visible = true;

            Button74.Visible = false;
            Button72.Visible = false;
            Button70.Visible = true;
            Button71.Visible = true;
            FormView10.DataBind();
            FormView11.DataBind();
            //FormView12.DataBind();
            //ooooooooooooooooooooooo





            //}
            //else
            //{
            //    PanelCommand.Visible = true;
            //    //PanelList2.Visible = true;
            //    PanelAll.Visible = true;
            //    Drinks.Visible = false;
            //    Drinks1.Visible = false;
            //    Button72.Visible = false;
            //    Button74.Visible = true;
            //    FormView10.DataBind();
            //    FormView11.DataBind();               

            //    FormView15.DataBind();
            //    gvInformation5.Visible = false;




            //}
            AlertLabel0.Text = "";
            AlertLabel1.Text = "";
        }

        protected void Button40_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            //if (Drinks.Visible == false)
            //{

            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation4.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label6.Text = getId;
            DropDownList1.SelectedValue = getId;

            string com = "SELECT idCommand,idRecord, SUM(PricePurchase * quantity) AS Total, SUM(quantity) AS quantity, productName,PricePurchase,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestViewStockB WHERE (idCommand = '" + getId + "')  and requestStatus='unconfirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,PricePurchase,idRecord, OperationDay, userAdded";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarRequestViewStockB");
            DataView dv = new DataView(ds.Tables["BarRequestViewStockB"]);
            DataTable dt = ds.Tables["BarRequestViewStockB"];
            if (dt.Rows.Count != 0)
            {
                gvInformation5.DataSource = dt;
                gvInformation5.DataBind();
                gvInformation5.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }

            //ooooooooooooooooooooooooo
            gvInformation3.DataBind();
            gvInformation5.DataBind();

            PanelCommand.Visible = true;
            //PanelList2.Visible = true;
            PanelAll.Visible = true;
            Drinks.Visible = true;
            PanelPayment0.Visible = false;
            PanelPayment.Visible = true;

            Button72.Visible = false;
            Button70.Visible = false;
            Button71.Visible = false;

            Button74.Visible = true;


            FormView10.DataBind();
            FormView11.DataBind();
            //FormView12.DataBind();
            Panel98.Visible = false;
            //ooooooooooooooooooooooo





            //}
            //else
            //{
            //    PanelCommand.Visible = true;
            //    //PanelList2.Visible = true;
            //    PanelAll.Visible = true;
            //    Drinks.Visible = false;
            //    Drinks1.Visible = false;
            //    Button72.Visible = false;
            //    Button70.Visible = true;
            //    Button71.Visible = true;

            //    FormView10.DataBind();
            //    FormView11.DataBind();
            //    //FormView12.DataBind();
            //    FormView15.DataBind();
            //    gvInformation5.Visible = false;
            //    Panel98.Visible = true;




            //}
            AlertLabel0.Text = "";
            AlertLabel1.Text = "";




            //gvInformation3.DataBind();
            //gvInformation5.DataBind();

            //PanelCommand.Visible = true;
            ////PanelList2.Visible = true;
            //PanelAll.Visible = true;
            //Drinks.Visible = true;
            ////Drinks1.Visible = true;

            //Button72.Visible = false;
            //Button70.Visible = false;
            //Button71.Visible = false;
            //FormView10.DataBind();
            //FormView11.DataBind();
            ////FormView12.DataBind();
            //Panel98.Visible = false;
            ////ooooooooooooooooooooooo


            //////Label2.Text = memderid.ToString();
            ////con.Close();
            ////con.Open();
            ////SqlCommand cmd = new SqlCommand("delete from Expenses_Recorded  where Expenseid='" + Expenseidss + "'", con);
            ////cmd.ExecuteNonQuery();
            ////Alert.Show("Thanks, Deleted successfully....");

            //////Label_Message.Text = "Thanks, Deleted Submited successfully....";
            //////Expense_List();
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
            con.Close();
            con.Open();


            foreach (GridViewRow row in gvInformation3.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");

                TextBox QUnty = (TextBox)row.FindControl("TextBox7");
                DropDownList QUntyp = (DropDownList)row.FindControl("DropDownList17");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;
                    //string Quantity = row.Cells[3].Text;

                    //TextBox3.Text = idProduct.ToString();
                    //QUnty.Text = Quantity.ToString();

                    string ll = "exec BarInsertNewRequest3 '" + row.Cells[1].Text + "','" + QUnty.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedValue + "','" + QUntyp.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

                  


                }
            }
            //00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation6.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox5");

                TextBox QUntP = (TextBox)row.FindControl("TextBox8");
                DropDownList QUntyU = (DropDownList)row.FindControl("DropDownList16");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;
                    //string Quantity = row.Cells[3].Text;

                    //TextBox3.Text = idProduct.ToString();
                    //QUnty.Text = Quantity.ToString();

                    string ll = "exec BarInsertNewRequest3 '" + row.Cells[1].Text + "','" + QUntP.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedValue + "','" + QUntyU.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

                  



                }
            }
            //============================================================
            foreach (GridViewRow row in gvInformation8.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox6");

                TextBox QUntPa = (TextBox)row.FindControl("TextBox11");
                DropDownList QUntyUa = (DropDownList)row.FindControl("DropDownList15");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;
                    //string Quantity = row.Cells[3].Text;

                    //TextBox3.Text = idProduct.ToString();
                    //QUnty.Text = Quantity.ToString();

                    string ll = "exec BarInsertNewRequest3 '" + row.Cells[1].Text + "','" + QUntPa.Text + "','" + UserName.Text + "','" + DropDownList1.SelectedValue + "','" + QUntyUa.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

                  



                }
            }


            //PanelCommand.Visible = true;
            PanelList2.Visible = false;
            PanelAll.Visible = true;
            Drinks.Visible = true;

            DropDownList1.DataBind();
            gvInformation3.DataBind();
            gvInformation4.DataBind();
            gvInformation6.DataBind();        

            ////FormView10.DataBind();
            ////FormView11.DataBind();
            gvInformation11.DataBind();
            Response.Redirect("BarRestoManagerWee.aspx");

      




            //ccccccccccccccccccccccccccccccccccccc
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

            string com = "SELECT idRecord,idProduct,idCommand, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, PriceSales, OperationDay, userAdded FROM BarRequestView WHERE (idCommand = '" + getId + "') and requestStatus='unconfirmed'  GROUP BY idCommand,idRecord, productName,idProduct, PriceSales, OperationDay, userAdded";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarRequestView");
            DataView dv = new DataView(ds.Tables["BarRequestView"]);
            DataTable dt = ds.Tables["BarRequestView"];
            if (dt.Rows.Count != 0)
            {
                gvInformation14.DataSource = dt;
                gvInformation14.DataBind();
                gvInformation14.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }

            PanelPayment0.Visible = true;
            PanelPayment.Visible = false;
            gvInformation14.DataBind();
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

                    string ll = "exec BarInsertNewRequestConfirm '" + row.Cells[3].Text + "','" + row.Cells[1].Text + "','" + row.Cells[7].Text + "','" + row.Cells[4].Text + "'";
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
            gvInformation14.Enabled = false;

            //SELECT idCommand, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, PriceSales, OperationDay, userAdded FROM BarRequestView WHERE (idCommand = @idCommand) GROUP BY idCommand, productName, PriceSales, OperationDay, userAdded

            string com = "SELECT idRecord,idProduct,idCommand, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, PriceSales, OperationDay, userAdded FROM BarRequestView WHERE (idCommand = '" + getId + "') and requestStatus='confirmed'  GROUP BY idCommand,idRecord, productName,idProduct, PriceSales, OperationDay, userAdded";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarRequestView");
            DataView dv = new DataView(ds.Tables["BarRequestView"]);
            DataTable dt = ds.Tables["BarRequestView"];
            if (dt.Rows.Count != 0)
            {
                gvInformation14.DataSource = dt;
                gvInformation14.DataBind();
                gvInformation14.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }

            PanelPayment0.Visible = true;
            PanelPayment.Visible = false;
            Button80.Visible = false;
            gvInformation14.DataBind();
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


                    TextBox8.Text = idProduct.ToString();
                    TextBox5.Text = idRecord.ToString();
                    TextBox6.Text = idCommand.ToString();
                    TextBox9.Text = quantity.ToString();

                    string ll = "exec BarInsertNewRequestDelete '" + TextBox8.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox9.Text + "','" + Label3.Text + "','" + UserName.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();
        
                    string com = "SELECT idRecord,idProduct,idCommand, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, PriceSales, OperationDay, userAdded FROM BarRequestView WHERE (idCommand = '" + Label6.Text + "') and requestStatus='unconfirmed'  GROUP BY idCommand,idRecord, productName,idProduct, PriceSales, OperationDay, userAdded";
                    SqlDataAdapter da = new SqlDataAdapter(com, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "BarRequestView");
                    DataView dv = new DataView(ds.Tables["BarRequestView"]);
                    DataTable dt = ds.Tables["BarRequestView"];
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
            //con.Close();
            //con.Open();
            //string ll = "exec BarCreateCommand '" + Label2.Text + "','" + Label3.Text + "','" + Label3.Text + "','" + TextBox10.Text + "'";
            //SqlCommand cmdd = new SqlCommand(ll, con);
            //cmdd.Dispose();
            //cmdd.ExecuteNonQuery();

            //DropDownList1.DataBind();
            //gvInformation3.DataBind();
            //gvInformation4.DataBind();
            //gvInformation5.DataBind();


            //PanelCommand.Visible = false;
            //PanelCommand0.Visible = false;
            //PanelList2.Visible = true;
            //PanelAll.Visible = true;
            //Drinks.Visible = false;
            //LoadingMainStore.Visible = false;
            //gvInformation11.Visible = false;
            //gvInformation7.Visible = false;
            //AlertLabel36.Visible = false;
            //AlertLabel37.Visible = false;
            //PanelMain.Visible = true;

            Response.Redirect("ProductPhisicalStock.aspx");



        }

        protected void Button84_Click(object sender, EventArgs e)
        {
            PanelList2.Visible = false;
            PanelAll.Visible = true;
            Drinks.Visible = false;
            LoadingMainStore.Visible = true;
            gvInformation11.Visible = false;
            gvInformation7.Visible = false;
            AlertLabel36.Visible = false;
            AlertLabel37.Visible = false;
            PanelMain.Visible = true;
            Button91.Visible = false;
            Button79.Visible = true;

        }

        protected void Button85_Click(object sender, EventArgs e)
        {
            PanelList2.Visible = false;
            PanelAll.Visible = true;
            Drinks.Visible = false;
            LoadingMainStore.Visible = false;
            gvInformation11.Visible = true;
            gvInformation7.Visible = false;
            AlertLabel36.Visible = true;
            AlertLabel37.Visible = false;
            PanelMain.Visible = true;
            PanelMain.Visible = true;
        }

        protected void Button86_Click(object sender, EventArgs e)
        {
            PanelList2.Visible = false;
            PanelAll.Visible = true;
            Drinks.Visible = false;
            LoadingMainStore.Visible = false;
            gvInformation11.Visible = false;
            gvInformation7.Visible = true;
            AlertLabel36.Visible = false;
            AlertLabel37.Visible = true;
        }

        protected void Button88_Click(object sender, EventArgs e)
        {
            Response.Redirect("Requests.aspx");
        }

        protected void Button90_Click(object sender, EventArgs e)
        {
            Response.Redirect("Requests.aspx");
        }

        protected void Button79_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            foreach (GridViewRow row in gvInformation15.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox18");

                TextBox QUnty = (TextBox)row.FindControl("TextBox72");
                DropDownList QUntyp = (DropDownList)row.FindControl("DropDownList35");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;
                  
                    string l = "exec BarinsertPuchase '" + row.Cells[1].Text + "','" + QUnty.Text + "','" + Label3.Text + "','" + RoleName.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    //Label70.Text = "Submitted Successfull!";                  
                    gvInformation11.DataBind();



                }
            }
            //00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation16.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox73");

                TextBox QUntyP = (TextBox)row.FindControl("TextBox73");
                DropDownList QUntyU = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;
                 
                    string l = "exec BarinsertPuchase '" + row.Cells[1].Text + "','" + QUntyP.Text + "','" + Label3.Text + "','" + RoleName.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    //Label70.Text = "Submitted Successfull!";

                    gvInformation6.DataBind();


                }
            }

            //00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation17.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox19");

                TextBox QUntyPd = (TextBox)row.FindControl("TextBox71");
                DropDownList QUntyUd = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;
                    //string Quantity = row.Cells[3].Text;

                    //TextBox3.Text = idProduct.ToString();
                    //QUnty.Text = Quantity.ToString();



                    string l = "exec BarinsertPuchase '" + row.Cells[1].Text + "','" + QUntyPd.Text + "','" + Label3.Text + "','" + RoleName.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    //Label70.Text = "Submitted Successfull!";



                    gvInformation12.DataBind();


                }
            }
            //000000000000000000000000000000000000
            Response.Redirect("BarRestoManagerWee.aspx");
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
            con.Close();
            con.Open();


            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation15.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label7.Text = getId;           
            GridClientPayment4.DataBind();
            GridClientPayment5.DataBind();
            Button91.Visible = true;
            Button79.Visible = false;
            gvInformation15.Visible = false;
            gvInformation16.Visible = false;
            gvInformation17.Visible = false;
            gvInformation18.Visible = false;
            AlertLabel62.Visible = false;
            AlertLabel63.Visible = false; 
            AlertLabel64.Visible = false;
            GridClientPayment4.Visible = true;
            GridClientPayment5.Visible = true;
            GridClientPayment6.Visible = true;

        }

        protected void Button89_Click(object sender, EventArgs e)
        {
            PanelList2.Visible = false;
            PanelAll.Visible = true;
            Drinks.Visible = false;
            LoadingMainStore.Visible = true;
            gvInformation11.Visible = false;
            gvInformation7.Visible = false;
            AlertLabel36.Visible = false;
            AlertLabel37.Visible = false;
            PanelMain.Visible = true;
            Button91.Visible = false;
            Button79.Visible = false;

        }

        protected void Button91_Click(object sender, EventArgs e)
        {
            PanelList2.Visible = false;
            PanelAll.Visible = true;
            Drinks.Visible = false;
            LoadingMainStore.Visible = true;
            gvInformation11.Visible = false;
            gvInformation7.Visible = false;
            AlertLabel36.Visible = false;
            AlertLabel37.Visible = false;
            PanelMain.Visible = true;
            Button91.Visible = false;
            Button79.Visible = false;
            gvInformation15.Visible = true;
            gvInformation16.Visible = true;
            gvInformation17.Visible = true;
            gvInformation18.Visible = true;
            AlertLabel62.Visible = true;
            AlertLabel63.Visible = true;
            AlertLabel64.Visible = true;
            GridClientPayment4.Visible = false;
            GridClientPayment5.Visible = false;
            GridClientPayment6.Visible = false;
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

        protected void Button37_Click3(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation16.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label7.Text = getId;
            GridClientPayment4.DataBind();
            GridClientPayment5.DataBind();
            Button91.Visible = true;
            Button79.Visible = false;
            gvInformation15.Visible = false;
            gvInformation16.Visible = false;
            gvInformation17.Visible = false;
            gvInformation18.Visible = false;
            AlertLabel62.Visible = false;
            AlertLabel63.Visible = false;
            AlertLabel64.Visible = false;
            GridClientPayment4.Visible = true;
            GridClientPayment5.Visible = true;
            GridClientPayment6.Visible = true;
        }

        protected void Button37_Click4(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation17.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label7.Text = getId;
            GridClientPayment4.DataBind();
            //GridClientPayment5.DataBind();
            Button91.Visible = true;
            Button79.Visible = false;
            gvInformation15.Visible = false;
            gvInformation16.Visible = false;
            gvInformation17.Visible = false;
            gvInformation18.Visible = false;
            AlertLabel62.Visible = false;
            AlertLabel63.Visible = false;
            AlertLabel64.Visible = false;
            GridClientPayment4.Visible = true;
            GridClientPayment5.Visible = true;
            GridClientPayment6.Visible = true;
        }

        protected void Button92_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation18.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label7.Text = getId;
            GridClientPayment4.DataBind();
            //GridClientPayment5.DataBind();
            Button91.Visible = true;
            Button79.Visible = false;
            gvInformation15.Visible = false;
            gvInformation16.Visible = false;
            gvInformation17.Visible = false;
            gvInformation18.Visible = false;
            AlertLabel62.Visible = false;
            AlertLabel63.Visible = false;
            AlertLabel64.Visible = false;
            GridClientPayment4.Visible = true;
            GridClientPayment5.Visible = true;
            GridClientPayment6.Visible = true;
        }

       


    }
}