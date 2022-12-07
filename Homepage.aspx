<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_home.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
                <asp:Label ID="lblname" runat="server" Text="Hey there "></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <asp:Label ID="Label1" runat="server" ></asp:Label>
    <asp:Button ID="Button1" class="btn inverse" runat="server" OnClick="Button1_Click" Text="Book An Appointment!" />
</asp:Content>

