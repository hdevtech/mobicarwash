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
    public partial class WebForm61 : System.Web.UI.Page
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
            //Date.Text = cstTime.ToString();
            //Date0.Text = cstTime.ToString();



            if ((Session["role_ame"] != null))
            {

                Label2.Text = Session["UserName"].ToString();
                Names.Text = Session["UserName"].ToString();
                Label8.Text = Session["role_ame"].ToString();
                Label129.Text = Session["UserName"].ToString();

                if (Label8.Text == "SellesManager")
                {

                    Button90.Enabled = false;
                    Button70.Enabled = true;
                    Button70.Visible = true;
                    Button98.Enabled = false;
                    Button98.Visible = false;
                    Button99.Enabled = false;
                    Button99.Visible = false;
                    Button100.Enabled = false;
                    Button100.Visible = false;
                    Button106.Visible = false;
                }
                else
                {
                    Button90.Enabled = true;
                    Button98.Enabled = true;
                    Button98.Visible = true;
                    Button100.Enabled = true;
                    Button100.Visible = true;
                    Button106.Visible = true;
                    Button70.Enabled = true;
                    Button70.Visible = true;

                }

            }
            else
            {

                Response.Redirect("~/Default.aspx");
            }


            //if (DropDownList18.Text != DropDownList17.Text)
            //{

            //   TextBox53.Enabled = false;
            //   Button121.Enabled = false;
            //   TextBox7.Enabled = true;
            //   Button73.Enabled = true;
            //}

            //if (DropDownList18.Text == DropDownList17.Text)
            //{

            //    TextBox53.Enabled = true;
            //    Button121.Enabled = true;
            //    TextBox7.Enabled = false;
            //    Button73.Enabled = false;
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
                    if (double.Parse(e.Row.Cells[4].Text) == 0)
                    {
                        
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
            con.Close();
            con.Open();
       

            foreach (GridViewRow row in gvServed.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {


                    string idRecord = row.Cells[10].Text;               


                    TextBox49.Text = idRecord.ToString();
                  



              


                 

                }
            }
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
                    //e.Row.Cells[5].ForeColor = Color.Red;
                    QUntP.BorderColor = Color.Red;
                    TextBox7.BorderColor = Color.Red;




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
            Drinks0.Visible = true;
            PanelList2.Visible = true;
            Panel114.Visible = true;
            FormView10.DataBind();
            AlertLabel0.Text = "";
            AlertLabel1.Text = "";
            Panel4.Visible = true;
        }

        protected void Button71_Click(object sender, EventArgs e)
        {

            Drinks1.Visible = true;
            //ooooooooooooooooooooooooo
            gvInformation3.DataBind();
            

            PanelCommand.Visible = true;
            //PanelList2.Visible = true;
            PanelAll.Visible = true;
            Drinks.Visible = true;
            Drinks1.Visible = true;
            //Panel117.Visible = true;
            Button72.Visible = true;
            Button71.Visible = false;
            FormView10.DataBind();
            FormView11.DataBind();
            //FormView12.DataBind();
            //ooooooooooooooooooooooo
            AlertLabel0.Text = "";
            AlertLabel1.Text = ""; 
            Button69.Visible = true;
            Panel117.Visible = true;

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

            Drinks1.Visible = true;
            
           
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
            //Panel117.Visible = false;
            Button72.Visible = false;
            Button71.Visible = true;
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



                    string ll = "exec BarInsertNewRequestDelete2 '" + TextBox8.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox9.Text + "','" + Label2.Text + "'";
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

                    string lllll = "exec BarINSERTDailyCloseNew '" + DropDownList14.SelectedValue + "'";
                    SqlCommand cmdddll = new SqlCommand(lllll, con);
                    cmdddll.Dispose();
                    cmdddll.ExecuteNonQuery();
                    FormView35.DataBind();


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

                    string ll = "exec BarPaymentCredit '" + Label6.Text + "','" + Label2.Text + "','" + Label3.Text + "','" + TextBox52.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

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
                    FormView35.DataBind();
                    FormView11.DataBind();
                    //FormView12.DataBind();
                    FormView15.DataBind();
                    PanelPayment.Visible = false;
                    GridClientPayment3.Visible = true;


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
                    gvInformation11.DataBind();
                    gvInformation4.DataBind();
                    gvInformation5.DataBind();
                    PanelPayment.Visible = false;

                }
            }
        }

        protected void gvInformation11_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {

                    if (double.Parse(e.Row.Cells[6].Text) == double.Parse(e.Row.Cells[7].Text))
                    {
                        e.Row.Cells[8].ForeColor = Color.Orange;                       
                        e.Row.Cells[5].ForeColor = Color.Orange;
                        //e.Row.Cells[8].Visible = false;

                    }

                    if (e.Row.Cells[8].Text == "REPAID") 
                    {
                        e.Row.Cells[8].ForeColor = Color.Orange;  


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
            InvoiceNo.Visible = true;
            Label7.Text = getId;
            InvoiceNo.Text = getId;
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
            Panel4.Visible = true;
            //GridClientPayment3.Visible = false;
            PanelAll.Visible = true;
            Drinks.Visible = true;
            Panel98.Visible = true;
            TextBox53.Visible = false;
            

            Button74.Visible = false;
            Button121.Visible = false;
            Button72.Visible = false;
            Button70.Visible = true;
            Button71.Visible = true;
            Button90.Visible = true;
            FormView10.DataBind();
            FormView11.DataBind();
            FormView38.DataBind();
            FormView38.Visible = true;         
            PanelPayment.Visible = true;
        
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
            Button90.Visible = false;

            Button74.Visible = true;
            PanelPayment.Visible = true;
            GridClientPayment3.Visible = true;



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
                    if (double.Parse(e.Row.Cells[4].Text) == 0)
                    {
                        
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
                DropDownList QUntyp = (DropDownList)row.FindControl("DropDownList35");

                if (checkbox.Checked)
                {
                    if (double.Parse(QUnty.Text) > double.Parse(row.Cells[4].Text))
                    {
                        AlertLabel32.Text = "";
                    }
                    else
                    {

                        string idProduct = row.Cells[1].Text;

                        string ll = "exec BarInsertNewRequestManager2 '" + row.Cells[1].Text + "','" + QUnty.Text + "','" + Label3.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedValue + "'";
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
                        AlertLabel32.Text = "";
                    }
                    else
                    {
                        string idProduct = row.Cells[1].Text;


                        string ll = "exec BarInsertNewRequestManager2 '" + row.Cells[1].Text + "','" + QUntP.Text + "','" + Label3.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedValue + "'";
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

            ////00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation8.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox6");

                TextBox QUntP = (TextBox)row.FindControl("TextBox43");
                DropDownList QUntyU = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {
                    if (double.Parse(QUntP.Text) > double.Parse(row.Cells[4].Text))
                    {
                        AlertLabel32.Text = "";
                    }
                    else
                    {
                        string idProduct = row.Cells[1].Text;

                        string ll = "exec BarInsertNewRequestManager2 '" + row.Cells[1].Text + "','" + QUntP.Text + "','" + Label3.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedValue + "'";
                        SqlCommand cmdd = new SqlCommand(ll, con);
                        cmdd.Dispose();
                        cmdd.ExecuteNonQuery();

                        //DropDownList1.DataBind();
                        gvInformation3.DataBind();
                        gvInformation4.DataBind();
                        //    gvInformation6.DataBind();
                    }


                }
            }
            ////00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation18.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox76");

                TextBox QUntP = (TextBox)row.FindControl("TextBox51");
                DropDownList QUntyU = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {
                    if (double.Parse(QUntP.Text) > double.Parse(row.Cells[4].Text))
                    {
                        AlertLabel32.Text = "";
                    }
                    else
                    {
                        string idProduct = row.Cells[1].Text;

                        string ll = "exec BarInsertNewRequestManager2 '" + row.Cells[1].Text + "','" + QUntP.Text + "','" + Label3.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedValue + "'";
                        SqlCommand cmdd = new SqlCommand(ll, con);
                        cmdd.Dispose();
                        cmdd.ExecuteNonQuery();

                        //DropDownList1.DataBind();
                        gvInformation3.DataBind();
                        gvInformation4.DataBind();
                        //    gvInformation6.DataBind();
                    }


                }
            }
            Panel4.Visible = true;
            Response.Redirect("ManagerTool.aspx");
            con.Close();
            con.Open();

                       

            

            string lllll = "exec BarINSERTDailyCloseNew '" + DropDownList14.SelectedValue + "'";
            SqlCommand cmdddll = new SqlCommand(lllll, con);
            cmdddll.Dispose();
            cmdddll.ExecuteNonQuery();

            Panel18549.Visible = true;
            Panel18550.Visible = true;
            Panel18551.Visible = true;

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
           
                Expensess.Visible = true;
                Drinks2.Visible = false;
                MainStore.Visible = false;
                Panel4.Visible = true;
                Panel124.Visible = false;
                invoice.Visible = false;




         
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
            con.Close();
            con.Open();

            Expensess.Visible = false;
            Drinks2.Visible = true;
           
            Panel4.Visible = false;
            PanelList2.Visible = false;
            gvInformation11.Visible = false;
            //AlertLabel65.Visible = false;
            MainStore.Visible = false;
            Button93.Visible = false;
            Button91.Visible = true;
            Button104.Visible = true;
            Button105.Visible = false;
            Button88.Visible = true;
            gvInformation13.Visible = true;
            gvInformation17.Visible = true;
            GridClientPayment3.Visible = false;
            Drinks3.Visible = false;
            Panel114.Visible = false;
            Drinks.Visible = false;
            Panel124.Visible = false;
            invoice.Visible = false;
            string ll = "exec BarCreateCommand '" + Label2.Text + "','" + Label3.Text + "','" + Label3.Text + "','" + TextBox45.Text + "'";
            SqlCommand cmdd = new SqlCommand(ll, con);
            cmdd.Dispose();
            cmdd.ExecuteNonQuery();

            DropDownList1.DataBind();







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
                        Panel114.Visible=true;


                    Panel18549.Visible = false;
                    Panel18550.Visible = false;
                    Panel18551.Visible = false;
                    //PanelList2.Visible = true;
                    //PanelAll.Visible = true;
                    //Drinks.Visible = false;
                    //MainStore.Visible = false;
                    //PanelList2.Visible = true;
                    //Expensess.Visible = false;
                    //GridClientPayment3.Visible = false;

                    PanelCommand.Visible = true;
                    PanelList2.Visible = true;
                    PanelAll.Visible = true;
                    Drinks.Visible = false;
                    Drinks1.Visible = true;
                    Drinks0.Visible = true;
                    PanelList2.Visible = true;
                    Panel114.Visible = true;
                    FormView10.DataBind();
                    AlertLabel0.Text = "";
                    AlertLabel1.Text = "";
                    Panel4.Visible = true;


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

            Expensess.Visible = false;
            Drinks2.Visible = true;
            Panel4.Visible = false;
            PanelList2.Visible = false;
            gvInformation11.Visible = false;
            //AlertLabel65.Visible = false;
            MainStore.Visible = true;
            gvInformation13.Visible = false;
            gvInformation14.Visible = true;
            gvInformation17.Visible =false;
            Button91.Visible = false;
            Button104.Visible = false;
            Button105.Visible = true;
            Button93.Visible = true;
            GridClientPayment3.Visible = false;
            Panel114.Visible = false;
            Drinks.Visible = false;
            Panel124.Visible = false;
            Panel124.Visible = false;
            invoice.Visible = false;
            string ll = "exec BarCreateCommand '" + Label2.Text + "','" + Label3.Text + "','" + Label3.Text + "','" + TextBox45.Text + "'";
            SqlCommand cmdd = new SqlCommand(ll, con);
            cmdd.Dispose();
            cmdd.ExecuteNonQuery();

            DropDownList1.DataBind();



        }

        protected void Button87_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductPhisicalStock.aspx");
        }

        protected void Button88_Click(object sender, EventArgs e)
        {
            //Drinks2.Visible = false;
            //Panel101.Visible = true;
            //gvInformation11.Visible = false;
            Response.Redirect("ManagerTool.aspx");

        }

        protected void Button89_Click(object sender, EventArgs e)
        {
            //Panel101.Visible = true;
            PanelCommand.Visible = true;
            PanelList2.Visible = false;
        }

        protected void Button90_Click(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoManagerWe.aspx");
        }

        protected void Button90_Click1(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoManagerWe.aspx");
        }

        protected void Button90_Click2(object sender, EventArgs e)
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

        protected void Button91_Click(object sender, EventArgs e)
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
                    if (double.Parse(QUntyP.Text) == 0)
                    {
                        AlertLabel26.Text = "";
                    }
                    else
                    {
                    string idProduct = row.Cells[1].Text;
                    string ll = "exec BarInsertNewRequestFood '" + row.Cells[1].Text + "','" + QUntyP.Text + "','" + Label3.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedValue + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

                    DropDownList1.DataBind();
                    gvInformation3.DataBind();
                    gvInformation4.DataBind();
                    Drink2.Visible = true;
                    gvInformation13.DataBind();
                    gvInformation16.DataBind();
                    gvInformation6.DataBind();
                    //Button101.Click = true;
                    }
                }
            }

            //====================
            foreach (GridViewRow row in gvInformation17.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox75");

                TextBox QUntyP = (TextBox)row.FindControl("TextBox50");
                DropDownList QUntyU = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {
                    if (double.Parse(QUntyP.Text) > double.Parse(row.Cells[4].Text))
                    {
                        AlertLabel26.Text = "";
                    }
                    else if (double.Parse(QUntyP.Text) ==0)
                    {
                            AlertLabel26.Text = "";
                            Drink2.Visible = false;
                    }
                    else
                    {
                        string idProduct = row.Cells[1].Text;


                        string ll = "exec BarInsertNewRequestFood '" + row.Cells[1].Text + "','" + QUntyP.Text + "','" + Label3.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedValue + "'";
                        SqlCommand cmdd = new SqlCommand(ll, con);
                        cmdd.Dispose();
                        cmdd.ExecuteNonQuery();

                        DropDownList1.DataBind();
                        gvInformation3.DataBind();
                        gvInformation4.DataBind();
                        Drink2.Visible = true;
                        gvInformation13.DataBind();
                        gvInformation16.DataBind();
                        gvInformation17.DataBind();
                        gvInformation6.DataBind();
                        //Button101.Click = true;
                        //}
                    }
                }


                //Drink2.BackColor = Color.Gold;
                Panel4.Visible = true;
                //Drink2.Visible = true;
                Button101.Visible = true;
                //Button100.OnClientClick = Button91_Click();

            }
            //Response.Redirect("ManagerTool.aspx");
        }

        protected void TextBox45_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button92_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void gvInformation3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button93_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            //00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation14.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox72");

                TextBox QUntyP = (TextBox)row.FindControl("TextBox46");
                DropDownList QUntyU = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {
                    if (double.Parse(QUntyP.Text) > double.Parse(row.Cells[4].Text))
                    {
                        AlertLabel26.Text = "";
                    }
                    else if (double.Parse(QUntyP.Text) == 0)
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
                        //}
                    }
                }
            }
            //00000000000000000000000000000000000000000000
            foreach (GridViewRow row in gvInformation15.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox73");

                TextBox QUntyP = (TextBox)row.FindControl("TextBox47");
                DropDownList QUntyU = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {
                    if (double.Parse(QUntyP.Text) > double.Parse(row.Cells[4].Text))
                    {
                        AlertLabel26.Text = "";
                    }
                    else if (double.Parse(QUntyP.Text) == 0)
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
            Panel4.Visible = true;
            Response.Redirect("ManagerTool.aspx");

        } 

        protected void gvInformation11_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvInformation11_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void gvInformation8_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void gvInformation13_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvInformation8_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button96_Click(object sender, EventArgs e)
        {
            if (TextBox48.Visible == false)
            {
                TextBox48.Visible = true;
                Button95.Visible = true;
                FormView38.Visible = false;
                TextBox52.Visible = false;
                Button108.Visible = false;
              

            }
            else
            {
                TextBox48.Visible = false;
                Button95.Visible = false;
                FormView38.Visible = true;
                TextBox52.Visible = false;
                Button108.Visible = false;
            }
        }

        protected void Button95_Click(object sender, EventArgs e)
        {
              if (TextBox48.Text == "")
            {

                AlertLabel0.Text = "Plz Enter remarks";
            }


            else
            {
                //DateTime dtnow = DateTime.Now;
                //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
                try
                {
                    con.Close();
                    con.Open();
                    string l = "exec BarPayRemarks '" + Label6.Text + "','" + TextBox48.Text + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    TextBox48.Visible = false;
                    Button95.Visible = false;
                    TextBox48.Text = "";
                    FormView38.Visible = true;
                    FormView38.DataBind();

                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }



            }
        }

        protected void DropDownList14_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string lllll = "exec BarINSERTDailyCloseNew '" + DropDownList14.SelectedValue + "'";
            SqlCommand cmdddll = new SqlCommand(lllll, con);
            cmdddll.Dispose();
            cmdddll.ExecuteNonQuery();
            Drinks.Visible = false;
            TextBox7.DataBind();
            Button73.DataBind();
            TextBox53.DataBind();
            Button121.DataBind();
            ////Panel98.DataBind();
            //Drinks.DataBind();
         
        }

        protected void TextBox41_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button69_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox74_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox73_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button97_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManagerTool.aspx");
        }

        protected void Button98_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            foreach (GridViewRow row in gvInformation8.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox6");

                TextBox QUntP = (TextBox)row.FindControl("TextBox43");
                DropDownList QUntyU = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {
                   
                        string idProduct = row.Cells[1].Text;

                        string ll = "exec ResetStore '" + row.Cells[1].Text + "'";
                        SqlCommand cmdd = new SqlCommand(ll, con);
                        cmdd.Dispose();
                        cmdd.ExecuteNonQuery();

                     
                        gvInformation8.DataBind();
                     
                      
                    


                }
            }
            Panel4.Visible = true;
          
        }

        protected void Button99_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            foreach (GridViewRow row in gvInformation6.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox5");

                TextBox QUntP = (TextBox)row.FindControl("TextBox8");
                DropDownList QUntyU = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;

                    string ll = "exec ResetStore '" + row.Cells[1].Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();


                    gvInformation6.DataBind();





                }
            }
            Panel4.Visible = true;
        }

        protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button100_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            foreach (GridViewRow row in gvInformation3.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");

                TextBox QUntP = (TextBox)row.FindControl("TextBox8");
                DropDownList QUntyU = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;

                    string ll = "exec ResetStore '" + row.Cells[1].Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();


                    gvInformation3.DataBind();





                }
            }
            Panel4.Visible = true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button101_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManagerTool.aspx");
            Button101.Visible = false;
        }

        protected void gvServed_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    if ((double.Parse(e.Row.Cells[7].Text) == 0) && ((e.Row.Cells[8].Text == "Cash") || (e.Row.Cells[8].Text == "MoMo Pay")))
                    {
                        e.Row.Cells[5].ForeColor = Color.Yellow;
                    }
                    if ((e.Row.Cells[3].Text == "Discount S-CW") || (e.Row.Cells[3].Text == "Discount G-CW"))
                    {
                        e.Row.Cells[5].ForeColor = Color.White;
                    }
                    //else if (double.Parse(e.Row.Cells[5].Text) < 0)
                    //{
                    //    e.Row.Cells[6].Text = "No autorisation!";
                    //    e.Row.Cells[6].ForeColor = Color.Yellow;
                    //}
                }
            }
            catch (Exception ex)
            {

                return;

            }
        }

        protected void CheckBox74_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            foreach (GridViewRow row in gvServed.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox74");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {


                    string idRecord = row.Cells[10].Text;
                    TextBox49.Text = idRecord.ToString();
                    Button103.Visible = true;
                    invoice.Visible = true;

                    
                }
            }
        }

        protected void Button102_Click(object sender, EventArgs e)
        {
            Panel124.Visible = true;
            invoice.Visible = false;
            Expensess.Visible = false;
            Drinks2.Visible = false;
            MainStore.Visible = false;
            Panel4.Visible = false;
            Panel89.Visible = false;
            PanelCommand.Visible = false;
        }

        protected void Button103_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManagerTool.aspx");
        }

        protected void Button104_Click(object sender, EventArgs e)
        {
            Response.Redirect("BarRestoManagerKitchen.aspx");
        }

        protected void Button105_Click(object sender, EventArgs e)
        {

            Response.Redirect("BarRestoManagerWee.aspx");
        }

        protected void Button106_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            foreach (GridViewRow row in gvInformation18.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox76");

                TextBox QUntP = (TextBox)row.FindControl("TextBox51");
                DropDownList QUntyU = (DropDownList)row.FindControl("DropDownList36");

                if (checkbox.Checked)
                {

                    string idProduct = row.Cells[1].Text;

                    string ll = "exec ResetStore '" + row.Cells[1].Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();


                    gvInformation18.DataBind();





                }
            }
            Panel4.Visible = true;
        }

        protected void Button107_Click(object sender, EventArgs e)
        {
            if (TextBox52.Visible == false)
            {
                TextBox52.Visible = true;
                Button108.Visible = true;
                TextBox48.Visible = false;
                Button95.Visible = false;
                FormView38.Visible = false;


            }
            else
            {
                TextBox52.Visible = false;
                Button108.Visible = false;
                TextBox48.Visible = false;
                Button95.Visible = false;
                FormView38.Visible = true;
            }
        }

        protected void Button108_Click(object sender, EventArgs e)
        {
            if (TextBox52.Text == "")
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

                    string ll = "exec BarPaymentCredit '" + Label6.Text + "','" + Label2.Text + "','" + Label3.Text + "','" + TextBox52.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

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
                    FormView35.DataBind();
                    FormView11.DataBind();
                    //FormView12.DataBind();
                    FormView15.DataBind();
                    PanelPayment.Visible = false;
                    GridClientPayment3.Visible = true;


                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }



            }
        }

        protected void Button120_Click(object sender, EventArgs e)
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
            InvoiceNo.Visible = true;
            Label7.Text = getId;
            InvoiceNo.Text = getId;
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
            Panel4.Visible = true;
            //GridClientPayment3.Visible = false;
            PanelAll.Visible = true;
            Drinks.Visible = true;
            Panel98.Visible = true;
            TextBox7.Visible = false;
            TextBox53.Visible = true;


            Button74.Visible = false;
            Button73.Visible = false;
            Button72.Visible = false;
            Button70.Visible = true;
            Button121.Visible = true;
            Button71.Visible = true;
            Button90.Visible = true;
            FormView10.DataBind();
            FormView11.DataBind();
            FormView38.DataBind();
            FormView38.Visible = true;
            PanelPayment.Visible = true;

            AlertLabel0.Text = "";
            AlertLabel1.Text = "";
        }

        protected void Button121_Click(object sender, EventArgs e)
        {
            if (TextBox53.Text == "")
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

                    string ll = "exec BarPaymentCredit '" + Label6.Text + "','" + Label2.Text + "','" + Label3.Text + "','" + TextBox52.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

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
                    FormView35.DataBind();
                    FormView11.DataBind();
                    //FormView12.DataBind();
                    FormView15.DataBind();
                    PanelPayment.Visible = false;
                    GridClientPayment3.Visible = true;


                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }



            }
        }

        protected void Button120_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


      

            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation11.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label6.Text = getId;
            Label128.Text = getId;
            Label7.Visible = true;
            InvoiceNo.Visible = true;
            Label7.Text = getId;
            InvoiceNo.Text = getId;
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
            Panel4.Visible = true;
            //GridClientPayment3.Visible = false;
            PanelAll.Visible = true;
            Drinks.Visible = true;
            Panel98.Visible = true;       
            TextBox7.Visible = false;
            Button74.Visible = false;         
            Button73.Visible = false;
            Button72.Visible = false;
            Button70.Visible = true;
            Button71.Visible = true;
            Button90.Visible = true;
            FormView10.DataBind();
            FormView11.DataBind();
            FormView38.DataBind();
            FormView38.Visible = true;
            PanelPayment.Visible = true;
            TextBox53.Visible = true;
            AlertLabel0.Text = "";
            AlertLabel1.Text = "";
            Button121.Visible = true;

            //DropDownList18.DataBind();
            //DropDownList17.DataBind();

            TextBox7.DataBind();
            Button73.DataBind();
            TextBox53.DataBind();
            Button121.DataBind();
            Panel98.DataBind();
            Drinks.DataBind();

            TextBox53.Enabled = true;
            Button121.Enabled = true;

            if (DropDownList17.Text != DropDownList18.Text)
            {

                //TextBox53.Enabled = false;
                //Button121.Enabled = false;

                TextBox53.Enabled = false;
                Button121.Enabled = false;
                TextBox53.Visible = true;
                Button121.Visible = true;
            }

        }

        protected void Button37_Click2(object sender, EventArgs e)
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
            Label128.Text = getId;
            InvoiceNo.Visible = true;
            Label7.Text = getId;
            InvoiceNo.Text = getId;
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
            Panel4.Visible = true;
            //GridClientPayment3.Visible = false;
            PanelAll.Visible = true;
            Drinks.Visible = true;
            Panel98.Visible = true;
            TextBox53.Visible = false;
           


            Button74.Visible = false;
            Button121.Visible = false;
          
            Button72.Visible = false;          
            Button71.Visible = true;
            Button90.Visible = true;
            FormView10.DataBind();
            FormView11.DataBind();
            FormView38.DataBind();
            FormView38.Visible = true;
            PanelPayment.Visible = true;

            AlertLabel0.Text = "";
            AlertLabel1.Text = "";
     

            TextBox7.DataBind();
            Button73.DataBind();
            TextBox53.DataBind();
            Button121.DataBind();
            Panel98.DataBind();
            Drinks.DataBind();

            TextBox7.Visible = true;
            Button73.Visible = true;

            TextBox7.Enabled = true;
            Button73.Enabled = true;

            DropDownList18.DataBind();
            DropDownList17.DataBind();
            DropDownList19.DataBind();
            if (DropDownList17.Text == DropDownList18.Text)
            {

             

                TextBox7.Enabled = true;
                Button73.Enabled = true;
                TextBox7.Visible = true;
                Button73.Visible = true;

                TextBox53.Enabled = false;
                Button121.Enabled = false;
                TextBox53.Visible = false;
                Button121.Visible = false;
            }

           else
            {
                
                TextBox7.Enabled = false;
                Button73.Enabled = false;
                TextBox7.Visible = false;
                Button73.Visible = false;

                TextBox53.Enabled = true;
                Button121.Enabled = true;
                TextBox53.Visible = true;
                Button121.Visible = true;

              }

            if (double.Parse(DropDownList19.Text) ==0)
            {
                TextBox7.Enabled = false;
                Button73.Enabled = false;
            }
        }

        protected void Button73_Click1(object sender, EventArgs e)
        {
            //if (TextBox7.Text == "")
            //{

            //    AlertLabel0.Text = "Plz Enter Paid Amount";
            //}


            //else
            //{
            //    //DateTime dtnow = DateTime.Now;
            //    //string dat = DropYear.SelectedValue + "-" + DropMonth.SelectedValue + "-" + Dropdate.SelectedValue;
            //    try
            //    {
                    con.Close();
                    con.Open();

                    string ll = "exec BarPaymentProce '" + Label6.Text + "','" + TextBox7.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

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
                    FormView35.DataBind();
                    FormView11.DataBind();
                    //FormView12.DataBind();
                    FormView15.DataBind();
                    PanelPayment.Visible = false;
                    GridClientPayment3.Visible = true;


            //    }
            //    catch (Exception ex)
            //    {
            //        Alert.Show("Not Saved?");
            //    }



            //}
        }

        protected void Button121_Click1(object sender, EventArgs e)
        {
            if (TextBox53.Text == "")
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

                    string ll = "exec BarPaymentCredit '" + Label6.Text + "','" + Label2.Text + "','" + Label3.Text + "','" + TextBox53.Text + "'";
                    SqlCommand cmdd = new SqlCommand(ll, con);
                    cmdd.Dispose();
                    cmdd.ExecuteNonQuery();

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
                    gvInformation19.DataBind();



                    PanelCommand.Visible = true;
                    //PanelList2.Visible = true;
                    PanelAll.Visible = true;
                    Drinks.Visible = false;
                    Drinks1.Visible = false;
                    Button72.Visible = false;
                    FormView10.DataBind();
                    FormView35.DataBind();
                    FormView11.DataBind();
                    //FormView12.DataBind();
                    FormView15.DataBind();
                    PanelPayment.Visible = false;
                    GridClientPayment3.Visible = true;


                }
                catch (Exception ex)
                {
                    Alert.Show("Not Saved?");
                }



            }
        }

        protected void Button122_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            //if (Drinks.Visible == false)
            //{
            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation19.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label6.Text = getId;
            Label7.Visible = true;
            Label128.Text = getId;
            InvoiceNo.Visible = true;
            Label7.Text = getId;
            InvoiceNo.Text = getId;
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
            Panel4.Visible = true;
            //GridClientPayment3.Visible = false;
            PanelAll.Visible = true;
            Drinks.Visible = true;
            Panel98.Visible = true;
            TextBox53.Visible = false;



            Button74.Visible = false;
            Button121.Visible = false;

            Button72.Visible = false;
            Button70.Visible = true;
            Button71.Visible = true;
            Button90.Visible = true;
            FormView10.DataBind();
            FormView11.DataBind();
            FormView38.DataBind();
            FormView38.Visible = true;
            PanelPayment.Visible = true;

            AlertLabel0.Text = "";
            AlertLabel1.Text = "";


            TextBox7.DataBind();
            Button73.DataBind();
            TextBox53.DataBind();
            Button121.DataBind();
            Panel98.DataBind();
            Drinks.DataBind();

            TextBox7.Visible = true;
            Button73.Visible = true;

            TextBox7.Enabled = true;
            Button73.Enabled = true;
            
            DropDownList18.DataBind();
            DropDownList17.DataBind();
            FormView15.Visible = true;

            //DropDownList19.DataBind();
            //DropDownList20.DataBind();
            if (DropDownList17.Text == DropDownList18.Text)
            {



                TextBox7.Enabled = true;
                Button73.Enabled = true;
                TextBox7.Visible = true;
                Button73.Visible = true;
                FormView15.Visible = true;
                TextBox53.Enabled = false;
                Button121.Enabled = false;
                TextBox53.Visible = false;
                Button121.Visible = false;
            }

            else
            {

                TextBox7.Enabled = false;
                Button73.Enabled = false;
                TextBox7.Visible = false;
                Button73.Visible = false;

                TextBox53.Enabled = true;
                Button121.Enabled = true;
                TextBox53.Visible = true;
                Button121.Visible = true;

            }

            //if (double.Parse(DropDownList20.Text) == 0)
            //{
            //    TextBox7.Enabled = false;
            //    Button73.Enabled = false;
            //}
        }

        protected void Button123_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            //if (Drinks.Visible == false)
            //{
            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation20.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label6.Text = getId;
            Label7.Visible = true;
            Label128.Text = getId;
            InvoiceNo.Visible = true;
            Label7.Text = getId;
            InvoiceNo.Text = getId;
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
            Panel4.Visible = true;
            //GridClientPayment3.Visible = false;
            PanelAll.Visible = true;
            Drinks.Visible = true;
            Panel98.Visible = true;
            TextBox53.Visible = false;



            Button74.Visible = false;
            Button121.Visible = false;

            Button72.Visible = false;
            Button70.Visible = true;
            Button71.Visible = true;
            Button90.Visible = true;
            FormView10.DataBind();
            FormView11.DataBind();
            FormView38.DataBind();
            FormView38.Visible = true;
            PanelPayment.Visible = true;

            AlertLabel0.Text = "";
            AlertLabel1.Text = "";


            TextBox7.DataBind();
            Button73.DataBind();
            TextBox53.DataBind();
            Button121.DataBind();
            Panel98.DataBind();
            Drinks.DataBind();

            TextBox7.Visible = true;
            Button73.Visible = true;
            FormView15.Visible = true;
            TextBox7.Enabled = true;
            Button73.Enabled = true;

            DropDownList18.DataBind();
            DropDownList17.DataBind();
            //DropDownList19.DataBind();
            //DropDownList20.DataBind();
            if (DropDownList17.Text == DropDownList18.Text)
            {



                TextBox7.Enabled = false;
                Button73.Enabled = false;
                TextBox7.Visible = false;
                Button73.Visible = false;

                TextBox53.Enabled = false;
                Button121.Enabled = false;
                TextBox53.Visible = false;
                Button121.Visible = false;
            }

            else
            {

                TextBox7.Enabled = false;
                Button73.Enabled = false;
                TextBox7.Visible = false;
                Button73.Visible = false;

                TextBox53.Enabled = false;
                Button121.Enabled = false;
                TextBox53.Visible = false;
                Button121.Visible = false;
                //ooooooooooooooooooooooooo
            }


        }

        protected void gvInformation19_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {

                    if (double.Parse(e.Row.Cells[4].Text) != double.Parse(e.Row.Cells[5].Text))
                    {
                        e.Row.Cells[4].ForeColor = Color.Orange;
                        e.Row.Cells[5].ForeColor = Color.Orange;
                        e.Row.Cells[6].ForeColor = Color.Orange;
                        e.Row.Cells[7].Text = "UNPAID";

                    }

                  
                }
            }
            catch (Exception ex)
            {

                return;

            }
        }

        protected void FormView44_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void Command1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

    }
}