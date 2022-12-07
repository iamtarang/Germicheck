<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_M1.master" AutoEventWireup="true" CodeFile="1_startup_page.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" class="hoc clear" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <article>
        <ul class="btmspace-15" style="list-style: none;">        
    <li> <asp:Button ID="Button1" class="btn" runat="server" href="#" OnClick="btn_redir_reg_Click" Text="Sign Up" /> &nbsp
    <asp:Button ID="Button2" class="btn inverse" runat="server" href="#" OnClick="btn_redir_login_Click" Text="Login" /></li>
        </ul>
    </article>
</asp:Content>

