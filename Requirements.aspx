<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Reg.master" AutoEventWireup="true" CodeFile="Requirements.aspx.cs" Inherits="Requirements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #Calender1{
            width:200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="templates/home&sons/nekmit/layout/styles/layout.css" rel="stylesheet" />
    
<!-- JAVASCRIPTS -->
    <script src="templates/home&sons/nekmit/layout/scripts/jquery.backtotop.js"></script>
    <script src="templates/home&sons/nekmit/layout/scripts/jquery.min.js"></script>
    <script src="templates/home&sons/nekmit/layout/scripts/jquery.mobilemenu.js"></script>

    <center>

       <h3> Specify Your Requirements:</h3>
    <p>
        Select City:&nbsp;
        <asp:DropDownList ID="ddl_city" runat="server" DataTextField="CityName" DataValueField="CityId" ForeColor="#000066" OnSelectedIndexChanged="ddl_city_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
    </p>
    <p>
        Select Locality:
    <asp:DropDownList ID="ddl_locality" runat="server" DataTextField="AreaName" DataValueField="AreaId" ForeColor="#000066">
        </asp:DropDownList>
    </p>
    <p>
        Select Premises: <asp:DropDownList ID="ddl_premises" runat="server" DataSourceID="SqlDataSource3" DataTextField="Premise Type" DataValueField="Premise Type" ForeColor="#000066">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EndSemProjectConnectionString %>" SelectCommand="SELECT * FROM [tblPremiseType]"></asp:SqlDataSource>
    </p>
    <p>
        Number of Rooms:
    <asp:TextBox ID="txtNoRooms" runat="server" TextMode="Number" ForeColor="#000066"></asp:TextBox>

    </p>
    <p>
        Area [Sq.ft]:
        <asp:TextBox ID="txtbox_areasqft" runat="server" ForeColor="#000066"></asp:TextBox>
    </p>
        Choose Fragrance:
        <ul style="list-style:none">
   <li> <asp:RadioButton ID="rdbtn_aqua" runat="server" Text="Aqua" GroupName="fragrance" />
        <asp:RadioButton ID="rdbtn_jasmine" runat="server" Text="Jasmine" GroupName="fragrance" /> </li>
  <li>  <asp:RadioButton ID="rdbtn_lavender" runat="server"  Text="Lavender" GroupName="fragrance" />
        <asp:RadioButton ID="rdbtn_lemong" runat="server" Text="Lemongrass" GroupName="fragrance" /> </li>
        </ul>
 
    <p>
        Date: <asp:Calendar ID="Calendar1" runat="server" BackColor="#00CCFF" BorderColor="#CCFFFF" BorderStyle="Solid" BorderWidth="2px" ForeColor="#0066CC" Height="50px" Width="300px">
            <DayHeaderStyle BackColor="#0066CC" />
        </asp:Calendar>
    </p>
    <p>
        Time [If specific]: 
        <asp:TextBox ID="txtSpec" runat="server" ForeColor="#000066"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btn_submit" class="btn" runat="server" Text="Submit" OnClick="btn_submit_Click" />
    </p>
    <p>
        &nbsp;</p>
        </center>
</asp:Content>

