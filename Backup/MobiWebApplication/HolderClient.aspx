﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HolderClient.aspx.cs" Inherits="MobiWebApplication.HolderClient" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
        AutoDataBind="True" Height="1055px" ReportSourceID="CrystalReportSource1" 
        Width="920px" />
    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
        <Report FileName="ClientCredits.rpt">
        </Report>
    </CR:CrystalReportSource>
    <div>
    
    </div>
    </form>
</body>
</html>
