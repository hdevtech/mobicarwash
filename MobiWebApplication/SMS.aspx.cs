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
    public partial class WebForm51 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmartAdiminConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime timeUtc = System.DateTime.UtcNow;
            TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTime cstTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, cstZone); 
         
            DateOccur.Text = cstTime.ToString();

            if ((Session["role_ame"] != null))
            {

                UserName.Text = Session["UserName"].ToString();
                RoleName.Text = Session["role_ame"].ToString();

                if (RoleName.Text == "Administrator")
                {
                    Button72.Visible = true;
                    Button74.Visible = false;
                    //gvInformation13.Visible = false;
                    //gvInformation11.Visible = false;
                    //gvInformation12.Visible = false;
                   
                }
                else
                {
                    Button72.Visible = false;
                    Button74.Visible = true;
                    gvInformation13.Visible = false;
                    gvInformation12.Visible = true;
                    gvInformation11.Visible = false;
                }


            }
            else
            {

                Response.Redirect("~/Default.aspx");
            }

        }

        protected void Button70_Click(object sender, EventArgs e)
        {

        }

        protected void Button47_Click(object sender, EventArgs e)
        {
            string com = "SELECT  DISTINCT  Name, Phone,brand, PlateNumber FROM WebRecoredVehicle1 WHERE  (PlateNumber LIKE '%" + TextBox28.Text + "%') AND (Phone LIKE '%078%')";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WebRecoredVehicle1");
            DataView dv = new DataView(ds.Tables["WebRecoredVehicle1"]);
            DataTable dt = ds.Tables["WebRecoredVehicle1"];
            if (dt.Rows.Count != 0)
            {
                gvInformation6.DataSource = dt;
                gvInformation6.DataBind();
                gvInformation6.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }
        }

        protected void Button70_Click1(object sender, EventArgs e)
        {
                     
                if (RoleName.Text == "Administrator")
                {
                    gvInformation7.Visible = true;
                    gvInformation6.Visible = false;
                    gvInformation11.Visible = true;
                    gvInformation13.Visible = false;
                    gvInformation14.Visible = false;
                    Button74.Visible = false;
                    ButtonBuu.Visible = false;
                    Button72.Visible = true;

                }
                else
                {
                  gvInformation7.Visible = true;
                  gvInformation6.Visible = false;
                  gvInformation11.Visible = false;
                  gvInformation13.Visible = false;
                  gvInformation14.Visible = false;
                  Button74.Visible = false;
                  ButtonBuu.Visible = false;
                  Button72.Visible = true;
                }
        


           
                                                                                                               
        }

        protected void Button68_Click(object sender, EventArgs e)
        {
          

                if (RoleName.Text == "Administrator")
                {
                    gvInformation6.Visible = true;
                    gvInformation7.Visible = false;
                    gvInformation13.Visible = true;
                    gvInformation11.Visible = false;
                    gvInformation14.Visible = false;
                    Button74.Visible = true;
                    Button72.Visible = false;
                    Button71.Visible = false;

                }
                else
                {
                    gvInformation6.Visible = true;
                    gvInformation7.Visible = false;
                    gvInformation13.Visible = false;
                    gvInformation11.Visible = false;
                    gvInformation14.Visible = false;
                    Button74.Visible = true;
                    Button72.Visible = false;
                    Button71.Visible = false;
                }


            string com = "SELECT  DISTINCT  Name, Phone ,brand, PlateNumber FROM WebRecoredVehicle1 WHERE (Phone LIKE '%078%')";
            SqlDataAdapter da = new SqlDataAdapter(com, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WebRecoredVehicle1");
            DataView dv = new DataView(ds.Tables["WebRecoredVehicle1"]);
            DataTable dt = ds.Tables["WebRecoredVehicle1"];
            if (dt.Rows.Count != 0)
            {
                gvInformation6.DataSource = dt;
                gvInformation6.DataBind();
                gvInformation6.Visible = true;
                //GridView1.Visible = false;
                //Labelsave.Text = "";


            }
        }

        protected void Button72_Click(object sender, EventArgs e)
        {
           
                gvInformation7.Visible = true;
                gvInformation6.Visible = false;
                gvInformation11.Visible = true;
                gvInformation13.Visible = false;
                gvInformation14.Visible = false;
        



          
        }

        protected void CheckBox15_CheckedChanged(object sender, EventArgs e)
        {
         
            con.Close();
            con.Open();

            foreach (GridViewRow row in gvInformation11.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox15");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {

                    string Message = row.Cells[3].Text;

                    txtMessage.Text = Message.ToString();
                    



                }
            }

        }

        protected void CheckBox12_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            foreach (GridViewRow row in gvInformation11.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox12");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {

                    string Message = row.Cells[3].Text;
                    string MessageType = row.Cells[2].Text;

                    txtMessage.Text = Message.ToString();
                    TextBox70.Text = MessageType.ToString();

                    txtMessage.ReadOnly = true;
                    gvInformation11.Visible = false;
                    gvInformation6.Visible = true;
                    gvInformation7.Visible = true;
                    gvInformation11.DataBind();
                    Button71.Visible = true;
                    Button74.Visible = false;
                    Button72.Visible = false;






                }
            }
        }

        protected void CheckBox13_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

          

            if (Button73.Visible == false)
            {
              
                Button72.Visible = false;
                Button73.Visible = true;
                Button71.Visible = false;
                txtMessage.ReadOnly = false;

                foreach (GridViewRow row in gvInformation11.Rows)
                {
                    CheckBox checkbox = (CheckBox)row.FindControl("CheckBox13");

                    //Check if the checkbox is checked.

                    if (checkbox.Checked)
                    {

                        string Message = row.Cells[3].Text;
                        string IdMessage = row.Cells[1].Text;

                        txtMessage.Text = Message.ToString();
                        TextBox69.Text = IdMessage.ToString();
                    


                    }
                }



            }
            else
            {
               
                Button72.Visible = true;
                Button71.Visible = false;
                Button73.Visible = false;
                txtMessage.ReadOnly = true;
                txtMessage.Text = "";
                TextBox69.Text = ""; 

            }
        }

        protected void Button71_Click(object sender, EventArgs e)
        {
            if (txtMessage.Text != "")
            {
                foreach (GridViewRow row in gvInformation7.Rows)
                {
                    CheckBox checkbox = (CheckBox)row.FindControl("CheckBox14");
                    if (checkbox.Checked)
                    {
                        string SMSBalance;
                        string Cost;// Number za message zagiye kumuntu, ex: 1 cg 2
                        //double NoSms_Sent = 0;// Number Za message zageze kubantu

                        string msgid = "mobicar2020";
                        string receivedlr = "ok";
                        string callurl = "http://gateway.esicia.com/soap/ksms";
                        string messagetype = "text";

                        string Phone = "25" + row.Cells[6].Text.ToString();
                        //Phone = row.Cells[4].Text;
                        string Smsdos = (txtMessage.Text);
                        SMSManager.ksms objSms = null;
                        //SendSms.SendSMS objSms = null;

                        try
                        {
                            con.Close();
                            con.Open();

                            objSms = new MobiWebApplication.SMSManager.ksms();
                            objSms.AllowAutoRedirect = false;

                            if (!(objSms.ksend("mobicarwash", "9a8a9i3s8z4h", Textb_Sender.Text, ref Smsdos, Phone, ref msgid, receivedlr, callurl, messagetype, out Cost, out SMSBalance).Contains("done")))
                            {
                                LblSmsblnce.Visible = true;
                                //Label3.Visible = true;
                                lblError.Visible = true;
                                lblError.Text = "Message sent successfully";//
                                LblSmsblnce.Text = SMSBalance.ToString();
                              
                                
                              
                                Button71.Visible = false;

                                //string l = "exec InsertSentMessage '" + TextBox70.Text + "','" + UserName.Text + "','" + DateOccur.Text + "','" + DateOccur.Text + "'";
                                //SqlCommand cmd = new SqlCommand(l, con);
                                //cmd.Dispose();
                                //cmd.ExecuteNonQuery();

                                string l = "exec InsertSentMessage2 '" + TextBox70.Text + "','" + txtMessage.Text + "','" + UserName.Text + "','" + DateOccur.Text + "','" + DateOccur.Text + "','" + row.Cells[6].Text + "','" + row.Cells[1].Text + "'";
                                SqlCommand cmd = new SqlCommand(l, con);
                                cmd.Dispose();
                                cmd.ExecuteNonQuery();
                                Button71.Visible = false;

                                //Label_SMSSent.Text = NoSms_Sent.ToString();
                                //lblStatus.Text = callurl.ToString();
                                //con.Close();
                                //SqlCommand comm;
                                //comm = new SqlCommand("[dbo].[ADDMESSAGE]", con);
                                //comm.CommandType = CommandType.StoredProcedure;
                                //comm.Parameters.AddWithValue("@Message_body", Smsdos);
                                //comm.Parameters.AddWithValue("@Receiver", Phone);
                                ////comm.Parameters.AddWithValue("@date_sent", Label5.Text);
                                //comm.Parameters.AddWithValue("@Last_User", TextBox5.Text);
                                //comm.ExecuteNonQuery();
                                //con.Close();
                            }
                            else
                            {
                                lblError.Visible = true;
                                lblError.Text = "some error in port. Please try after some time";
                                //lblError.Text = bal.ToString();
                            }
                        }
                        catch (Exception ex)
                        {
                            lblError.Visible = true;
                            lblError.Text = ex.Message.ToString();
                        }
                        finally
                        {
                            if (objSms != null) objSms = null;
                        }
                    }
                    else
                    {
                        Alert.Show("Select First!!");
                    }
                }
                txtMessage.Text = "";
                gvInformation6.DataBind();
                gvInformation7.DataBind();
            }
            else
            {
                Alert.Show("Write Message PLZ!!");
            }



        }

        protected void Button74_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button73_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string l = "exec UpdateMessage '" + TextBox69.Text + "','" + txtMessage.Text + "'";
            SqlCommand cmd = new SqlCommand(l, con);
            cmd.Dispose();
            cmd.ExecuteNonQuery();

            txtMessage.Text = "";
            TextBox69.Text = "";
            gvInformation11.DataBind();
            Button73.Visible = false;
            Button72.Visible = true;
            gvInformation11.Visible = false;
            gvInformation13.Visible = false;

        }

        protected void CheckBox15_CheckedChanged1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            foreach (GridViewRow row in gvInformation12.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox15");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {
                    string Message = row.Cells[3].Text;
                    string MessageType = row.Cells[2].Text;

                    txtMessage.Text = Message.ToString();
                    TextBox70.Text = MessageType.ToString();
                  
                    txtMessage.ReadOnly = true;
                    gvInformation12.Visible = false;
                    gvInformation7.Visible = true;
                    gvInformation11.DataBind();
                    Button71.Visible = true;
                    Button74.Visible = false;

                }
            }
        }

        protected void Button74_Click1(object sender, EventArgs e)
        {
            if (gvInformation11.Visible == false)
            {
                gvInformation7.Visible = false;
                gvInformation6.Visible = false;
                gvInformation12.Visible = true;
                gvInformation14.Visible = false;



            }
            else
            {
                gvInformation6.Visible = false;
                gvInformation7.Visible = false;
                gvInformation14.Visible = false;

            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (txtMessage.Text != "")
            {
                foreach (GridViewRow row in gvInformation6.Rows)
                {
                    CheckBox checkbox = (CheckBox)row.FindControl("CheckBox13");
                    if (checkbox.Checked)
                    {
                        string SMSBalance;
                        string Cost;// Number za message zagiye kumuntu, ex: 1 cg 2
                        //double NoSms_Sent = 0;// Number Za message zageze kubantu

                        string msgid = "mobicar2020";
                        string receivedlr = "ok";
                        string callurl = "http://gateway.esicia.com/soap/ksms";
                        string messagetype = "text";

                        string Phone = "25" + row.Cells[5].Text.ToString();
                        //Phone = row.Cells[4].Text;
                        string Smsdos = (txtMessage.Text);
                        SMSManager.ksms objSms = null;
                        //SendSms.SendSMS objSms = null;

                        try
                        {
                            con.Close();
                            con.Open();

                            objSms = new MobiWebApplication.SMSManager.ksms();
                            objSms.AllowAutoRedirect = false;

                            if (!(objSms.ksend("mobicarwash", "9a8a9i3s8z4h", Textb_Sender.Text, ref Smsdos, Phone, ref msgid, receivedlr, callurl, messagetype, out Cost, out SMSBalance).Contains("done")))
                            {
                                LblSmsblnce.Visible = true;
                                //Label3.Visible = true;
                                lblError.Visible = true;
                                lblError.Text = "Message sent successfully";//
                                LblSmsblnce.Text = SMSBalance.ToString();
                                //txtMessage.Text = "";
                               
                                Button71.Visible = false;

                                string l = "exec InsertSentMessage '" + TextBox70.Text + "','" + txtMessage.Text + "','" + UserName.Text + "','" + DateOccur.Text + "','" + DateOccur.Text + "','" + row.Cells[5].Text + "'";
                                SqlCommand cmd = new SqlCommand(l, con);
                                cmd.Dispose();
                                cmd.ExecuteNonQuery();
                                Button71.Visible = false;

                                //Label_SMSSent.Text = NoSms_Sent.ToString();
                                //lblStatus.Text = callurl.ToString();
                                //con.Close();
                                //SqlCommand comm;
                                //comm = new SqlCommand("[dbo].[ADDMESSAGE]", con);
                                //comm.CommandType = CommandType.StoredProcedure;
                                //comm.Parameters.AddWithValue("@Message_body", Smsdos);
                                //comm.Parameters.AddWithValue("@Receiver", Phone);
                                ////comm.Parameters.AddWithValue("@date_sent", Label5.Text);
                                //comm.Parameters.AddWithValue("@Last_User", TextBox5.Text);
                                //comm.ExecuteNonQuery();
                                //con.Close();
                            }
                            else
                            {
                                lblError.Visible = true;
                                lblError.Text = "some error in port. Please try after some time";
                                //lblError.Text = bal.ToString();
                            }
                        }
                        catch (Exception ex)
                        {
                            lblError.Visible = true;
                            lblError.Text = ex.Message.ToString();
                        }
                        finally
                        {
                            if (objSms != null) objSms = null;
                        }
                    }
                    else
                    {
                        Alert.Show("Select First!!");
                    }
                }

                txtMessage.Text = "";
                gvInformation6.DataBind();
                gvInformation7.DataBind();
            }
            else
            {
                Alert.Show("Write Message PLZ!!");
            }
    
        }

        protected void CheckBox17_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();



            if (Button73.Visible == false)
            {

                Button72.Visible = false;
                Button73.Visible = true;
                ButtonBuu.Visible = false;              
                txtMessage.ReadOnly = false;

                foreach (GridViewRow row in gvInformation13.Rows)
                {
                    CheckBox checkbox = (CheckBox)row.FindControl("CheckBox17");

                    //Check if the checkbox is checked.

                    if (checkbox.Checked)
                    {

                        string Message = row.Cells[3].Text;
                        string IdMessage = row.Cells[1].Text;

                        txtMessage.Text = Message.ToString();
                        TextBox69.Text = IdMessage.ToString();



                    }
                }



            }
            else
            {

                Button74.Visible = true;
                ButtonBuu.Visible = false; 
                Button73.Visible = false;
                txtMessage.ReadOnly = true;
                txtMessage.Text = "";
                TextBox69.Text = "";

            }
        }

        protected void CheckBox16_CheckedChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            foreach (GridViewRow row in gvInformation13.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox16");

                //Check if the checkbox is checked.

                if (checkbox.Checked)
                {

                    string Message = row.Cells[3].Text;
                    string MessageType = row.Cells[2].Text;

                    txtMessage.Text = Message.ToString();
                    TextBox70.Text = MessageType.ToString();

                    txtMessage.ReadOnly = true;
                    gvInformation13.Visible = false;
                    gvInformation6.Visible = true;
                 
                    gvInformation13.DataBind();
                    ButtonBuu.Visible = true;
                    Button71.Visible = false;
                    Button74.Visible = false;
                    Button72.Visible = false;
                 

                }
            }
        }

        protected void Button69_Click(object sender, EventArgs e)
        {
            gvInformation7.Visible = false;
            gvInformation6.Visible = false;
            gvInformation11.Visible = false;
            gvInformation13.Visible = false;
            gvInformation14.Visible = true;
            Button74.Visible = false;
            ButtonBuu.Visible = false;
            Button72.Visible = true;
        }

        protected void Button69_Click1(object sender, EventArgs e)
        {
            gvInformation7.Visible = false;
            gvInformation6.Visible = false;
            gvInformation11.Visible = false;
            gvInformation13.Visible = false;
            gvInformation14.Visible = true;
            Button74.Visible = false;
            ButtonBuu.Visible = false;
            Button72.Visible = true;
           

        }

        protected void CheckBox13_CheckedChanged1(object sender, EventArgs e)
        {

        }

        protected void Button75_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportsMenu.aspx");
        }

        protected void Textb_Sender_TextChanged(object sender, EventArgs e)
        {

        }

        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int idRecord = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqld = new SqlDataAdapter("ViewVehicleHistoric", con);
            sqld.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqld.SelectCommand.Parameters.AddWithValue("@idRecord", idRecord);
            DataTable dtt = new DataTable();
            sqld.Fill(dtt);
            gvInformation7.DataSource = dtt;
            gvInformation7.DataBind();
            con.Close();
            TextBox73.Text = dtt.Rows[0]["idRecord"].ToString();

        }

        protected void Button37_Click1(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            Button imgbtn = sender as Button;
            GridViewRow row = imgbtn.NamingContainer as GridViewRow;
            string getId = gvInformation7.DataKeys[row.RowIndex].Values[0].ToString();
            System.Diagnostics.Debug.WriteLine(getId);
            Label3.Text = getId;
            Button76.Visible = true;
        
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    if ((double.Parse(e.Row.Cells[6].Text) == 0) && ((e.Row.Cells[7].Text == "Cash") || (e.Row.Cells[7].Text == "MoMo Pay")))
                    {
                        e.Row.Cells[1].ForeColor = Color.Orange;
                        e.Row.Cells[6].ForeColor = Color.Orange;
                    }

                    if (double.Parse(e.Row.Cells[4].Text) == 11)
                    {
                        e.Row.Cells[4].ForeColor = Color.Yellow;
                    }
                }
            }
            catch (Exception ex)
            {

                return;

            }
        }

        protected void Button76_Click(object sender, EventArgs e)
        {
            Response.Redirect("SMS.aspx");
            Button76.Visible = false;
        }

        protected void CheckBox14_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}