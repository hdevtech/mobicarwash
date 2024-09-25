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
    public partial class WebForm20 : System.Web.UI.Page
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



            if ((Session["role_ame"] != null))
            {

                UserName.Text = Session["UserName"].ToString();
                RoleName.Text = Session["role_ame"].ToString();



                if (RoleName.Text == "Administrator")
                {

                    gvInformation15.Visible = true;
                    AlertLabel72.Visible = true;

                }
                else
                {
                    gvInformation15.Visible = false;
                    AlertLabel72.Visible = false;
                }


            }
            else
            {

                Response.Redirect("~/Default.aspx");
            }
            //con.Close();
            //con.Open();
            //string com = "SELECT [idProduct], [productName], [PriceSales],quantityStock, [idDrinkCategory] FROM [BarProducts2] WHERE ([idDrinkCategory] =1)";
            //SqlDataAdapter da = new SqlDataAdapter(com, con);
            //DataSet ds = new DataSet();
            //da.Fill(ds, "BarProducts2");
            //DataView dv = new DataView(ds.Tables["BarProducts2"]);
            //DataTable dt = ds.Tables["BarProducts2"];
            //if (dt.Rows.Count != 0)
            //{
            //    gvInformation15.DataSource = dt;

            //    gvInformation15.DataBind();
            //    gvInformation15.Visible = true;
            //    //GridView1.Visible = false;
            //    //Labelsave.Text = "";


            //}
            
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

            string com = "SELECT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestViewStock WHERE (idCommand = '" + Label6.Text + "')   and requestStatus='confirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarRequestViewStock");
            DataView dv = new DataView(ds.Tables["BarRequestViewStock"]);
            DataTable dt = ds.Tables["BarRequestViewStock"];
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

                        string com = "SELECT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestViewStock WHERE (idCommand = '" + DropDownList1.SelectedValue + "')  and requestStatus='unconfirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded";
                        SqlDataAdapter da = new SqlDataAdapter(com, con);
                        DataSet ds = new DataSet();
                        da.Fill(ds, "BarRequestViewStock");
                        DataView dv = new DataView(ds.Tables["BarRequestViewStock"]);
                        DataTable dt = ds.Tables["BarRequestViewStock"];
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

                TextBox QUntP = (TextBox)row.FindControl("TextBox7");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;
                    string Quantity = row.Cells[4].Text;
                    //e.Row.Cells[5].ForeColor = Color.Red;
                    QUntP.BorderColor = Color.Red;
                    TextBox7.BorderColor = Color.Red;
                    TextBox7.Text = idProduct.ToString();
                  




                }
            }
        }

        protected void COMMAND_ID0_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button70_Click(object sender, EventArgs e)
        {
            //PanelCommand.Visible = true;
            //PanelList2.Visible = true;
            //PanelAll.Visible = true;
            //Drinks.Visible = false;
            //Drinks1.Visible = true;

            PanelCommand.Visible = false;
            PanelList2.Visible = true;
            PanelAll.Visible = true;
            Drinks.Visible = false;
            Expensess.Visible = false;
            FormView10.DataBind();
            AlertLabel0.Text = "";
            AlertLabel1.Text = "";
        }

        protected void Button71_Click(object sender, EventArgs e)
        {


            //ooooooooooooooooooooooooo
            gvInformation3.DataBind();


            PanelCommand.Visible = true;
            //PanelList2.Visible = true;
            PanelAll.Visible = true;
            Drinks.Visible = true;
            Drinks1.Visible = true;
            Panel113.Visible = true;
            Button72.Visible = true;
            Button71.Visible = false;
            Expensess.Visible = false;
            FormView10.DataBind();
            FormView11.DataBind();
            //FormView12.DataBind();
            //ooooooooooooooooooooooo
            AlertLabel0.Text = "";
            AlertLabel1.Text = "";

            string com = "SELECT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestViewStock WHERE (idCommand = '" + DropDownList1.SelectedValue + "')  and requestStatus='unconfirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarRequestViewStock");
            DataView dv = new DataView(ds.Tables["BarRequestViewStock"]);
            DataTable dt = ds.Tables["BarRequestViewStock"];
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
            Panel113.Visible = false;
            Expensess.Visible = false;
            FormView10.DataBind();
            FormView11.DataBind();
            //FormView12.DataBind();
            //ooooooooooooooooooooooo
            AlertLabel0.Text = "";
            AlertLabel1.Text = "";

            string com = "SELECT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestViewStock WHERE (idCommand = '" + DropDownList1.SelectedValue + "')  and requestStatus='unconfirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarRequestViewStock");
            DataView dv = new DataView(ds.Tables["BarRequestViewStock"]);
            DataTable dt = ds.Tables["BarRequestViewStock"];
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



                    string ll = "exec BarInsertNewRequestDelete2 '" + TextBox8.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox9.Text + "','" + UserName.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

                    //string l = "exec BarinsertRequestReturn '" + row.Cells[1].Text + "','" + row.Cells[7].Text + "','" + Label3.Text + "','" + Label2.Text + "'";
                    //SqlCommand cmd = new SqlCommand(l, con);
                    //cmd.Dispose();
                    //cmd.ExecuteNonQuery();

                    gvInformation5.DataBind();
                    gvInformation4.DataBind();
                    gvInformation10.DataBind();
                    gvInformation11.DataBind();
                    FormView10.DataBind();
                    FormView11.DataBind();
                    //FormView12.DataBind();
                    FormView15.DataBind();

                    string com = "SELECT DISTINCT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestViewStock WHERE (idCommand = '" + TextBox6.Text + "')  GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded";
                    SqlDataAdapter da = new SqlDataAdapter(com, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "BarRequestViewStock");
                    DataView dv = new DataView(ds.Tables["BarRequestViewStock"]);
                    DataTable dt = ds.Tables["BarRequestViewStock"];
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

                    string lllll = "exec BarINSERTDailyCloseNew '" + DropDownList14.SelectedValue + "'";
                    SqlCommand cmdddll = new SqlCommand(lllll, con);
                    cmdddll.Dispose();
                    cmdddll.ExecuteNonQuery();

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
                    //PanelPayment.Visible = false;


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

                    //string ll = "exec BarInsertNewRequestConfirm '" + row.Cells[3].Text + "','" + row.Cells[1].Text + "','" + row.Cells[7].Text + "','" + row.Cells[4].Text + "'";
                    //SqlCommand cmdd = new SqlCommand(ll, con);
                    //cmdd.Dispose();
                    //cmdd.ExecuteNonQuery();

                    string lll = "exec BarInsertNewRequestConfirm2 '" + row.Cells[3].Text + "','" + row.Cells[1].Text + "','" + row.Cells[7].Text + "','" + row.Cells[4].Text + "'";
                    SqlCommand cmddl = new SqlCommand(lll, con);
                    cmddl.Dispose();
                    cmddl.ExecuteNonQuery();

                    //string l = "exec BarinsertSalesBar2 '" + row.Cells[1].Text + "','" + row.Cells[7].Text + "','" + Label3.Text + "','" + Label2.Text + "'";
                    //SqlCommand cmd = new SqlCommand(l, con);
                    //cmd.Dispose();
                    //cmd.ExecuteNonQuery();

                    Drinks.Visible = false;
                    Expensess.Visible = false;
                    gvInformation11.DataBind();
                    gvInformation4.DataBind();
                    gvInformation5.DataBind();
                    //PanelPayment.Visible = false;

                }
            }
        }

        protected void gvInformation11_RowDataBound(object sender, GridViewRowEventArgs e)
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

            //            string com = "SELECT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestViewStock WHERE (idCommand = '" + DropDownList1.SelectedValue + "')  and requestStatus='confirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded";
            //            SqlDataAdapter da = new SqlDataAdapter(com, con);
            //            DataSet ds = new DataSet();
            //            da.Fill(ds, "BarRequestViewStock");
            //            DataView dv = new DataView(ds.Tables["BarRequestViewStock"]);
            //            DataTable dt = ds.Tables["BarRequestViewStock"];
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
            Label7.Visible = true;
            Label7.Text = getId;
            Label8.Visible = true;
            Label8.Text = getId;
            DropDownList1.SelectedValue = getId;
            gvInformation5.Enabled = false;

            string com = "SELECT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestViewStock WHERE (idCommand = '" + getId + "')   and requestStatus='confirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarRequestViewStock");
            DataView dv = new DataView(ds.Tables["BarRequestViewStock"]);
            DataTable dt = ds.Tables["BarRequestViewStock"];
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
            Panel98.Visible = true;
            Expensess.Visible = false;

            Button74.Visible = false;
            Button72.Visible = false;
            Button70.Visible = true;
            Button71.Visible = true;
            Button97.Visible = true;
            FormView10.DataBind();
            FormView11.DataBind();
            //PanelPayment.Visible = true;
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
            Label7.Visible = true;
            Label7.Text = getId;
            Label8.Visible = true;
            Label8.Text = getId;
            DropDownList1.SelectedValue = getId;
            gvInformation5.Enabled = true;

            string com = "SELECT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestViewStock WHERE (idCommand = '" + getId + "')  and requestStatus='unconfirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarRequestViewStock");
            DataView dv = new DataView(ds.Tables["BarRequestViewStock"]);
            DataTable dt = ds.Tables["BarRequestViewStock"];
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
            //Drinks1.Visible = true;

            Button72.Visible = false;
            Button70.Visible = false;
            Button71.Visible = false;
            Button97.Visible = false;

            Button74.Visible = true;
            //PanelPayment.Visible = true;



            FormView10.DataBind();
            FormView11.DataBind();
            //FormView12.DataBind();
            Panel98.Visible = false;
            Expensess.Visible = false;





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

        protected void Button75_Click(object sender, EventArgs e)
        {
      

        }

        protected void Button42_Click1(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoOperator.aspx");
        }

        protected void Button77_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button79_Click(object sender, EventArgs e)
        {
            if (Expensess.Visible == false)
            {
                Expensess.Visible = true;






            }
            else
            {
                Expensess.Visible = false;

            }
        }

        protected void Button78_Click(object sender, EventArgs e)
        {


            con.Close();
            con.Open();
            if (TextBox41.Text == "")
            {
                AlertLabel32.Text = "Plz Enter Amount";
            }
            else if (TextBox42.Text == "")
            {
                AlertLabel32.Text = "Plz Enter Remark";
            }

            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {


                    string ll = "exec BarInsertExpenses '" + TextBox41.Text + "','" + TextBox42.Text + "','" + Label2.Text + "','" + Label3.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();


                    string lllll = "exec BarINSERTDailyCloseNew '" + DropDownList14.SelectedValue + "'";
                    SqlCommand cmdddll = new SqlCommand(lllll, con);
                    cmdddll.Dispose();
                    cmdddll.ExecuteNonQuery();

                    gvInformation12.DataBind();

                    TextBox41.Text = ""; TextBox42.Text = "";

                }
                catch (Exception ex)
                {
                    //Alert.Show("Not Saved?");
                }





            }
        }

        protected void Button80_Click(object sender, EventArgs e)
        {
            Expensess.Visible = false;
        }

        protected void Button86_Click(object sender, EventArgs e)
        {
           
           
        }

        protected void Button83_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            if (TextBox10.Text == "")
            {
                //Alert.Show("Please Select Vehicle");
                AlertLabel30.Text = "Plz write Table No";
            }


            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {


                    string ll = "exec BarCreateCommand '" + Label2.Text + "','" + Label3.Text + "','" + Label3.Text + "','" + TextBox10.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

                    DropDownList1.DataBind();
                    gvInformation3.DataBind();
                    gvInformation4.DataBind();
                    gvInformation5.DataBind();
                    AlertLabel30.Text = "";


                    PanelCommand.Visible = false;
                    PanelList2.Visible = true;
                    PanelAll.Visible = true;
                    Drinks.Visible = false;


                }
                catch (Exception ex)
                {
                    //Alert.Show("Not Saved?");
                }





            }

        }

        protected void Button84_Click(object sender, EventArgs e)
        {

            con.Close();
            con.Open();

            string ll = "exec BarCreateCommand '" + Label2.Text + "','" + Label3.Text + "','" + Label3.Text + "','" + TextBox10.Text + "'";
            SqlCommand cmdd = new SqlCommand(ll, con);
            cmdd.Dispose();
            cmdd.ExecuteNonQuery();

            DropDownList1.DataBind();
            gvInformation3.DataBind();
            gvInformation4.DataBind();
            gvInformation5.DataBind();
            AlertLabel30.Text = "";


            PanelCommand.Visible = false;
            PanelList2.Visible = true;
            PanelAll.Visible = true;
            Drinks.Visible = false;

            Response.Redirect("BarRestoOperator.aspx");



        }

        protected void Button87_Click(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoManagerWe.aspx");
        }

        protected void Button88_Click(object sender, EventArgs e)
        {
            Drinks2.Visible = false;
           
        }

        protected void Button89_Click(object sender, EventArgs e)
        {
           
            PanelCommand.Visible = true;
            PanelList2.Visible = false;
        }

        protected void gvInformation3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button91_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            //=======================
                    foreach (GridViewRow row in gvInformation3.Rows)
                    {
                        CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");

                        TextBox QUnty = (TextBox)row.FindControl("TextBox7");
                        DropDownList QUntyp = (DropDownList)row.FindControl("DropDownList35");

                      
                        if (checkbox.Checked)
                        {
                            if (double.Parse(QUnty.Text) > double.Parse(row.Cells[4].Text))
                            {
                                AlertLabel66.Text = "";
                            }
                            else
                            {
                                string idProduct = row.Cells[1].Text;


                                string ll = "exec BarInsertNewRequestManager2 '" + row.Cells[1].Text + "','" + QUnty.Text + "','" + Label3.Text + "','" + UserName.Text + "','" + DropDownList1.SelectedValue + "'";
                                SqlCommand cmdd = new SqlCommand(ll, con);
                                cmdd.Dispose();
                                cmdd.ExecuteNonQuery();

                                //DropDownList1.DataBind();
                                gvInformation3.DataBind();
                                gvInformation4.DataBind();

                            }
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
                            if (double.Parse(QUntP.Text) > double.Parse(row.Cells[4].Text))
                            {
                                AlertLabel66.Text = "";
                            }
                            else
                            {

                                string idProduct = row.Cells[1].Text;
                                //string Quantity = row.Cells[3].Text;

                                //TextBox3.Text = idProduct.ToString();
                                //QUnty.Text = Quantity.ToString();

                                string ll = "exec BarInsertNewRequestManager2 '" + row.Cells[1].Text + "','" + QUntP.Text + "','" + Label3.Text + "','" + UserName.Text + "','" + DropDownList1.SelectedValue + "'";
                                SqlCommand cmdd = new SqlCommand(ll, con);
                                cmdd.Dispose();
                                cmdd.ExecuteNonQuery();

                                //DropDownList1.DataBind();
                                gvInformation3.DataBind();
                                gvInformation4.DataBind();
                                gvInformation6.DataBind();

                            }

                        }
                    }
                    //00000000000000000000000000000000000000000000
                    foreach (GridViewRow row in gvInformation8.Rows)
                    {
                        CheckBox checkbox = (CheckBox)row.FindControl("CheckBox6");

                        TextBox QUntP = (TextBox)row.FindControl("TextBox43");
                        DropDownList QUntyU = (DropDownList)row.FindControl("DropDownList36");

                        if (checkbox.Checked)
                        {

                            string idProduct = row.Cells[1].Text;
                            //string Quantity = row.Cells[3].Text;

                            //TextBox3.Text = idProduct.ToString();
                            //QUnty.Text = Quantity.ToString();

                            string ll = "exec BarInsertNewRequestManager2 '" + row.Cells[1].Text + "','" + QUntP.Text + "','" + Label3.Text + "','" + UserName.Text + "','" + DropDownList1.SelectedValue + "'";
                            SqlCommand cmdd = new SqlCommand(ll, con);
                            cmdd.Dispose();
                            cmdd.ExecuteNonQuery();

                            //DropDownList1.DataBind();
                            gvInformation3.DataBind();
                            gvInformation4.DataBind();
                            gvInformation6.DataBind();



                        }
                    }

                    Response.Redirect("BarRestoManagerWe.aspx");
                        
        }

        protected void Button92_Click(object sender, EventArgs e)
        {
           
            PanelCommand.Visible = true;
            PanelList2.Visible = false;
        }

        protected void Button90_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        

        protected void TextBox44_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button95_Click(object sender, EventArgs e)
        {
     
           
        }

        protected void Button94_Click(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoManagerWea.aspx");
        }

        protected void Button96_Click(object sender, EventArgs e)
        {
          
        }

        protected void Button97_Click(object sender, EventArgs e)
        {
            
        
            gvInformation5.Enabled = true;

            string com = "SELECT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestViewStock WHERE (idCommand = '" + DropDownList1.SelectedValue + "')  and requestStatus='unconfirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "BarRequestViewStock");
            DataView dv = new DataView(ds.Tables["BarRequestViewStock"]);
            DataTable dt = ds.Tables["BarRequestViewStock"];
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