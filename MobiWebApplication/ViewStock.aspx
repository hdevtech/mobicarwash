﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ViewStock.aspx.cs" Inherits="MobiWebApplication.WebForm39" %>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ViewClientDailyCredit.aspx.cs" Inherits="MobiWebApplication.WebForm30" %>--%>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ViewStaffCreditStatus.aspx.cs" Inherits="MobiWebApplication.WebForm29" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>  
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
    {
        width: 99%;
    }
        .style21
        {
            height: 38px;
            width: 153px;
            text-align:left;
            
        }
        .style22
        {
            height: 31px;
            width: 153px;
            text-align:left;
            
        }
        .style24
        {
            height: 30px;
            width: 153px;
            text-align:left;
            
        }
        .style30
        {
            height: 38px;
            width: 396px;
        }
        .style31
        {
            height: 31px;
            width: 396px;
        }
        .style33
        {
            height: 30px;
            width: 396px;
        }
        .style62
        {
            height: 32px;
            width: 153px;
            text-align: left;
        }
        .style68
        {
            height: 32px;
            width: 16%;
        }
        .style83
        {
            height: 28px;
            width: 153px;
            text-align: left;
        }
        .style84
        {
            height: 28px;
            width: 396px;
        }
        .style11
    {
        height: 23px;
        font-size:larger
    }
        .style87
        {
            height: 32px;
            width: 127px;
        }
        .style89
        {
            height: 28px;
            width: 127px;
        }
        .style90
        {
            height: 38px;
            width: 127px;
        }
        .style91
        {
            height: 31px;
            width: 127px;
        }
        .style92
        {
            height: 30px;
            width: 127px;
        }
        .style106
        {
            height: 74px;
            width: 127px;
        }
        .style107
        {
            height: 74px;
            width: 153px;
            text-align: left;
        }
        .style108
        {
            height: 74px;
            width: 396px;
           
           
        }
        .style110
        {
            height: 32px;
            width: 298px;
        }
        .style115
        {
            height: 8px;
            width: 127px;
        }
        .style116
        {
            height: 8px;
            width: 153px;
            text-align: left;
        }
        .style117
        {
            height: 8px;
            width: 396px;
        }
        .style118
        {
            width: 103%;
        height: 208px;
    }
        .style122
        {
            width: 910px;
        }
        .style123
        {
            height: 4px;
            width: 127px;
        }
        .style124
        {
            height: 4px;
            width: 153px;
            text-align: left;
        }
        .style125
        {
            height: 4px;
            width: 396px;
        }
        .style127
        {
            height: 20px;
            width: 153px;
        }
        .style128
        {
            height: 20px;
        }
        .style129
        {
            height: 20px;
            width: 127px;
        }
        .style130
        {
            height: 20px;
            width: 16%;
        }
        .style131
        {
            height: 20px;
            width: 298px;
        }
        .style132
        {
            height: 13px;
            width: 127px;
        }
        .style133
        {
            height: 13px;
            width: 153px;
        }
        .style134
        {
            height: 13px;
        }
        .style135
        {
            height: 13px;
            width: 16%;
        }
        .style136
        {
            height: 13px;
            width: 298px;
        }
        .style137
        {
            height: 32px;
            width: 140px;
        }
        .auto-style15
    {
        height: 51px;
        width: 62px;
    }
    .auto-style26
    {
        height: 14px;
        width: 62px;
    }
        .auto-style104
        {
            height: 14px;
            width: 378px;
        }
        .auto-style105
        {
            height: 14px;
            width: 144px;
        }
        .auto-style121
        {
            height: 89px;
        }
        .auto-style122
        {
            width: 100%;
        }
        .auto-style127
        {
            width: 34px;
            height: 112px;
        }
        .auto-style128
        {
            width: 689px;
            height: 112px;
        }
        .auto-style129
        {
            height: 112px;
        }
        .auto-style138
        {
            height: 14px;
            width: 242px;
        }
        .auto-style146
        {
            height: 51px;
            width: 396px;
        }
        .auto-style147
        {
            height: 51px;
        }
        .auto-style156
        {
            width: 689px;
        }
        .auto-style157
        {
            width: 47px;
            font-family:TeamViewer14;
            font-size:x-large;
        }
        .auto-style158
        {
            width: 34px;
        }
        .auto-style159
        {
            width: 34px;
            height: 44px;
        }
        .auto-style160
        {
            width: 689px;
            height: 44px;
        }
        .auto-style161
        {
            height: 44px;
        }
        .auto-style162
        {
            width: 170px;
        }
        .auto-style163
        {
            width: 491px;
        }
        .auto-style164
        {
            width: 478px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
     <script>
         function doPrintdailyRPT() {
             var prtContent = document.getElementById('<%= Panel3.ClientID %>');
             prtContent.border = 0; //set no border here
             WinPrint = window.open('', '', 'left=0,top=0,width=800,height=800,toolbar=0,scrollbars=1,status=0,resizable=1');
             WinPrint.document.write(prtContent.outerHTML);
             WinPrint.document.close();
             WinPrint.focus();
             WinPrint.print();
             //WinPrint.close();
         }
         </script>
    <table class="style1">
        <tr>
            <td class="auto-style15">
               
                </td>
            <td class="auto-style147" colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="27px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    Width="184px" DataSourceID="SqlDataSource1" DataTextField="OperationDay" DataValueField="OperationDay">
                </asp:DropDownList>
                </td>
            <td class="auto-style146">
                <asp:Button ID="Button1" runat="server" CssClass="btnlogin" Height="41px" OnClick="Button1_Click" OnClientClick="doPrintdailyRPT()" Text="Download" Width="213px" />
                </td>
            <td class="auto-style146">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT top 30 [idSales], [OperationDay] FROM [StartDaily] ORDER BY [idSales] DESC" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td class="auto-style26">
                    
                &nbsp;</td>
            <td class="auto-style104">
                
                            <asp:TextBox ID="TextBox10" runat="server" Visible="False" Width="63px" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
                        </td>
            <td class="auto-style138" colspan="2">
                
                    
                <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                
            </td>
            <td class="auto-style105">
                    
                    
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style121" colspan="5">
                <asp:Panel ID="Panel3" runat="server" BackColor="#006666">
                    <table class="auto-style122">
                        <tr>
                            <td class="auto-style158">&nbsp;</td>
                            <td class="auto-style156">
                                <table class="auto-style122">
                                    <tr>
                                        <td class="auto-style157">&nbsp;</td>
                                        <td f="" rowspan="2" style="text-align: center; font-size: x-large; font-family:'Times New Roman'; color:orange; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; STOCK ENTRY&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style157">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style127"></td>
                            <td class="auto-style128">
                                <asp:GridView ID="gvInformation" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDataSource2" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Height="56px" OnRowDataBound="gvInformation_RowDataBound" OnSelectedIndexChanged="gvInformation_SelectedIndexChanged" ShowFooter="True" style="margin-left: 0px" Width="842px">
                                   <RowStyle BackColor="#006666" ForeColor="White" Font-Bold="True"/>
                                    <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                    <Columns>
                                         <asp:TemplateField HeaderText="Sno">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
                                        <asp:BoundField DataField="qantityRoad" HeaderText="qantity Road" SortExpression="qantityRoad" >
                                         <ItemStyle HorizontalAlign="Center" />
                                         </asp:BoundField>
                                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" >
                                         <ItemStyle HorizontalAlign="Center" />
                                         </asp:BoundField>
                                        <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" >
                                         <ItemStyle HorizontalAlign="Center" />
                                         </asp:BoundField>
                                        <asp:BoundField DataField="dateOccur" HeaderText="date Occur" SortExpression="dateOccur" />
                                        <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded" />
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <AlternatingRowStyle BackColor="gray" ForeColor="White" Font-Bold="True" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" OnSelecting="SqlDataSource2_Selecting1" SelectCommand="SELECT [ProductName], [qantityRoad], [price], [total], [dateOccur], [userAdded] FROM [ProductRoadView] WHERE ([OperationDay] = @OperationDay) ORDER BY [dateOccur]">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td class="auto-style129"></td>
                        </tr>
                        <tr>
                            <td class="auto-style159"></td>
                            <td class="auto-style160">
                                <table class="auto-style122">
                                    <tr>
                                        <td class="auto-style157">&nbsp;</td>
                                        <td f="" rowspan="2" style="text-align: center; font-size: x-large; font-family:'Times New Roman'; color:orange; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; STOCK OUT&nbsp;&nbsp;&nbsp; </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style157">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            <td class="auto-style161"></td>
                        </tr>
                        <tr>
                            <td class="auto-style158">&nbsp;</td>
                            <td class="auto-style156">
                                <asp:GridView ID="gvInformation0" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDataSource3" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Height="56px" OnRowDataBound="gvInformation0_RowDataBound" OnSelectedIndexChanged="gvInformation_SelectedIndexChanged" ShowFooter="True" style="margin-left: 0px" Width="842px">
                                    <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                    <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                    <Columns>
                                         <asp:TemplateField HeaderText="Sno">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
                                        <asp:BoundField DataField="GivenQuantity" HeaderText="Given Quantity" SortExpression="GivenQuantity" >
                                         <ItemStyle HorizontalAlign="Center" />
                                         </asp:BoundField>
                                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" >
                                         <ItemStyle HorizontalAlign="Center" />
                                         </asp:BoundField>
                                        <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" >
                                         <ItemStyle HorizontalAlign="Center" />
                                         </asp:BoundField>
                                        <asp:BoundField DataField="dateOccur" HeaderText="date Occur" SortExpression="dateOccur" />
                                        <asp:BoundField DataField="StaffName" HeaderText="Staff Name" SortExpression="StaffName" />
                                        <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded" />
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [ProductName], [GivenQuantity], [price], [total], [dateOccur], [StaffName], [userAdded] FROM [ProductDistributionView] WHERE ([OperationDay] = @OperationDay) ORDER BY [dateOccur]">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style158">&nbsp;</td>
                            <td class="auto-style156">
                                <table class="auto-style122">
                                    <tr>
                                        <td class="auto-style157">&nbsp;</td>
                                        <td f="" rowspan="2" style="text-align: center; font-size: x-large; font-family:'Times New Roman'; color:orange; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CURRENT STOCK &nbsp;&nbsp;&nbsp; </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style157">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style158">&nbsp;</td>
                            <td class="auto-style156">
                                <asp:Panel ID="Panel4" runat="server" Width="841px">
                                    <table class="auto-style122">
                                        <tr>
                                            <td class="auto-style162">&nbsp;</td>
                                            <td class="auto-style164">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style162">&nbsp;</td>
                                            <td class="auto-style164">
                                                <asp:GridView ID="gvInformation1" runat="server" AutoGenerateColumns="False" CellPadding="8" DataKeyNames="idProduct" DataSourceID="SqlDataSource4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Height="56px" OnRowDataBound="gvInformation_RowDataBound" OnSelectedIndexChanged="gvInformation_SelectedIndexChanged" ShowFooter="True" style="margin-left: 0px" Width="480px">
                                                     <Columns>
            <asp:TemplateField>
                 <ItemTemplate>
                   <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("idProduct")%>' OnClick="lnk_OnClick">Select Client</asp:LinkButton>
                 </ItemTemplate>
            </asp:TemplateField>            
            </Columns>
                                                    <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                    <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                    <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Sno">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                                        <asp:BoundField DataField="idProduct" HeaderText="Product Code" ReadOnly="True" SortExpression="idProduct" >
                                                        <ItemStyle HorizontalAlign="Center" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
                                                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" >
                                                        <ItemStyle BackColor="Gray" BorderStyle="Solid" Font-Bold="True" ForeColor="Orange" HorizontalAlign="Center" />
                                                        </asp:BoundField>
                                                    </Columns>
                                                    <EditRowStyle BackColor="#999999" />
                                                    <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                </asp:GridView>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style162">&nbsp;</td>
                                            <td class="auto-style164">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style158">&nbsp;</td>
                            <td class="auto-style156">
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [ProductName], [quantity] FROM [ProductView]"></asp:SqlDataSource>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        </table>
   
    <div>
 
    
    </div>
        
    
    </asp:Content>





