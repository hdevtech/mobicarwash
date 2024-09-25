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

namespace MobiWebApplication
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewStaff.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("PriceChange.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Users.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            //Response.Redirect("PriceChange.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConfirmService.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServedVehicle.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientCredit.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffCredit.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServiceModificationAdmin.aspx");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Service.aspx");
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            Response.Redirect("PriceChange.aspx");
        }
    }
}
