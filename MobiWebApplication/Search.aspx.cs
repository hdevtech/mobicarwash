using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace MobiWebApplication
{
    public partial class WebForm43 : System.Web.UI.Page
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        decimal TotalSales = 0;
        decimal pydcash = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);

            Label3.Text = cstTime.ToShortDateString();
            Label9.Text = cstTime.ToString();







        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }





        protected void lnk_OnClick(object sender, EventArgs e)
        {



        }

        protected void gvPerson_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvInformation_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }

        protected void gvInformation_RowEditing(object sender, GridViewEditEventArgs e)
        {


        }

        protected void gvInformation_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }


        //{
        //    Clear();
        //protected void btnClear_Click(object sender, EventArgs e)
        //}
        //public void Clear()
        //{
        //    //hfidClient.Value = "";
        //    TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
        //    lblSuccessMessage.Text = lblErrorMessage.Text = "";
        //    Button1.Text = "Update";
        //    //Button2.Enabled = false;
        //    //SaveButton.Text = "Save";



        //}



        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (TextBox9.Text == "")
            {
                Alert.Show("Enter Client Names");
                GridView1.DataBind();
                Labelsave.Text = "Enter Client Names";

            }
            else
            {
                con.Close();
                con.Open();
                string com = "SELECT distinct PlateNumber, brand, NameService, Price,Name,Phone, dateRecorded FROM WebDetailsDataView where (Name ='" + TextBox9.Text + "')";
                SqlDataAdapter da = new SqlDataAdapter(com, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "WebDetailsDataView");
                DataView dv = new DataView(ds.Tables["WebDetailsDataView"]);
                DataTable dt = ds.Tables["WebDetailsDataView"];
                if (dt.Rows.Count != 0)
                {

                    GridView2.DataBind();
                    GridView2.Visible = true;
                    GridView1.Visible = false;
                    //DataRow dr = dt.Rows[0]; //new DataRow();
                    //DataList4.DataBind();
                    //DataList4.Visible = true;
                    //Panel26SearchR.Visible = true;
                    //Panel25.Visible = false;
                    Labelsave.Text = "";
                    //Label14.Text = Label1.Text;
                    //Label15.Text = Label2.Text;
                    //Label16.Text = TextBox5.Text;
                    //Button6.Visible = true;

                }

                else
                {
                    Alert.Show(" Client Names not found,Please Check well and try again!");
                    Labelsave.Text = "Client Names  not found,Please Check well and try again!";
                    //DataList4.DataBind();
                    //DataList4.Visible = false;
                    //Panel26SearchR.Visible = false;
                    //Panel25.Visible = false;
                    //Panel10.Visible = false;

                }
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {


        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void Button11_Click(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }

        protected void Button12_Click(object sender, EventArgs e)
        {

        }

        protected void Button13_Click(object sender, EventArgs e)
        {

        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            //Response.Redirect("ConfirmService.aspx");
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConfirmService.aspx");
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button17_Click(object sender, EventArgs e)
        {

        }

        protected void Button18_Click(object sender, EventArgs e)
        {

        }

        protected void Button19_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void gvInformation_RowDataBound(object sender, GridViewRowEventArgs e)
        {
        }

        protected void gvInformation_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //Response.Redirect("ServedVehiclesCredits.aspx");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    TotalSales += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Price"));
            //    pydcash += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "PayedCash"));
            //}
            //else if (e.Row.RowType == DataControlRowType.Footer)
            //{
            //    e.Row.Cells[4].Text = TotalSales.ToString("0,000");
            //    e.Row.Cells[5].Text = pydcash.ToString("0,000");
            //}
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/WiewServedVehicleByDay.aspx");
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource4_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }









    }
}
