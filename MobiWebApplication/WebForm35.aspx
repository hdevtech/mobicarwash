<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerToolNew.Master" AutoEventWireup="true" CodeBehind="WebForm35.aspx.cs" Inherits="MobiWebApplication.WebForm35" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <asp:Panel ID="Panel5" runat="server">
        
        <script>
            function doPrintInoice() {
                var prtContent = document.getElementById('<%= Invoice0.ClientID %>');
                prtContent.border = 0; //set no border here
                WinPrint = window.open('', '', 'left=0,top=0,width=800,height=800,toolbar=0,scrollbars=1,status=0,resizable=1');
                WinPrint.document.write(prtContent.outerHTML);
                WinPrint.document.close();
                WinPrint.focus();
                WinPrint.print();
                //WinPrint.close();
            }
        </script>

        <asp:ScriptManager ID="script1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table>
                    <tr>
                        <td><b style="text-align: center"><span style="color: #000099">
                            <asp:Panel ID="Panel145" runat="server" BackColor="#F3FAFE" BorderColor="Navy" BorderStyle="None" BorderWidth="1px" CssClass="Panel5Registration" Width="98%">
                                <table>
                                    <tr>
                                        <td align="left" valign="middle" class="description" style="width: 686px; text-align: left;"><b style="text-align: center"><span style="color: #000099"><span style="color: #000099; text-align: right;">
                                            <asp:TextBox ID="TextBox41" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Navy" Height="50px" placeholder="Plate No ...." Width="100%"></asp:TextBox>
                                        </span></span></b></td>
                                        <td align="left" valign="middle" style="width: 720px"><b style="text-align: center"><span style="color: #000099"><span style="color: #000099; text-align: right;">
                                            <asp:Button ID="Button240" runat="server" BackColor="#F3FAFE" BorderColor="SkyBlue" BorderStyle="Solid" CssClass="BUTTOM" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Navy" Height="70px" OnClick="Button240_Click1" Text="Search" Width="100%" />
                                        </span></span></b></td>
                                        <td align="left" valign="middle" style="width: 720px"><b style="text-align: center"><span style="color: #000099"><span style="color: #000099; text-align: right;">
                                            <asp:Button ID="Button247" runat="server" BackColor="#F3FAFE" BorderColor="SkyBlue" BorderStyle="Solid" CssClass="BUTTOM" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Navy" Height="70px" OnClick="Button247_Click" Text="New Vehicle" Width="100%" />
                                            <ajaxToolkit:ModalPopupExtender ID="mpe4" runat="server" BackgroundCssClass="ModelOpacity" BehaviorID="mpe4" CancelControlID="CancelButon0" DynamicServicePath="" PopupControlID="Products0" TargetControlID="Button247">
                                            </ajaxToolkit:ModalPopupExtender>
                                        </span></span></b></td>
                                        <td align="left" style="width: 720px" valign="middle"><b style="text-align: center"><span style="color: #000099">
                                            <asp:DropDownList ID="DropDownList14" runat="server" BackColor="White" CssClass="BUTTOM" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Black" Height="80px" placeholder="Quantity" Width="100%">
                                            </asp:DropDownList>
                                        </span></b></td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </span></b></td>
                    </tr>
                    <tr>
                        <td><b style="text-align: center"><span style="color: #000099">
                            <asp:Panel ID="Panel147" runat="server" BackColor="#F3FAFE" CssClass="Panel1Registration" Width="98%">
                                <b style="text-align: center"><span style="color: #000099">
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT OperationDay, dateAdded FROM DetailSales ORDER BY dateAdded DESC"></asp:SqlDataSource>
                                    <asp:Label ID="MessageDisplay11" runat="server" Font-Names="Bahnschrift" Font-Size="Small" ForeColor="#996600" Visible="False">MessageDisplay</asp:Label>
                                    <asp:GridView ID="gvInformation0" runat="server" AutoGenerateColumns="False" BorderColor="#F0F0F0" BorderStyle="Solid" BorderWidth="1px" CellPadding="12" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Black" GridLines="Horizontal" Width="100%" OnRowCommand="gvInformation0_RowCommand">
                                        <Columns>

                                            <asp:BoundField DataField="Name" HeaderText="Owner" SortExpression="Name">
                                                <ItemStyle Font-Bold="False" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone">
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="brand" HeaderText="Brand" SortExpression="brand">
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="PlateNumber" HeaderText="PlateNumber" SortExpression="PlateNumber">
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="manufactureName" HeaderText="Type" SortExpression="manufactureName">
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="idClient" SortExpression="idClient">
                                                <HeaderStyle Height="35px" HorizontalAlign="Center" />
                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" Font-Size="XX-Small" ForeColor="#F3FAFE" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="IdManufacture" SortExpression="IdManufacture">
                                                <HeaderStyle Height="35px" HorizontalAlign="Center" />
                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" Font-Size="XX-Small" ForeColor="#F3FAFE" />
                                            </asp:BoundField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <b style="text-align: center"><span style="color: #000099"><%--<asp:CheckBox ID="CheckBox24" runat="server" CommandName="Select" BackColor="SkyBlue" BorderColor="#333333" BorderStyle="None" BorderWidth="1px" ForeColor="Black" Height="22px" Style="text-align: left" Text="Edit" Width="50px" />--%>
                                                        <span style="color: #000099; text-align: right;">
                                                            <asp:Button ID="Button240" runat="server" BackColor="#F3FAFE" BorderColor="SkyBlue" CommandName="Select" BorderStyle="Solid" CssClass="BUTTOM" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Navy" Height="60px" Text="Service" Width="120px" />
                                                        </span>
                                                    </span></b>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#66FFFF" Font-Bold="True" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <AlternatingRowStyle BackColor="White" />
                                    </asp:GridView>
                                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                    <asp:Label ID="Names" runat="server" Text="Names" Visible="False"></asp:Label>
                                    <asp:Label ID="IdCommand" runat="server" Text="100" Visible="False"></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                                    <asp:Label ID="RoleName" runat="server" Text="RoleName" Visible="False"></asp:Label>
                                </span></b>
                            </asp:Panel>
                        </span></b></td>
                    </tr>
                    <tr>
                        <td><b style="text-align: center"><span style="color: #000099">
                            <asp:Panel ID="Panel148" runat="server" BackColor="#F3FAFE" CssClass="Panel1Registration" Width="98%">
                                <b style="text-align: center"><span style="color: #000099">
                                    <asp:GridView ID="gvInformation1" runat="server" AutoGenerateColumns="False" BorderColor="#F0F0F0" BorderStyle="Solid" BorderWidth="1px" CellPadding="12" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Black" GridLines="Horizontal" OnRowCommand="gvInformation1_RowCommand" Width="100%" DataSourceID="SqlDataSource8">
                                        <Columns>
                                             <asp:TemplateField HeaderText="Sno">
                                                                <ItemTemplate>
                                                                    <%# Container.DataItemIndex + 1 %>
                                                                </ItemTemplate>
                                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                            </asp:TemplateField>
                                            <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" >
                                             <ItemStyle HorizontalAlign="Left" />
                                             </asp:BoundField>
                                            <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand" >
                                             <ItemStyle HorizontalAlign="Left" />
                                             </asp:BoundField>
                                            <asp:BoundField DataField="NameService" HeaderText="Service" SortExpression="NameService" >
                                             <ItemStyle HorizontalAlign="Left" />
                                             </asp:BoundField>
                                            <asp:BoundField DataField="Repetition" HeaderText="TMZ " SortExpression="Repetition" />
                                            <asp:BoundField DataField="StaffName" HeaderText="Washman" SortExpression="StaffName" >
                                             <ItemStyle HorizontalAlign="Left" />
                                             </asp:BoundField>
                                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                            <asp:BoundField DataField="PayedCash" HeaderText="Paid" SortExpression="PayedCash" />
                                            <%--<asp:BoundField DataField="dateRecorded" DataFormatString="{0:hh\:mm}" HeaderText="Time" SortExpression="dateRecorded" />--%>
                                            <asp:BoundField DataField="idRecord" SortExpression="idRecord">
                                                <ItemStyle Font-Bold="False" Font-Size="XX-Small" ForeColor="#F3FAFE" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="IdManufacture" SortExpression="IdManufacture">
                                                <ItemStyle Font-Bold="False" Font-Size="XX-Small" ForeColor="#F3FAFE" />
                                            </asp:BoundField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <b style="text-align: center"><span style="color: #000099"><%--<asp:CheckBox ID="CheckBox24" runat="server" CommandName="Select" BackColor="SkyBlue" BorderColor="#333333" BorderStyle="None" BorderWidth="1px" ForeColor="Black" Height="22px" Style="text-align: left" Text="Edit" Width="50px" />--%>
                                                        <span style="color: #000099; text-align: right;">
                                                            <asp:Button ID="Button240" runat="server" BackColor="#F3FAFE" BorderColor="SkyBlue" BorderStyle="Solid" CommandName="Select" CssClass="BUTTOM" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Navy" Height="60px" Text="Payment" Width="120px" />
                                                        </span>
                                                    </span></b>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#66FFFF" Font-Bold="True" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <AlternatingRowStyle BackColor="White" />
                                    </asp:GridView>
                                </span></b>
                                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber, brand, NameService, Price, PayedCash, StaffName, Repetition, Payment, dateRecorded, idRecord,IdManufacture, idClient,Name FROM WebDetailsDataView WHERE (OperationDay = @OperationDay) ORDER BY idRecord DESC">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </asp:Panel>
                        </span></b></td>
                    </tr>
                    <tr>
                        <td><b style="text-align: center"><span style="color: #000099">
                            <asp:Panel ID="Invoice" runat="server">
                                <table style="width: 100%">
                                    <tr>
                                        <td>
                                            <table style="width: 100%">
                                                <tr>
                                                    <td><b style="text-align: center"><span style="color: #000099">
                                                        <asp:Panel ID="Payment" runat="server" BackColor="#F3FAFE" BorderColor="Navy" BorderStyle="None" BorderWidth="1px" CssClass="Panel1Registration" Width="670px">
                                                            <table>
                                                                <tr>
                                                                    <td align="left" class="description" style="width: 1409px; text-align: right;" valign="middle"><b style="text-align: center"><span style="color: #000099">
                                                                        <asp:Button ID="CancelButon0" runat="server" BackColor="#FFCC66" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Navy" Height="33px" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='#FF9966'" Text="x" Width="36px" />
                                                                    </span></b></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="description" style="width: 1409px;" valign="middle">
                                                                        <table class="auto-style8">
                                                                            <tr>
                                                                                <td style="text-align: right; width: 279px; height: 23px;"><b style="text-align: center"><span style="color: #000099">
                                                                                    <asp:Label ID="Label99" runat="server" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="#333333" Text="Plate No:"></asp:Label>
                                                                                </span></b></td>
                                                                                <td style="text-align: left; width: 9px; height: 23px;"></td>
                                                                                <td style="text-align: left; height: 23px;"><b style="text-align: center"><span style="color: #000099">
                                                                                    <asp:Label ID="PlateNo" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Black" Text="Plate"></asp:Label>
                                                                                </span></b></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right; width: 279px; height: 26px;"><b style="text-align: center"><span style="color: #000099">
                                                                                    <asp:Label ID="Label100" runat="server" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="#333333" Text="Vehicle:"></asp:Label>
                                                                                </span></b></td>
                                                                                <td style="text-align: left; width: 9px; height: 26px;"></td>
                                                                                <td style="text-align: left; height: 26px;"><b style="text-align: center"><span style="color: #000099">
                                                                                    <asp:Label ID="vehicle" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Black" Text="vehicle"></asp:Label>
                                                                                </span></b></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right; width: 279px"><b style="text-align: center"><span style="color: #000099">
                                                                                    <asp:Label ID="Label104" runat="server" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="#333333" Text="Owner:"></asp:Label>
                                                                                </span></b></td>
                                                                                <td style="text-align: left; width: 9px">&nbsp;</td>
                                                                                <td style="text-align: left"><b style="text-align: center"><span style="color: #000099">
                                                                                    <asp:Label ID="OwnerVeh" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Black" Text="Owner"></asp:Label>
                                                                                </span></b></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right; width: 279px"><b style="text-align: center"><span style="color: #000099">
                                                                                    <asp:Label ID="Label101" runat="server" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="#333333" Text="Sevice:"></asp:Label>
                                                                                </span></b></td>
                                                                                <td style="text-align: left; width: 9px">&nbsp;</td>
                                                                                <td style="text-align: left"><b style="text-align: center"><span style="color: #000099">
                                                                                    <asp:Label ID="Service" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Black" Text="Service"></asp:Label>
                                                                                </span></b></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right; width: 279px; height: 26px;"><b style="text-align: center"><span style="color: #000099">
                                                                                    <asp:Label ID="Label103" runat="server" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="#333333" Text="Price:"></asp:Label>
                                                                                </span></b></td>
                                                                                <td style="text-align: left; width: 9px; height: 26px;"></td>
                                                                                <td style="text-align: left; height: 26px;"><b style="text-align: center"><span style="color: #000099">
                                                                                    <asp:Label ID="PriceVeh" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Black" Text="Price"></asp:Label>
                                                                                </span></b></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right; width: 279px"><b style="text-align: center"><span style="color: #000099">
                                                                                    <asp:Label ID="Label102" runat="server" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="#333333" Text="Washman:"></asp:Label>
                                                                                </span></b></td>
                                                                                <td style="text-align: left; width: 9px">&nbsp;</td>
                                                                                <td style="text-align: left"><b style="text-align: center"><span style="color: #000099">
                                                                                    <asp:Label ID="Washman" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Black" Text="Washman"></asp:Label>
                                                                                </span></b></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right; width: 279px">&nbsp;</td>
                                                                                <td style="text-align: left; width: 9px">&nbsp;</td>
                                                                                <td style="text-align: left">&nbsp;</td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="description" style="width: 1409px;" valign="middle"><b style="text-align: center"><span style="color: #000099"><span style="color: #000099; text-align: right;">
                                                                        <asp:TextBox ID="TextBox42" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Navy" Height="50px" placeholder="Enter Amount" Width="528px"></asp:TextBox>
                                                                    </span></span></b></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="description" style="width: 1409px;" valign="middle"><b style="text-align: center"><span style="color: #000099">
                                                                        <asp:Label ID="AlertLabel8" runat="server" Font-Bold="True" ForeColor="#0033CC"></asp:Label>
                                                                    </span>
                                                                        <asp:Label ID="idRecord" runat="server" Text="idRecord" Visible="False"></asp:Label>
                                                                    </b></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="description" style="width: 1409px;" valign="middle">&nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="description" style="width: 1409px;" valign="middle"><b style="text-align: center"><span style="color: #000099"><span style="color: #000099; text-align: right;">
                                                                        <asp:Button ID="Button242" runat="server" BackColor="SkyBlue" BorderColor="SkyBlue" BorderStyle="Solid" CssClass="BUTTOM" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Navy" OnClick="Button242_Click" Text="SAVE" Width="500px" Height="70px" />
                                                                    </span>
                                                                    </span></b></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="description" style="width: 1409px;" valign="middle">&nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="description" style="width: 1409px;" valign="middle">&nbsp;</td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </span></b></td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Products" runat="server" BackColor="#F3FAFE" BorderColor="SkyBlue" BorderStyle="Solid" BorderWidth="1px" CssClass="Panel1Registration" Width="670px">
                                                <b style="text-align: center">
                                                    <table class="auto-style8">
                                                        <tr>
                                                            <td style="text-align: right"><b style="text-align: center"><span style="color: #000099">
                                                                <asp:Button ID="CancelButon" runat="server" BackColor="#FFCC66" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Navy" Height="33px" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='#FF9966'" Text="x" Width="36px" />
                                                            </span></b></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center"><b style="text-align: center"><span style="color: #000099">
                                                                <asp:Label ID="Label98" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="#333333" Text="RECORD RERVICE"></asp:Label>
                                                            </span></b></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="AlertLabel7" runat="server" Font-Bold="True" ForeColor="#000099"></asp:Label>
                                                                <asp:Label ID="AlertLabel" runat="server" Font-Bold="True" ForeColor="#0033CC"></asp:Label>
                                                                <asp:Label ID="Name" runat="server" Text="Name" Visible="False"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><b style="text-align: center"><span style="color: #000099">
                                                                <asp:DropDownList ID="DropDownList16" runat="server" BackColor="White" CssClass="BUTTOM" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Black" Height="80px" placeholder="Quantity" Width="554px">
                                                                </asp:DropDownList>
                                                            </span></b></td>
                                                        </tr>
                                                        <tr>
                                                            <td><b style="text-align: center"><span style="color: #000099">
                                                                <asp:DropDownList ID="DropDownList17" runat="server" BackColor="White" CssClass="BUTTOM" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Black" Height="80px" placeholder="Quantity" Width="554px">
                                                                </asp:DropDownList>
                                                            </span></b></td>
                                                        </tr>
                                                        <tr>
                                                            <td><b style="text-align: center"><span style="color: #000099">
                                                                <asp:DropDownList ID="DropDownList18" runat="server" BackColor="White" CssClass="BUTTOM" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Black" Height="80px" placeholder="Quantity" Width="554px">
                                                                </asp:DropDownList>
                                                            </span></b></td>
                                                        </tr>
                                                        <tr>
                                                            <td><b style="text-align: center"><span style="color: #000099">
                                                                <asp:TextBox ID="TextBox29" runat="server" Visible="False"></asp:TextBox>
                                                            </span></b></td>
                                                        </tr>
                                                        <tr>
                                                            <td><b style="text-align: center"><span style="color: #000099">
                                                                <asp:Button ID="Button241" runat="server" BackColor="SkyBlue" BorderColor="SkyBlue" BorderStyle="Solid" CssClass="BUTTOM" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Navy" Text="ADD ON LIST" Width="500px" Height="69px" OnClick="Button241_Click1" />
                                                                <asp:Button ID="Button248" runat="server" BackColor="SkyBlue" BorderColor="SkyBlue" BorderStyle="Solid" CssClass="BUTTOM" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Navy" Height="69px" OnClick="Button248_Click" OnClientClick="doPrintInoice()" Text="SUBMIT" Visible="False" Width="500px" />
                                                            </span></b></td>
                                                        </tr>
                                                        <tr>
                                                            <td><b style="text-align: center"><span style="color: #000099">
                                                                <asp:DropDownList ID="DropDownList25" runat="server" AutoPostBack="True" DataSourceID="InvoNo0" DataTextField="idRecord" DataValueField="idRecord" Height="1px" Width="1px" OnDataBound="Button241_Click">
                                                                </asp:DropDownList>
                                                            </span></b></td>
                                                        </tr>
                                                    </table>
                                                </b>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b style="text-align: center"><span style="color: #000099">
                                                <asp:Panel ID="Products0" runat="server" BackColor="#F3FAFE" BorderColor="SkyBlue" BorderStyle="Solid" BorderWidth="1px" CssClass="Panel1Registration" Width="670px">
                                                    <b style="text-align: center">
                                                        <table class="auto-style8">
                                                            <tr>
                                                                <td style="text-align: right"><b style="text-align: center"><span style="color: #000099">
                                                                    <asp:Button ID="CancelButon1" runat="server" BackColor="#FFCC66" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Navy" Height="33px" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='#FF9966'" Text="x" Width="36px" />
                                                                </span></b></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center"><b style="text-align: center"><span style="color: #000099">
                                                                    <asp:Label ID="Label105" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="#333333" Text="RECORD NEW VEHICLE"></asp:Label>
                                                                </span></b></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="height: 23px">
                                                                    <asp:Label ID="AlertLabel9" runat="server" Font-Bold="True" ForeColor="#000099"></asp:Label>
                                                                    <asp:Label ID="AlertLabel10" runat="server" Font-Bold="True" ForeColor="#0033CC"></asp:Label>
                                                                    <asp:Label ID="Name0" runat="server" Text="Name" Visible="False"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center"><b style="text-align: center"><span style="color: #000099"><span style="color: #000099; text-align: right;">
                                                                    <asp:TextBox ID="TextBox43" runat="server" BackColor="White" BorderColor="SkyBlue" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="#333333" Height="50px" placeholder="Enter Client" Width="528px"></asp:TextBox>
                                                                </span></span></b></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center"><b style="text-align: center"><span style="color: #000099"><span style="color: #000099; text-align: right;">
                                                                    <asp:TextBox ID="TextBox44" runat="server" BackColor="White" BorderColor="SkyBlue" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="#333333" Height="50px" placeholder="Enter Contact No" Width="528px"></asp:TextBox>
                                                                </span></span></b></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center"><b style="text-align: center"><span style="color: #000099"><span style="color: #000099; text-align: right;">
                                                                    <asp:TextBox ID="TextBox45" runat="server" BackColor="White" BorderColor="SkyBlue" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="#333333" Height="50px" placeholder="Enter Vehicle Type" Width="528px"></asp:TextBox>
                                                                </span></span></b></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="height: 66px; text-align: center;"><b style="text-align: center"><span style="color: #000099"><span style="color: #000099; text-align: right;">
                                                                    <asp:TextBox ID="TextBox46" runat="server" BackColor="White" BorderColor="SkyBlue" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="#333333" Height="50px" placeholder="Enter Plate No" Width="528px"></asp:TextBox>
                                                                </span></span></b></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="height: 42px"><b style="text-align: center"><span style="color: #000099">
                                                                    <asp:DropDownList ID="DropDownList24" runat="server" BackColor="White" CssClass="BUTTOM" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Black" Height="80px" placeholder="Quantity" Width="554px">
                                                                    </asp:DropDownList>
                                                                </span></b></td>
                                                            </tr>
                                                            <tr>
                                                                <td><b style="text-align: center"><span style="color: #000099">
                                                                    <asp:TextBox ID="TextBox47" runat="server" Visible="False"></asp:TextBox>
                                                                </span></b></td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td><b style="text-align: center"><span style="color: #000099">
                                                                    <asp:Button ID="Button244" runat="server" BackColor="SkyBlue" BorderColor="SkyBlue" BorderStyle="Solid" CssClass="BUTTOM" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Navy" Height="80px" Text="SUBMIT" Width="500px" OnClick="Button244_Click2" />
                                                                    <asp:Button ID="Button245" runat="server" BackColor="SkyBlue" BorderColor="SkyBlue" BorderStyle="Solid" CssClass="BUTTOM" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Navy" Height="80px" Text="UPDATE" Visible="False" Width="500px" OnClick="Button245_Click" />
                                                                </span></b></td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </b>
                                                </asp:Panel>
                                            </span></b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><b style="text-align: center"><span style="color: #000099">
                                            <asp:Panel ID="Panel149" runat="server" BackColor="#F3FAFE" CssClass="Panel5Registration" Width="98%" Visible="False">
                                                <b style="text-align: center"><span style="color: #000099">
                                                    <asp:Label ID="IdCommand0" runat="server" Text="100" Visible="False"></asp:Label>
                                                    <asp:Label ID="Label106" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:Label ID="RoleName0" runat="server" Text="RoleName"></asp:Label>
                                                    <asp:Label ID="Label107" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:Label ID="Names0" runat="server" Text="Names" Visible="False"></asp:Label>
                                                    <asp:GridView ID="gvInformation2" runat="server" AutoGenerateColumns="False" BorderColor="#F0F0F0" BorderStyle="Solid" BorderWidth="1px" CellPadding="12" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Black" GridLines="Horizontal" OnRowCommand="gvInformation0_RowCommand" Width="100%">
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="Sno">
                                                                <ItemTemplate>
                                                                    <%# Container.DataItemIndex + 1 %>
                                                                </ItemTemplate>
                                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="Name" HeaderText="Owner" SortExpression="Name">
                                                                <ItemStyle Font-Bold="False" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="brand" HeaderText="Brand" SortExpression="brand">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="PlateNumber" HeaderText="PlateNumber" SortExpression="PlateNumber">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="manufactureName" HeaderText="Type" SortExpression="manufactureName">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="idClient" SortExpression="idClient">
                                                                <HeaderStyle Height="35px" HorizontalAlign="Center" />
                                                                <ItemStyle Font-Bold="False" Font-Size="XX-Small" ForeColor="#F3FAFE" HorizontalAlign="Center" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="IdManufacture" SortExpression="IdManufacture">
                                                                <HeaderStyle Height="35px" HorizontalAlign="Center" />
                                                                <ItemStyle Font-Bold="False" Font-Size="XX-Small" ForeColor="#F3FAFE" HorizontalAlign="Center" />
                                                            </asp:BoundField>
                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <b style="text-align: center"><span style="color: #000099"><%--<asp:CheckBox ID="CheckBox24" runat="server" CommandName="Select" BackColor="SkyBlue" BorderColor="#333333" BorderStyle="None" BorderWidth="1px" ForeColor="Black" Height="22px" Style="text-align: left" Text="Edit" Width="50px" />--%>
                                                                        <asp:ImageButton ID="ImgEdittt1" runat="server" CommandName="Select" Height="39px" ImageUrl="~/images/editing.png" OnClick="ImgEdittt_Click" Width="36px" />
                                                                    </span></b>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                                        <HeaderStyle BackColor="#66FFFF" Font-Bold="True" />
                                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" />
                                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                                        <AlternatingRowStyle BackColor="White" />
                                                    </asp:GridView>
                                                </span></b>
                                            </asp:Panel>
                                        </span></b></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Invoice0" runat="server" BackColor="White" Font-Bold="False" ForeColor="Black" Width="100%" Visible="False">
                                                <table class="auto-style45">
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="TextBox71" runat="server" BorderStyle="None" Width="34px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <table class="auto-style45">
                                                                <tr>
                                                                    <td class="auto-style414" style="border-width: thin; border-color: #000000; border-style: none none dotted none">
                                                                        <asp:Panel ID="Panel115" runat="server" Height="90px" Width="100%">
                                                                            <table class="auto-style4">
                                                                                <tr>
                                                                                    <td style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                        <asp:Label ID="Label83" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="MOBICARWASH LTD"></asp:Label>
                                                                                        &nbsp;</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                        <asp:Label ID="Label84" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Tin No:"></asp:Label>
                                                                                        <asp:Label ID="Label85" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="107048761"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                        <asp:Label ID="Label79" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Contact No:"></asp:Label>
                                                                                        <asp:Label ID="Label80" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="0788341573"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="auto-style416" style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                        <asp:Label ID="Label81" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="MOMO Code:"></asp:Label>
                                                                                        <asp:Label ID="Label82" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="700600"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </asp:Panel>
                                                                        &nbsp;<table class="auto-style45">
                                                                            <tr>
                                                                                <td align="right">
                                                                                    <asp:Label ID="Label52" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Large" ForeColor="Black" Text="Service Order:"></asp:Label>
                                                                                </td>
                                                                                <td align="left">
                                                                                    <asp:FormView ID="FormView17" runat="server" DataKeyNames="idRecord" DataSourceID="InvoNo" Font-Bold="True" Font-Names="Times New Roman" Style="margin-left: 9px">
                                                                                        <EditItemTemplate>
                                                                                            idRecord:
                                                                                            <asp:Label ID="idRecordLabel1" runat="server" Text='<%# Eval("idRecord") %>' />
                                                                                            <br />
                                                                                            <asp:LinkButton ID="UpdateButton6" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton6" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                        </EditItemTemplate>
                                                                                        <InsertItemTemplate>
                                                                                            idRecord:
                                                                                            <asp:TextBox ID="idRecordTextBox" runat="server" Text='<%# Bind("idRecord") %>' />
                                                                                            <br />
                                                                                            <asp:LinkButton ID="InsertButton6" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                            &nbsp;<asp:LinkButton ID="InsertCancelButton6" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                        </InsertItemTemplate>
                                                                                        <ItemTemplate>
                                                                                            &nbsp;<asp:Label ID="idRecordLabel" runat="server" Font-Names="Agency FB" Font-Size="Large" Text='<%# Eval("idRecord") %>' />
                                                                                            <br />
                                                                                        </ItemTemplate>
                                                                                    </asp:FormView>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="auto-style413">
                                                                        <asp:FormView ID="FormView16" runat="server" DataSourceID="SqlDataSReceivedVehicle2" Font-Bold="False" Font-Size="Medium" Style="text-align: center" Width="100%">
                                                                            <EditItemTemplate>
                                                                                PlateNumber:
                                                                                <asp:TextBox ID="PlateNumberTextBox0" runat="server" Text='<%# Bind("PlateNumber") %>' />
                                                                                <br />
                                                                                brand:
                                                                                <asp:TextBox ID="brandTextBox0" runat="server" Text='<%# Bind("brand") %>' />
                                                                                <br />
                                                                                manufactureName:
                                                                                <asp:TextBox ID="manufactureNameTextBox" runat="server" Text='<%# Bind("manufactureName") %>' />
                                                                                <br />
                                                                                Name:
                                                                                <asp:TextBox ID="NameTextBox0" runat="server" Text='<%# Bind("Name") %>' />
                                                                                <br />
                                                                                Phone:
                                                                                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                                                                                <br />
                                                                                NameService:
                                                                                <asp:TextBox ID="NameServiceTextBox" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                <br />
                                                                                Payment:
                                                                                <asp:TextBox ID="PaymentTextBox0" runat="server" Text='<%# Bind("Payment") %>' />
                                                                                <br />
                                                                                dateRecorded:
                                                                                <asp:TextBox ID="dateRecordedTextBox" runat="server" Text='<%# Bind("dateRecorded") %>' />
                                                                                <br />
                                                                                Price:
                                                                                <asp:TextBox ID="PriceTextBox0" runat="server" Text='<%# Bind("Price") %>' />
                                                                                <br />
                                                                                <asp:LinkButton ID="UpdateButton7" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton7" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                            </EditItemTemplate>
                                                                            <InsertItemTemplate>
                                                                                PlateNumber:
                                                                                <asp:TextBox ID="PlateNumberTextBox1" runat="server" Text='<%# Bind("PlateNumber") %>' />
                                                                                <br />
                                                                                brand:
                                                                                <asp:TextBox ID="brandTextBox1" runat="server" Text='<%# Bind("brand") %>' />
                                                                                <br />
                                                                                manufactureName:
                                                                                <asp:TextBox ID="manufactureNameTextBox0" runat="server" Text='<%# Bind("manufactureName") %>' />
                                                                                <br />
                                                                                Name:
                                                                                <asp:TextBox ID="NameTextBox1" runat="server" Text='<%# Bind("Name") %>' />
                                                                                <br />
                                                                                Phone:
                                                                                <asp:TextBox ID="PhoneTextBox0" runat="server" Text='<%# Bind("Phone") %>' />
                                                                                <br />
                                                                                NameService:
                                                                                <asp:TextBox ID="NameServiceTextBox7" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                <br />
                                                                                Payment:
                                                                                <asp:TextBox ID="PaymentTextBox1" runat="server" Text='<%# Bind("Payment") %>' />
                                                                                <br />
                                                                                dateRecorded:
                                                                                <asp:TextBox ID="dateRecordedTextBox0" runat="server" Text='<%# Bind("dateRecorded") %>' />
                                                                                <br />
                                                                                Price:
                                                                                <asp:TextBox ID="PriceTextBox1" runat="server" Text='<%# Bind("Price") %>' />
                                                                                <br />
                                                                                <asp:LinkButton ID="InsertButton7" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                &nbsp;<asp:LinkButton ID="InsertCancelButton7" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                            </InsertItemTemplate>
                                                                            <ItemTemplate>
                                                                                <asp:Panel ID="Panel40" runat="server" HorizontalAlign="Center">
                                                                                    <table class="auto-style45">
                                                                                        <tr>
                                                                                            <td align="center" class="auto-style238">
                                                                                                <asp:Label ID="Label43" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Plate No:"></asp:Label>
                                                                                                <asp:Label ID="PlateNumberLabel" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("PlateNumber") %>' />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="center" class="auto-style412">
                                                                                                <asp:Label ID="Label44" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Vehicle:"></asp:Label>
                                                                                                <asp:Label ID="brandLabel" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("brand") %>' />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="center" class="auto-style238">
                                                                                                <asp:Label ID="Label45" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Category:"></asp:Label>
                                                                                                <asp:Label ID="manufactureNameLabel" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("manufactureName") %>' />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="center" class="auto-style235">
                                                                                                <asp:Label ID="Label46" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Client:"></asp:Label>
                                                                                                <asp:Label ID="NameLabel" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("Name") %>' />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="center" class="auto-style238">
                                                                                                <asp:Label ID="Label47" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Contact No:"></asp:Label>
                                                                                                <asp:Label ID="PhoneLabel" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("Phone") %>' />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="center" class="auto-style238">
                                                                                                <asp:Label ID="Label48" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Service:"></asp:Label>
                                                                                                <asp:Label ID="NameServiceLabel" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("NameService") %>' />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="center" class="auto-style238">
                                                                                                <asp:Label ID="Label49" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Staff:"></asp:Label>
                                                                                                <asp:Label ID="Washer" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("StaffName") %>' />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="center" class="auto-style238">
                                                                                                <asp:Label ID="Label50" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Date:"></asp:Label>
                                                                                                <asp:Label ID="dateRecordedLabel" runat="server" DataFormatString="{0:d/MM/yyyy}" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("dateRecorded","{0:d/MM/yyyy}") %>' />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="center" class="auto-style412" style="border-style: dotted none dotted none; border-width: thin; border-color: #000000">
                                                                                                <asp:Label ID="Label51" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Text="Amount:"></asp:Label>
                                                                                                <asp:Label ID="PriceLabel0" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Text='<%# Bind("Price") %>' />
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </asp:Panel>
                                                                            </ItemTemplate>
                                                                        </asp:FormView>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b style="text-align: center"><span style="color: #000099">
                                                <asp:SqlDataSource ID="InvoNo0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idRecord] FROM [DetailSales] ORDER BY [idRecord] DESC"></asp:SqlDataSource>
                                            </span></b></td>
                                    </tr>
                                    <tr>
                                        <td><b style="text-align: center"><span style="color: #000099">
                                            <asp:Panel ID="Drinks1" runat="server" BackColor="White" Width="100%">
                                                <table class="auto-style4">
                                                    <tr>
                                                        <td><b style="text-align: center"><span style="color: #000099">
                                                            <asp:DropDownList ID="DropDownList19" runat="server" BackColor="White" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Small" ForeColor="Black" Height="1px" placeholder="Quantity" Width="1px">
                                                            </asp:DropDownList>
                                                        </span></b></td>
                                                        <td valign="top">
                                                            <table class="auto-style4">
                                                                <tr>
                                                                    <td>
                                                                        <asp:SqlDataSource ID="SqlDataSReceivedVehicle2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [PlateNumber],[brand],[manufactureName],[Name],[Phone], [NameService],StaffName,[Payment] ,[dateRecorded],[Price] FROM [WebDetailsDataView] WHERE ([idRecord] = @idRecord)">
                                                                            <SelectParameters>
                                                                                <asp:ControlParameter ControlID="DropDownList25" Name="idRecord" PropertyName="SelectedValue" Type="Int32" />
                                                                            </SelectParameters>
                                                                        </asp:SqlDataSource>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="height: 5px"><b style="text-align: center"><span style="color: #000099">
                                                                        <asp:Button ID="Button243" runat="server" BackColor="White" BorderStyle="None" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Small" Height="1px" onmouseout="this.style.backgroundColor='#66FFFF'" onmouseover="this.style.backgroundColor='SkyBlue'" Width="1px" />
                                                                        <ajaxToolkit:ModalPopupExtender ID="mpe2" runat="server" BehaviorID="mpe2" CancelControlID="CancelButon0" DynamicServicePath="" BackgroundCssClass="ModelOpacity" PopupControlID="Payment" TargetControlID="Button243">
                                                                        </ajaxToolkit:ModalPopupExtender>
                                                                    </span>
                                                                        <asp:SqlDataSource ID="InvoNo" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idRecord] from [WebDetailsDataView] WHERE ([idRecord] = @idRecord)">
                                                                            <SelectParameters>
                                                                                <asp:ControlParameter ControlID="DropDownList25" Name="idRecord" PropertyName="SelectedValue" Type="Int32" />
                                                                            </SelectParameters>
                                                                        </asp:SqlDataSource>
                                                                    </b></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><b style="text-align: center"><span style="color: #000099">
                                                                        <asp:Button ID="Button68" runat="server" BackColor="White" BorderStyle="None" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Small" Height="1px" onmouseout="this.style.backgroundColor='#66FFFF'" onmouseover="this.style.backgroundColor='SkyBlue'" Width="1px" />
                                                                        <ajaxToolkit:ModalPopupExtender ID="mpe1" runat="server" BehaviorID="mpe1" CancelControlID="CancelButon" DynamicServicePath="" BackgroundCssClass="ModelOpacity" PopupControlID="Products" TargetControlID="Button68">
                                                                        </ajaxToolkit:ModalPopupExtender>
                                                                    </span></b></td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </span></b></td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </span></b></td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </asp:Panel>
</asp:Content>

