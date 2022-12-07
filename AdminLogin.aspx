<%@ Page Title="" Language="C#" MasterPageFile="~/TMasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="templates/home&sons/nekmit/layout/styles/layout.css" rel="stylesheet" />
    
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
    <center>
    <p>
        Admin UserID:<asp:TextBox ID="TextBox1" runat="server" ForeColor="#000066"></asp:TextBox>
    </p>
    <p>
        Password:
        <asp:TextBox ID="TextBox2" runat="server" ForeColor="#000066" TextMode="Password"></asp:TextBox>
    </p>
         <p>
        <asp:Button ID="btn_adlogin" class="btn" runat="server" Text="Login" OnClick="btn_adlogin_Click" />
    &nbsp;</p>
        </center>
</asp:Content>

