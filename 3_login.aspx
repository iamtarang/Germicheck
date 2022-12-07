<%@ Page Title="" Language="C#" MasterPageFile="~/TMasterPage.master" AutoEventWireup="true" CodeFile="3_login.aspx.cs" Inherits="_3_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="templates/home&sons/nekmit/layout/styles/layout.css" rel="stylesheet" />
    
<!-- JAVASCRIPTS -->
<script src="templates/home&sons/nekmit/layout/scripts/jquery.min.js"></script>
<script src="templates/home&sons/nekmit/layout/scripts/jquery.backtotop.js"></script>
<script src="templates/home&sons/nekmit/layout/scripts/jquery.mobilemenu.js"></script>
    <center>
        <p>
        Name:
        <asp:TextBox ID="txtbox_name" runat="server" ForeColor="#000066"></asp:TextBox>
    </p>
    <p>
        Username:
        <asp:TextBox ID="txtbox_username" runat="server" ForeColor="#000066"></asp:TextBox>
    </p>
    <p>
        Enter Password:<asp:TextBox ID="txtbox_password" runat="server" TextMode="Password" ForeColor="#000066"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btn_login" class="btn" runat="server" Text="Login" OnClick="btn_login_Click" />
    &nbsp;</p>
        <br />
        <br />
    <p>
        <asp:Label ID="verification" runat="server" Text="Admin Login" Font-Size="Large" OnAuthenticate= "ValidateUser"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btn_adminlogin" runat="server" class="btn inverse" Text="Go To Admin Login" OnClick="btn_adminlogin_Click" />
    </p>
        </center>
</asp:Content>

