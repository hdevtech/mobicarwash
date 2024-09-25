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
using System.Data.SqlClient;// connection to database
using System.Security;
using System.Security.Cryptography;
using System.Text;
//using System.Web.UI.WebControls.WebParts;

namespace MobiWebApplication
{
    public partial class _Default : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);
        string role, name, pass, permission;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Next"] = TextBox1.Text;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //String ps = EncodePassword(TextBoxpassword.Text);
            try
            {
                con.Close();
                con.Open();

                string com = "select*from UserTable where UserName='" + TextBox1.Text + "' and UserPassWord ='" + TextBox2.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(com, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "UserTable");
                DataView dv = new DataView(ds.Tables["UserTable"]);
                DataTable dt = ds.Tables["UserTable"];

                if (dt.Rows.Count != 0)
                {
                    DataRow dr = dt.Rows[0]; //new DataRow();

                    name = dr[1].ToString();
                    pass = dr[2].ToString();
                    role = dr[3].ToString();
                    permission = dr[4].ToString();

                    Session["role_ame"] = dr[3].ToString();                
                    Session["UserName"] = dr[1].ToString();


                    if ((role == "Operator") & (permission == "Unlocked"))
                    {
                        Response.Redirect("ServiceAll.aspx");
                    }

                    else if ((role == "Administrator") & (permission == "Unlocked"))
                    {
                        Response.Redirect("ReportsMenu.aspx");
                    }
                    else if ((role == "StoreKeeper") & (permission == "Unlocked"))
                    {
                        Response.Redirect("BarRestoManagerWee.aspx");
                    }
                 
                    else if ((role == "SellesManager") & (permission == "Unlocked"))
                    {
                        Response.Redirect("ManagerTool.aspx");
                    }
                    else if ((role == "Seller") & (permission == "Unlocked"))
                    {
                        Response.Redirect("BarRestoOperator2.aspx");
                    }
                    else if ((role == "Kitchen") & (permission == "Unlocked"))
                    {
                        Response.Redirect("BarRestoManagerKitchens.aspx");
                    }
                    else if ((role == "VehicleRecord") & (permission == "Unlocked"))
                    {
                        Response.Redirect("ServiceAll.aspx");
                    }
                    else if ((role == "Billard") & (permission == "Unlocked"))
                    {
                        Response.Redirect("Billiards.aspx");
                    }
                    else
                    {
                        //Alert.Show("The user account is locked out!, Please contact your system administrator");
                    }
                    //Session["Role"] = role;
                }
                else
                {
                    //Alert.Show("The Name or Password not much,try aigen");

                    //msgnotification.Text = "The User Name or Password not much,Please try again";
                }

            }
            catch (Exception ex)
            {
                //Alert.Show("Pleanse check your code?");

                //msgnotification.Text = "Pleanse check your code";
            }
        }
    }
}
