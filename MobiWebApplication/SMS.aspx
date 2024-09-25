<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="SMS.aspx.cs" Inherits="MobiWebApplication.WebForm51" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 75%;
        }
        .auto-style213
        {
            width: 100%;
            height: 21px;
        }
        .auto-style26
        {
            width: 100%;
        }
        .auto-style388 {
        }
        .auto-style353
        {
        }
        .auto-style339
        {
            width: 100%;
        }
        .auto-style274
        {
            text-align: center;
        }
        .auto-style392 {
            width: 390px;
            text-align: center;
        }
        .auto-style393 {
            width: 390px;
        }
        .auto-style394 {
            width: 93px;
            text-align: center;
        }
        .auto-style395 {
            width: 93px;
        }
        .auto-style396 {
            height: 73px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

             <script language="javascript">

                 function SelectAllCheckboxes(spanChk) {

                     // Added as ASPX uses SPAN for checkbox
                     var oItem = spanChk.children;
                     var theBox = (spanChk.type == "checkbox") ?
                         spanChk : spanChk.children.item[0];
                     xState = theBox.checked;
                     elm = theBox.form.elements;

                     for (i = 0; i < elm.length; i++)
                         if (elm[i].type == "checkbox" &&
                                  elm[i].id != theBox.id) {
                             //elm[i].click();
                             if (elm[i].checked != xState)
                                 elm[i].click();
                             //elm[i].checked=xState;
                         }
                 }
</script>
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                                                            <asp:Panel ID="PanelClientMna" runat="server" BackColor="Gray">
                                                                <table class="auto-style213">
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Panel ID="Panel40" runat="server" BackColor="#006666">
                                                                                <table class="auto-style26">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <table class="auto-style26">
                                                                                                <tr>
                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                        <table class="auto-style213">
                                                                                                            <tr>
                                                                                                                <td valign="top">
                                                                                                                    <asp:Panel ID="Panel45" runat="server" BackColor="Silver" Height="90px" Width="905px">
                                                                                                                        <asp:Button ID="Button68" runat="server" BackColor="#006666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="73px" OnClick="Button68_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='#244242'" Text="All Clients" Width="238px" />
                                                                                                                        <asp:Button ID="Button70" runat="server" BackColor="#006666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="73px" OnClick="Button70_Click1" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='#244242'" Text="Reminder" Width="238px" />
                                                                                                                        <asp:Button ID="Button69" runat="server" BackColor="#006666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="73px" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='#244242'" Text="Sent Message" Width="233px" OnClick="Button69_Click1" />
                                                                                                                        <asp:Button ID="Button75" runat="server" BackColor="#244242" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="73px" OnClick="Button75_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="Back" Width="136px" />
                                                                                                                    </asp:Panel>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td valign="top">&nbsp;</td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td>
                                                                                                                    <asp:Panel ID="Panel44" runat="server" BackColor="Gray" Width="100%">
                                                                                                                        <table class="auto-style213">
                                                                                                                            <tr>
                                                                                                                                <td align="left" class="auto-style396">
                                                                                                                                    <asp:Panel ID="Panel47" runat="server" BackColor="SandyBrown" CssClass="BUTTOM0" Width="488px" Height="57px" BorderStyle="None">
                                                                                                                                        <table class="auto-style4">
                                                                                                                                            <tr>
                                                                                                                                                <td>
                                                                                                                                                    <asp:TextBox ID="TextBox28" runat="server" BackColor="White" BorderStyle="None" CssClass="BUTTOM" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Navy" Height="30px" placeholder="Search Plate No ...." Width="315px"></asp:TextBox>
                                                                                                                                                </td>
                                                                                                                                                <td>
                                                                                                                                                    <asp:Button ID="Button47" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Navy" Height="48px" OnClick="Button47_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Search" Width="133px" />
                                                                                                                                                </td>
                                                                                                                                            </tr>
                                                                                                                                        </table>
                                                                                                                                    </asp:Panel>
                                                                                                                                </td>
                                                                                                                                <td class="auto-style396" colspan="2" align="right">
                                                                                                                                    <asp:Panel ID="Panel77" runat="server" BackColor="#006666" CssClass="BUTTOM0" Height="57px" Width="283px" BorderStyle="None">
                                                                                                                                        <table>
                                                                                                                                            <tr>
                                                                                                                                                <td>
                                                                                                                                                    &nbsp;</td>
                                                                                                                                                <td>
                                                                                                                                                    <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" BackColor="#244242" CssClass="BUTTOMNUMBER1" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" ForeColor="Orange" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" Height="47px" Width="270px">
                                                                                                                                                    </asp:DropDownList>
                                                                                                                                                </td>
                                                                                                                                            </tr>
                                                                                                                                        </table>
                                                                                                                                        <b style="text-align: center">
                                                                                                                                        <asp:Label ID="Labelsave0" runat="server" ForeColor="Orange"></asp:Label>
                                                                                                                                        </b>
                                                                                                                                    </asp:Panel>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td valign="top" class="auto-style388" rowspan="3">
                                                                                                                                    <table class="auto-style339">
                                                                                                                                        <tr>
                                                                                                                                            <td align="left">
                                                                                                                                                <asp:TextBox ID="Textb_Sender" runat="server" BackColor="#FFCCFF" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="30px" placeholder="Sender Name" Width="475px" Font-Names="Times New Roman" Font-Size="X-Large" Font-Bold="False" OnTextChanged="Textb_Sender_TextChanged">MobiCarWash</asp:TextBox>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td>
                                                                                                                                                <asp:TextBox ID="txtMessage" runat="server" BackColor="#FFCCFF" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Navy" Height="217px" placeholder="Write Message ........" TextMode="MultiLine" Width="475px"></asp:TextBox>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </td>
                                                                                                                                <td align="center" valign="bottom">
                                                                                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="SMS Balance:"></asp:Label>
                                                                                                                                    <asp:Label ID="LblSmsblnce" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Yellow" style="color: #800000" BackColor="Lime"></asp:Label>
                                                                                                                                    &nbsp;
                                                                                                                                </td>
                                                                                                                                <td valign="bottom" rowspan="3">
                                                                                                                                    &nbsp;</td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="center" valign="bottom"><b style="text-align: center">
                                                                                                                                    <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White"></asp:Label>
                                                                                                                                    </b></td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="left" valign="bottom">
                                                                                                                                    <asp:Button ID="Button71" runat="server" BackColor="Orange" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="False" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Navy" Height="73px" OnClick="Button71_Click" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="Send" Width="178px" />
                                                                                                                                    <asp:Button ID="Button72" runat="server" BackColor="Orange" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="False" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Navy" Height="73px" OnClick="Button72_Click" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="SMS" Width="178px" />
                                                                                                                                    <asp:Button ID="ButtonBuu" runat="server" BackColor="Orange" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="False" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Navy" Height="73px" OnClick="Unnamed1_Click" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="Send" Visible="False" Width="178px" />
                                                                                                                                    <asp:Button ID="Button73" runat="server" BackColor="Orange" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="False" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Navy" Height="73px" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="Update" Visible="False" Width="178px" OnClick="Button73_Click" />
                                                                                                                                    <asp:Button ID="Button74" runat="server" BackColor="Orange" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="False" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Navy" Height="73px" OnClick="Button74_Click1" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="SMS" Width="178px" />
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </asp:Panel>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                        <table class="auto-style213">
                                                                                                            <tr>
                                                                                                                <td class="auto-style274" valign="top">
                                                                                                                    <b style="text-align: center">
                                                                                                                    <asp:TextBox ID="TextBox69" runat="server" BorderStyle="None" Height="16px" Visible="False" Width="50px"></asp:TextBox>
                                                                                                                    <asp:Panel ID="Panel78" runat="server">
                                                                                                                        <table class="auto-style26">
                                                                                                                            <tr>
                                                                                                                                <td class="auto-style394" align="right">&nbsp;</td>
                                                                                                                                <td align="right" class="auto-style392">&nbsp;</td>
                                                                                                                                <td class="auto-style274">&nbsp;</td>
                                                                                                                                <td align="right">&nbsp;</td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="right" class="auto-style395">
                                                                                                                                    &nbsp;</td>
                                                                                                                                <td align="right" class="auto-style393"><b style="text-align: center">
                                                                                                                                    <asp:FormView ID="FormView13" runat="server" DataSourceID="SendNo" EnableModelValidation="True" style="margin-left: 0px">
                                                                                                                                        <EditItemTemplate>
                                                                                                                                            No:
                                                                                                                                            <asp:TextBox ID="NoTextBox5" runat="server" Text='<%# Bind("NOO") %>' />
                                                                                                                                            <br />
                                                                                                                                            <asp:LinkButton ID="UpdateButton2" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                        </EditItemTemplate>
                                                                                                                                        <InsertItemTemplate>
                                                                                                                                            No:
                                                                                                                                            <asp:TextBox ID="NoTextBox6" runat="server" Text='<%# Bind("NOO") %>' />
                                                                                                                                            <br />
                                                                                                                                            <asp:LinkButton ID="InsertButton2" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                            &nbsp;<asp:LinkButton ID="InsertCancelButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                        </InsertItemTemplate>
                                                                                                                                        <ItemTemplate>
                                                                                                                                            <asp:Panel ID="Panel97" runat="server">
                                                                                                                                                <table class="auto-style26">
                                                                                                                                                    <tr>
                                                                                                                                                        <td style="text-align: right">
                                                                                                                                                            <asp:Label ID="AlertLabel18" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#CCCCCC">Sent Message:</asp:Label>
                                                                                                                                                        </td>
                                                                                                                                                        <td style="text-align: left">
                                                                                                                                                            <asp:Label ID="NoLabel2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Bind("NOO") %>' />
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                </table>
                                                                                                                                            </asp:Panel>
                                                                                                                                        </ItemTemplate>
                                                                                                                                    </asp:FormView>
                                                                                                                                    </b></td>
                                                                                                                                <td align="right"><b style="text-align: center">
                                                                                                                                    <asp:FormView ID="FormView12" runat="server" DataSourceID="DiscountVehicleNo" EnableModelValidation="True" style="margin-left: 0px">
                                                                                                                                        <EditItemTemplate>
                                                                                                                                            No:
                                                                                                                                            <asp:TextBox ID="NoTextBox3" runat="server" Text='<%# Bind("No") %>' />
                                                                                                                                            <br />
                                                                                                                                            <asp:LinkButton ID="UpdateButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton1" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                        </EditItemTemplate>
                                                                                                                                        <InsertItemTemplate>
                                                                                                                                            No:
                                                                                                                                            <asp:TextBox ID="NoTextBox4" runat="server" Text='<%# Bind("No") %>' />
                                                                                                                                            <br />
                                                                                                                                            <asp:LinkButton ID="InsertButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                            &nbsp;<asp:LinkButton ID="InsertCancelButton1" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                        </InsertItemTemplate>
                                                                                                                                        <ItemTemplate>
                                                                                                                                            <asp:Panel ID="Panel96" runat="server">
                                                                                                                                                <table class="auto-style26">
                                                                                                                                                    <tr>
                                                                                                                                                        <td style="text-align: right">
                                                                                                                                                            <asp:Label ID="AlertLabel17" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#CCCCCC">Discount Vehicles:</asp:Label>
                                                                                                                                                        </td>
                                                                                                                                                        <td style="text-align: left">
                                                                                                                                                            <asp:Label ID="NoLabel1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Bind("No") %>' />
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                </table>
                                                                                                                                            </asp:Panel>
                                                                                                                                        </ItemTemplate>
                                                                                                                                    </asp:FormView>
                                                                                                                                    </b></td>
                                                                                                                                <td align="right">&nbsp;</td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </asp:Panel>
                                                                                                                    <asp:TextBox ID="TextBox71" runat="server" BorderStyle="None" Height="16px" Visible="False" Width="50px"></asp:TextBox>
                                                                                                                    <asp:TextBox ID="TextBox70" runat="server" BorderStyle="None" Height="16px" Visible="False" Width="50px"></asp:TextBox>
                                                                                                                    <asp:SqlDataSource ID="DiscountVehicleNo" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT   count(PlateNumber) AS No FROM WebDetailsDataView  WHERE (Phone LIKE '%078%') AND (Repetition = 10) AND (OperationDay = @OperationDay) AND SMSStatus='NotSent'">
                                                                                                                        <SelectParameters>
                                                                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                                                        </SelectParameters>
                                                                                                                    </asp:SqlDataSource>
                                                                                                                    <asp:Button ID="Button76" runat="server" BackColor="#244242" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" OnClick="Button76_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="Back" Width="206px" Visible="False" />
                                                                                                                    <asp:SqlDataSource ID="SendMessage" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idMessage, MessageType, MessaContent, userAdded, OperationDay, operationMonth, operationYear, dateRecorded, dateAdded, ContactNo FROM SentMessage WHERE (OperationDay = @OperationDay) ORDER BY idMessage DESC">
                                                                                                                        <SelectParameters>
                                                                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" DefaultValue="" />
                                                                                                                        </SelectParameters>
                                                                                                                    </asp:SqlDataSource>
                                                                                                                    <asp:SqlDataSource ID="SendNo" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT COUNT(ContactNo) AS NOO FROM [SentMessage] WHERE ([OperationDay] = @OperationDay)">
                                                                                                                        <SelectParameters>
                                                                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                                                                                                        </SelectParameters>
                                                                                                                    </asp:SqlDataSource>
                                                                                                                    <asp:GridView ID="gvInformation14" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataSourceID="SendMessage" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#CCCCCC" GridLines="Horizontal" style="margin-left: 0px" Visible="False" Width="905px" AllowPaging="True" PageSize="20">
                                                                                                                        <Columns>
                                                                                                                            <asp:TemplateField HeaderText="S/N">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                                                                </ItemTemplate>
                                                                                                                                <ItemStyle HorizontalAlign="Center" ForeColor="#CCCCCC" Font-Bold="False" />
                                                                                                                            </asp:TemplateField>
                                                                                                                            <asp:BoundField DataField="MessageType" HeaderText="MessageType" SortExpression="MessageType">
                                                                                                                            <ControlStyle />
                                                                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                                                                                                                            <ItemStyle ForeColor="#CCCCCC" Font-Bold="False" HorizontalAlign="Left" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="ContactNo" HeaderText="Receiver" SortExpression="ContactNo">
                                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                                            <ItemStyle  HorizontalAlign="Center" Font-Bold="False" ForeColor="#CCCCCC" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="dateAdded" DataFormatString="{0:d/MM/yyyy}" HeaderText="SentDate" SortExpression="dateAdded">
                                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                                            <ItemStyle  HorizontalAlign="Center" Font-Bold="False" ForeColor="#CCCCCC" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="dateRecorded" DataFormatString="{0:HH\:mm}" HeaderText="SentTime" SortExpression="dateRecorded">
                                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                                            <ItemStyle  HorizontalAlign="Center" Font-Bold="False" ForeColor="#CCCCCC" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded">
                                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                                            <ItemStyle  HorizontalAlign="Center" Font-Bold="False" ForeColor="#CCCCCC" />
                                                                                                                            </asp:BoundField>
                                                                                                                        </Columns>
                                                                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                        <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                                        <HeaderStyle BackColor="#006666" Font-Bold="True" ForeColor="Orange" />
                                                                                                                        <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                                        <AlternatingRowStyle BackColor="#006666" ForeColor="White" />
                                                                                                                    </asp:GridView>
                                                                                                                    <asp:GridView ID="gvInformation13" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataSourceID="SetMesssagg" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" GridLines="Horizontal" style="margin-left: 0px" Visible="False" Width="905px">
                                                                                                                        <Columns>
                                                                                                                            <asp:TemplateField HeaderText="Select">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:CheckBox ID="CheckBox16" runat="server" AutoPostBack="True" BackColor="Gray" CssClass="ChkBoxClassok2" Font-Size="Smaller" Height="51px" OnCheckedChanged="CheckBox16_CheckedChanged" Width="51px" />
                                                                                                                                </ItemTemplate>
                                                                                                                                <HeaderStyle BackColor="#006666" ForeColor="Orange" Height="50px" HorizontalAlign="Left" />
                                                                                                                                <ItemStyle BackColor="#006666" CssClass="input" HorizontalAlign="Left" />
                                                                                                                            </asp:TemplateField>
                                                                                                                            <asp:BoundField DataField="IdMessage" SortExpression="IdMessage">
                                                                                                                            <ControlStyle />
                                                                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                                                                                                                            <ItemStyle Font-Size="Smaller" ForeColor="#006666" HorizontalAlign="Center" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type">
                                                                                                                            <ControlStyle />
                                                                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                                                                                                                            <ItemStyle ForeColor="Orange" HorizontalAlign="Left" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="message" HeaderText="Message Content" SortExpression="message">
                                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:TemplateField HeaderText="Edit">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <b style="text-align: center">
                                                                                                                                    <asp:CheckBox ID="CheckBox17" runat="server" AutoPostBack="True" BackColor="Gray" CssClass="ChkBoxClassok2" Font-Size="Smaller" Height="51px" OnCheckedChanged="CheckBox17_CheckedChanged" Width="51px" />
                                                                                                                                    </b>
                                                                                                                                </ItemTemplate>
                                                                                                                                <HeaderStyle BackColor="#006666" ForeColor="Orange" Height="40px" HorizontalAlign="Right" />
                                                                                                                                <ItemStyle BackColor="#006666" CssClass="input" HorizontalAlign="Right" />
                                                                                                                            </asp:TemplateField>
                                                                                                                        </Columns>
                                                                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                        <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                                        <HeaderStyle BackColor="#006666" Font-Bold="True" ForeColor="Orange" />
                                                                                                                        <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                                        <AlternatingRowStyle BackColor="#006666" ForeColor="White" />
                                                                                                                    </asp:GridView>
                                                                                                                    <asp:GridView ID="gvInformation11" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataSourceID="SetMesssagg" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" GridLines="Horizontal" style="margin-left: 0px" Visible="False" Width="905px">
                                                                                                                        <Columns>
                                                                                                                            <asp:TemplateField HeaderText="Select">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:CheckBox ID="CheckBox12" runat="server" AutoPostBack="True" BackColor="Gray" CssClass="ChkBoxClassok2" Font-Size="Smaller" Height="51px" OnCheckedChanged="CheckBox12_CheckedChanged" Width="51px" />
                                                                                                                                </ItemTemplate>
                                                                                                                                <HeaderStyle BackColor="#006666" ForeColor="Orange" Height="50px" HorizontalAlign="Left" />
                                                                                                                                <ItemStyle BackColor="#006666" CssClass="input" HorizontalAlign="Left" />
                                                                                                                            </asp:TemplateField>
                                                                                                                            <asp:BoundField DataField="IdMessage" SortExpression="IdMessage">
                                                                                                                            <ControlStyle />
                                                                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                                                                                                                            <ItemStyle Font-Size="Smaller" ForeColor="#006666" HorizontalAlign="Center" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type">
                                                                                                                            <ControlStyle />
                                                                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                                                                                                                            <ItemStyle ForeColor="Orange" HorizontalAlign="Left" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="message" HeaderText="Message Content" SortExpression="message">
                                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:TemplateField HeaderText="Edit">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <b style="text-align: center">
                                                                                                                                    <asp:CheckBox ID="CheckBox13" runat="server" AutoPostBack="True" BackColor="Gray" CssClass="ChkBoxClassok2" Font-Size="Smaller" Height="51px" OnCheckedChanged="CheckBox13_CheckedChanged" Width="51px" />
                                                                                                                                    </b>
                                                                                                                                </ItemTemplate>
                                                                                                                                <HeaderStyle BackColor="#006666" ForeColor="Orange" Height="40px" HorizontalAlign="Right" />
                                                                                                                                <ItemStyle BackColor="#006666" CssClass="input" HorizontalAlign="Right" />
                                                                                                                            </asp:TemplateField>
                                                                                                                        </Columns>
                                                                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                        <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                                        <HeaderStyle BackColor="#006666" Font-Bold="True" ForeColor="Orange" />
                                                                                                                        <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                                        <AlternatingRowStyle BackColor="#006666" ForeColor="White" />
                                                                                                                    </asp:GridView>
                                                                                                                    <asp:GridView ID="gvInformation12" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataSourceID="SetMesssagg0" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" GridLines="Horizontal" style="margin-left: 0px" Visible="False" Width="905px">
                                                                                                                        <Columns>
                                                                                                                            <asp:TemplateField HeaderText="Select">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:CheckBox ID="CheckBox15" runat="server" AutoPostBack="True" BackColor="Gray" CssClass="ChkBoxClassok2" Font-Size="Smaller" Height="51px" OnCheckedChanged="CheckBox15_CheckedChanged1" Width="51px" />
                                                                                                                                </ItemTemplate>
                                                                                                                                <HeaderStyle BackColor="#006666" ForeColor="Orange" Height="50px" HorizontalAlign="Left" />
                                                                                                                                <ItemStyle BackColor="#006666" CssClass="input" HorizontalAlign="Left" />
                                                                                                                            </asp:TemplateField>
                                                                                                                            <asp:BoundField DataField="IdMessage" SortExpression="IdMessage">
                                                                                                                            <ControlStyle />
                                                                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                                                                                                                            <ItemStyle Font-Size="Smaller" ForeColor="#006666" HorizontalAlign="Center" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type">
                                                                                                                            <ControlStyle />
                                                                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                                                                                                                            <ItemStyle ForeColor="Orange" HorizontalAlign="Left" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="message" HeaderText="Message Content" SortExpression="message">
                                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
                                                                                                                            </asp:BoundField>
                                                                                                                        </Columns>
                                                                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                        <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                                        <HeaderStyle BackColor="#006666" Font-Bold="True" ForeColor="Orange" />
                                                                                                                        <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                                        <AlternatingRowStyle BackColor="#006666" ForeColor="White" />
                                                                                                                    </asp:GridView>
                                                                                                                    </b>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="auto-style274" valign="top">
                                                                                                                    <b style="text-align: center">
                                                                                                                    <asp:GridView ID="gvInformation6" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" GridLines="None" style="margin-left: 0px" Visible="False" Width="905px">
                                                                                                                        <Columns>
                                                                                                                            <asp:TemplateField>
                                                                                                                                <HeaderTemplate>
                                                                                                                                    <input id="checkbox18" runat="server" onclick="javascript: SelectAllCheckboxes(this);" style="background-color: Orange; height: 51px; width: 51px;" type="checkbox" class="ChkBoxClassok1" />
                                                                                                                                </HeaderTemplate>
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:CheckBox ID="CheckBox13" runat="server" BackColor="Gray" CausesValidation="True" CssClass="ChkBoxClassok2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="51px" OnCheckedChanged="CheckBox13_CheckedChanged1" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="51px" />
                                                                                                                                </ItemTemplate>
                                                                                                                                <HeaderStyle BackColor="#006666" ForeColor="Navy" Height="40px" HorizontalAlign="Left" />
                                                                                                                                <ItemStyle BackColor="#006666" CssClass="input" HorizontalAlign="Left" />
                                                                                                                            </asp:TemplateField>
                                                                                                                            <asp:TemplateField HeaderText="S/N">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                                                                </ItemTemplate>
                                                                                                                                <ItemStyle HorizontalAlign="Center" />
                                                                                                                            </asp:TemplateField>
                                                                                                                            <asp:BoundField DataField="PlateNumber" HeaderText="PlateNo" SortExpression="PlateNumber">
                                                                                                                            <HeaderStyle Height="50px" HorizontalAlign="Center" />
                                                                                                                            <ItemStyle HorizontalAlign="Center" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand">
                                                                                                                            <ControlStyle />
                                                                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                                                                                                                            <ItemStyle HorizontalAlign="Left" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="Name" HeaderText="ClientNo" SortExpression="Name">
                                                                                                                            <ControlStyle />
                                                                                                                            <HeaderStyle Height="50px" HorizontalAlign="Left" Wrap="True" />
                                                                                                                            <ItemStyle HorizontalAlign="Left" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="Phone" HeaderText="ContactNo" SortExpression="Phone">
                                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                                                                            <ItemStyle HorizontalAlign="Left" />
                                                                                                                            </asp:BoundField>
                                                                                                                        </Columns>
                                                                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                        <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                                        <HeaderStyle BackColor="#006666" Font-Bold="True" ForeColor="Orange" />
                                                                                                                        <RowStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
                                                                                                                        <AlternatingRowStyle BackColor="#006666" ForeColor="White" />
                                                                                                                    </asp:GridView>
                                                                                                                    <asp:SqlDataSource ID="PersonelInfo" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  DISTINCT  Name, Phone FROM WebRecoredVehicle1 WHERE (Phone &lt;&gt; '0') AND  (Phone &lt;&gt; '000') AND  (Phone &lt;&gt; '00') AND  (Phone &lt;&gt; '0000') AND  (Phone &lt;&gt; '00000') AND  (Phone &lt;&gt; ' 000')"></asp:SqlDataSource>
                                                                                                                    <asp:TextBox ID="TextBox73" runat="server" BorderStyle="None" Height="16px" Width="50px" Visible="False"></asp:TextBox>
                                                                                                                    <asp:SqlDataSource ID="SetMesssagg" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [IdMessage], [Type], [message] FROM [SetMessage]"></asp:SqlDataSource>
                                                                                                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                                                                                                    <asp:SqlDataSource ID="SetMesssagg0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT IdMessage, Type, message FROM SetMessage WHERE (Type &lt;&gt; 'Discount')"></asp:SqlDataSource>
                                                                                                                    <asp:SqlDataSource ID="Message" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  DISTINCT  Name, Phone FROM WebRecoredVehicle1 WHERE (Phone &lt;&gt; '0') AND  (Phone &lt;&gt; '000') AND  (Phone &lt;&gt; '00') AND  (Phone &lt;&gt; '0000') AND  (Phone &lt;&gt; '00000') AND  (Phone &lt;&gt; ' 000')"></asp:SqlDataSource>
                                                                                                                    <asp:SqlDataSource ID="DiscountVehicle" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT Name, Phone, brand, PlateNumber, idRecord,SMSStatus, Repetition FROM WebDetailsDataView WHERE (Phone LIKE '%078%') AND (Repetition = 10) AND (OperationDay = @OperationDay)  AND  SMSStatus='NotSent'">
                                                                                                                        <SelectParameters>
                                                                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                                                        </SelectParameters>
                                                                                                                    </asp:SqlDataSource>
                                                                                                                    </b>
                                                                                                                    <asp:GridView ID="gvInformation7" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataSourceID="DiscountVehicle" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" GridLines="None" style="margin-left: 0px" Width="905px" DataKeyNames="PlateNumber">
                                                                                                                        <Columns>
                                                                                                                            <asp:TemplateField>
                                                                                                                                <HeaderTemplate>
                                                                                                                                    <input id="checkbox11" runat="server" onclick="javascript: SelectAllCheckboxes(this);" style="background-color: Orange; height: 51px; width: 51px;" type="checkbox" class="ChkBoxClassok1" />
                                                                                                                                </HeaderTemplate>
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:CheckBox ID="CheckBox14" runat="server" BackColor="Gray" CausesValidation="True" CssClass="ChkBoxClassok2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="51px" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="51px" OnCheckedChanged="CheckBox14_CheckedChanged" />
                                                                                                                                </ItemTemplate>
                                                                                                                                <HeaderStyle BackColor="#006666" ForeColor="Navy" HorizontalAlign="Left" />
                                                                                                                                <ItemStyle BackColor="#006666" CssClass="input" HorizontalAlign="Left" />
                                                                                                                            </asp:TemplateField>
                                                                                                                              <asp:BoundField DataField="idRecord" SortExpression="idRecord" >
                                                                                                                              <ItemStyle Font-Bold="False" Font-Size="XX-Small" BackColor="#006666" ForeColor="#006666" />
                                                                                                                              </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="PlateNumber" HeaderText="PlateNo" SortExpression="PlateNumber">
                                                                                                                            <HeaderStyle Height="50px" HorizontalAlign="Center" />
                                                                                                                            <ItemStyle HorizontalAlign="Center" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand">
                                                                                                                            <ControlStyle />
                                                                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                                                                                                                            <ItemStyle HorizontalAlign="Left" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="Repetition" HeaderText="TMZ" SortExpression="Repetition">
                                                                                                                            <ControlStyle />
                                                                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                                                                                                                            <ItemStyle ForeColor="Orange" HorizontalAlign="Left" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="Name" HeaderText="ClientNo" SortExpression="Name">
                                                                                                                            <ControlStyle />
                                                                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                                                                                                                            <ItemStyle HorizontalAlign="Left" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="Phone" HeaderText="ContactNo" SortExpression="Phone">
                                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                                            <ItemStyle HorizontalAlign="Center" />
                                                                                                                            </asp:BoundField>
                                                                                                                              <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Button ID="Button37" runat="server" BackColor="#244242" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Height="40px" OnClick="Button37_Click1" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#CCCCCC'" Text="Historic" Width="150px" />
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle  ForeColor="Navy" />
                                                                                                <ItemStyle  CssClass="input" Font-Bold="False" HorizontalAlign="Right" />
                                                                                            </asp:TemplateField>
                                                                                                                          
                                                                                                                        </Columns>
                                                                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                        <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                                        <HeaderStyle BackColor="#006666" Font-Bold="True" ForeColor="Orange" />
                                                                                                                        <RowStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
                                                                                                                        <AlternatingRowStyle BackColor="#006666" ForeColor="White" />
                                                                                                                    </asp:GridView>
                                                                                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT distinct [dateAdded], [OperationDay] FROM [DetailSales] WHERE dateAdded=OperationDay  ORDER BY [dateAdded] desc"></asp:SqlDataSource>
                                                                                                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber, brand, Repetition , Price, PayedCash, Payment,Name, dateRecorded,code, userAdded FROM WebDetailsDataView WHERE PlateNumber= @PlateNumber  ORDER BY dateRecorded DESC">
                                                                                                                        <SelectParameters>
                                                                                                                            <asp:ControlParameter ControlID="Label3" Name="PlateNumber" PropertyName="Text" />
                                                                                                                        </SelectParameters>
                                                                                                                    </asp:SqlDataSource>
                                                                                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" EnableModelValidation="True" Font-Bold="False" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" Width="100%">
                                                                                                                        <RowStyle BackColor="#006666" ForeColor="White" />
                                                                                                                        <FooterStyle BackColor="Orange" ForeColor="White" />
                                                                                                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                                        <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" />
                                                                                                                        <HeaderStyle BackColor="Orange" ForeColor="Gray" />
                                                                                                                        <Columns>
                                                                                                                            <asp:TemplateField HeaderText="Sno">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                                                                </ItemTemplate>
                                                                                                                                <HeaderStyle Height="40px" />
                                                                                                                                <ItemStyle HorizontalAlign="Center" />
                                                                                                                            </asp:TemplateField>
                                                                                                                            <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber">
                                                                                                                            <ItemStyle Font-Names="Tahoma" Font-Size="Large" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand">
                                                                                                                            <ItemStyle Font-Names="Tahoma" Font-Size="Large" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="Name" HeaderText="Owner" SortExpression="Name">
                                                                                                                            <ItemStyle Font-Names="Tahoma" Font-Size="Large" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="Repetition" HeaderText="TMZ " SortExpression="Repetition">
                                                                                                                            <ItemStyle Font-Names="Tahoma" Font-Size="Large" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                                                                                                                            <ItemStyle Font-Names="Tahoma" Font-Size="Large" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="PayedCash" HeaderText="Paid" SortExpression="PayedCash">
                                                                                                                            <ItemStyle Font-Names="Tahoma" Font-Size="Large" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="Payment" HeaderText="Pay By" SortExpression="Payment">
                                                                                                                            <ItemStyle Font-Names="Tahoma" Font-Size="Large" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="code" HeaderText="Washer" SortExpression="code">
                                                                                                                            <ItemStyle Font-Names="Tahoma" Font-Size="Large" HorizontalAlign="Center" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="dateRecorded" DataFormatString="{0:d/MM/yyyy}" HeaderText="Time" SortExpression="dateRecorded">
                                                                                                                            <ItemStyle Font-Names="Tahoma" Font-Size="Large" />
                                                                                                                            </asp:BoundField>
                                                                                                                            <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded">
                                                                                                                            <ItemStyle Font-Names="Tahoma" Font-Size="Large" HorizontalAlign="Center" />
                                                                                                                            </asp:BoundField>
                                                                                                                        </Columns>
                                                                                                                        <EditRowStyle BackColor="#999999" />
                                                                                                                        <AlternatingRowStyle BackColor="gray" ForeColor="White" />
                                                                                                                    </asp:GridView>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </asp:Panel>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:Panel>
                                                        </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="UserName" runat="server" Text="UserName" Visible="False"></asp:Label>
                <asp:Label ID="DateOccur" runat="server" Text="DateOccur" Visible="False"></asp:Label>
                <asp:Label ID="RoleName" runat="server" Text="RoleName" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
