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
using System.IO;

namespace MobiWebApplication
{

    public partial class WebForm52 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        int annee;
        int mois;
        int j;

        int n = 0;
        int n2 = 0;
        string pathDoc = "";
        string pathDoc2 = "";
        private void mounthdays(int year, int mounth)
        {

            int j;
            //int nberDays = DateTime.DaysInMonth(year, mounth);
            int nberDays = 31;
            ArrayList days = new ArrayList();
            for (j = 1; j <= nberDays; j++)
            {
                days.Add(j);
            }

            //DropDownListD.DataSource = days;
            //DropDownListD.DataBind();
            //DropDownListD4.DataSource = days;
            //DropDownListD4.DataBind();
            DropDownListD3.DataSource = days;
            DropDownListD3.DataBind();
            DropDownListD3.DataSource = days;
            DropDownListD3.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone);
            ;

            if ((Session["role_ame"] != null))
            {

                UserName.Text = Session["UserName"].ToString();
                RoleName.Text = Session["role_ame"].ToString();
                UserGroupv.Text = Session["UserG"].ToString();

                if (RoleName.Text == "Administrator")
                {
                    AddStaff.Visible = true;
                    DistriburioBracelet.Visible = true;
                    ReceivingBrace.Visible = true;
                    InStock.Visible = true;
                    Depolyed.Visible = true;
                    Izambawe.Visible = true;
                    Todaywear.Visible = true;
                    Removed.Visible = true;



                }
                else if (RoleName.Text == "Monitoring")
                {
                    AddStaff.Visible = false;
                    DistriburioBracelet.Visible = false;
                    ReceivingBrace.Visible = false;
                    InStock.Visible = false;
                    Depolyed.Visible = true;
                    Izambawe.Visible = true;
                    Todaywear.Visible = true;
                    Removed.Visible = true;


                }

                else if (RoleName.Text == "Supervisor")
                {
                    AddStaff.Visible = false;
                    DistriburioBracelet.Visible = false;
                    ReceivingBrace.Visible = false;
                    InStock.Visible = false;
                    Depolyed.Visible = true;
                    Izambawe.Visible = true;
                    Todaywear.Visible = true;
                    Removed.Visible = true;



                }
                else
                {

                    Response.Redirect("~/Default.aspx");
                }


            }

            if (!this.IsPostBack)
            {
                for (int i = Convert.ToInt32(DateTime.Now.Year) - 80; i <= Convert.ToInt32(DateTime.Now.Year); i++)
                {

                    DropDownListYEAR3.Items.Add(i.ToString());
                    //DropDownListYEAR4.Items.Add(i.ToString());
                    DropDownListYEAR3.Items.Add(i.ToString());
                }



                DropDownListYEAR3.SelectedValue = DateTime.Now.Year.ToString();
                //DropDownListYEAR4.SelectedValue = DateTime.Now.Year.ToString();
                DropDownListYEAR3.SelectedValue = DateTime.Now.Year.ToString();


                for (int i = 1; i <= 12; i++)
                {

                    DropDownListM3.Items.Add(i.ToString());
                    //DropDownListM4.Items.Add(i.ToString());
                    DropDownListM3.Items.Add(i.ToString());
                }


                DropDownListM3.SelectedValue = DateTime.Now.Month.ToString();
                //DropDownListM4.SelectedValue = DateTime.Now.Month.ToString();
                DropDownListM3.SelectedValue = DateTime.Now.Month.ToString();
                mounthdays(annee, mois);


                DropDownListD3.SelectedValue = Convert.ToString(DateTime.Now.Day);
                //DropDownListD4.SelectedValue = Convert.ToString(DateTime.Now.Day);
                DropDownListD3.SelectedValue = Convert.ToString(DateTime.Now.Day);

                //DropDownListD4.SelectedValue = Convert.ToString(DateTime.Now.AddHours);
                //    //=====other date====
            }

            string Dob = DropDownListM3.SelectedValue + "/" + DropDownListD3.SelectedValue + "/" + DropDownListYEAR3.SelectedValue;
            //string Dob2 = DropDownListM4.SelectedValue + "/" + DropDownListD4.SelectedValue + "/" + DropDownListYEAR4.SelectedValue;
            string Dob3 = DropDownListM3.SelectedValue + "/" + DropDownListD3.SelectedValue + "/" + DropDownListYEAR3.SelectedValue;
            //string Dob = DropDownListM3.SelectedValue + "/" + DropDownListD3.SelectedValue + "/" + DropDownListYEAR3.SelectedValue;
            //string Dob2 = DropDownListM4.SelectedValue + "/" + DropDownListD4.SelectedValue + "/" + DropDownListYEAR4.SelectedValue;
            //BirthDate.Text = Dob.ToString();
            //ClosedDate.Text = Dob3.ToString();
            //Label2to.Text = Dob2.ToString();
        }
        protected void Supervisor0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }


        protected void DropDownList18_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListD6_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button33_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox15_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox8_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox23_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button34_Click(object sender, EventArgs e)
        {

        }

        protected void Button35_Click(object sender, EventArgs e)
        {

        }

        protected void Button36_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox17_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button37_Click(object sender, EventArgs e)
        {

        }

        protected void Button42_Click(object sender, EventArgs e)
        {




            con.Close();
            con.Open();

            if (TextBox19.Text == "")
            {

                alertLabel.Text = "Plz Enter Patient Names";
            }
            else if (TextBox20.Text == "")
            {

                alertLabel.Text = "Plz Enter Patient Contact";
            }

            else if (TextBox21.Text == "")
            {

                alertLabel.Text = "Plz Enter Patient Contact";
            }

            else
            {
                if (FileUpload1.PostedFile.ContentLength > 0)
                {


                    string filename = n + Path.GetFileName(FileUpload1.PostedFile.FileName);
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Image/") + filename);

                    String filePath = filename;
                    FileUpload1.SaveAs(MapPath(filePath));

                    Image1.Visible = true;
                    pathDoc = filePath;
                    Image1.ImageUrl = pathDoc;

                    ////============================
                    //string filename2 = n2 + Path.GetFileName(FileUpload2.PostedFile.FileName);
                    //FileUpload2.PostedFile.SaveAs(Server.MapPath("~/Image/") + filename2);

                    //String filePath2 = filename2;
                    //FileUpload2.SaveAs(MapPath(filePath2));

                    //Image2.Visible = true;
                    //pathDoc2 = filePath2;
                    //Image2.ImageUrl = pathDoc2;

                    //try
                    //{
                    string l = "exec InsertNewCow '" + TextBox19.Text + "','" + TextBox20.Text + "','" + TextBox21.Text + "','" + pathDoc + "'";
                    SqlCommand cmd = new SqlCommand(l, con);
                    cmd.Dispose();
                    cmd.ExecuteNonQuery();
                    gvInformation0.DataBind();




                    TextBox19.Text = TextBox20.Text = TextBox21.Text = "";
                    //}
                    //catch (Exception ex)
                    //{
                    //    //Alert.Show("Not Saved?");
                    //}

                }
                else
                {
                    alertLabel.Text = "Plz Upload ScreenShot 1 or 2";
                }
            }
        }

        protected void Button45_Click(object sender, EventArgs e)
        {


        }

        protected void CheckBox24_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button43_Click(object sender, EventArgs e)
        {

        }

        protected void Button36_Click1(object sender, EventArgs e)
        {



        }

        protected void CheckBox8_CheckedChanged1(object sender, EventArgs e)
        {




        }

        protected void DropDownList23_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button38_Click(object sender, EventArgs e)
        {

        }

        protected void Button39_Click(object sender, EventArgs e)
        {

        }

        protected void Button41_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownList23_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void CheckBox25_CheckedChanged(object sender, EventArgs e)
        {




        }

        protected void Button49_Click(object sender, EventArgs e)
        {



        }

        protected void CheckBox26_CheckedChanged(object sender, EventArgs e)
        {


        }

        protected void Button50_Click(object sender, EventArgs e)
        {

        }

        protected void B(object sender, EventArgs e)
        {

        }

        protected void Button51_Click(object sender, EventArgs e)
        {

        }

        protected void Button40_Click(object sender, EventArgs e)
        {

        }

        protected void Button52_Click(object sender, EventArgs e)
        {

        }

        protected void gvInformation4_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void Button54_Click(object sender, EventArgs e)
        {

        }

        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button60_Click(object sender, EventArgs e)
        {
            ;

        }

        protected void CheckBox27_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button61_Click(object sender, EventArgs e)
        {

        }

        protected void gvInformation5_RowDataBound(object sender, GridViewRowEventArgs e)
        {


        }

        protected void Button56_Click(object sender, EventArgs e)
        {

        }

        protected void CheckBox28_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button62_Click(object sender, EventArgs e)
        {

        }

        protected void Button53_Click(object sender, EventArgs e)
        {


        }

        protected void TextBox25_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Case_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        protected void Case_Click1(object sender, EventArgs e)
        {

        }

        protected void gvInformation7_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void CheckBox29_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button64_Click(object sender, EventArgs e)
        {

        }

        protected void Button63_Click(object sender, EventArgs e)
        {

        }

        protected void Case0_Click(object sender, EventArgs e)
        {

        }

        protected void Button65_Click(object sender, EventArgs e)
        {

        }

        protected void CheckBox30_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button66_Click(object sender, EventArgs e)
        {

        }

        protected void Button67_Click(object sender, EventArgs e)
        {

        }

        protected void Button68_DataBinding(object sender, EventArgs e)
        {

        }

        protected void Button71_Click(object sender, EventArgs e)
        {

        }

        protected void ectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void TextBox19_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox25_CheckedChanged1(object sender, EventArgs e)
        {

            foreach (GridViewRow row in gvInformation0.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox25");



                if (checkbox.Checked)
                {
                    string IdCow = row.Cells[6].Text;


                    TextBox18.Text = IdCow.ToString();







                }

            }


        }
    }
}