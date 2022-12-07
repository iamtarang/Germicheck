<%@ Page Title="" Language="C#" MasterPageFile="~/TMasterPage.master" AutoEventWireup="true" CodeFile="2_registration.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
<title>Germicheck</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="templates/home&sons/nekmit/layout/styles/layout.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<!-- JAVASCRIPTS -->
    <script src="templates/home&sons/nekmit/layout/scripts/jquery.backtotop.js"></script>
    <script src="templates/home&sons/nekmit/layout/scripts/jquery.min.js"></script>
    <script src="templates/home&sons/nekmit/layout/scripts/jquery.mobilemenu.js"></script>
    
    <div class="container">
    <div>
    <div class="form-group">
        <label for="txtbox_fullname">Full Name:</label>
        <asp:TextBox ID="txtbox_fullname" CssClass="form-control" runat="server" Width="166px" ForeColor="#000066"></asp:TextBox>
        <asp:RequiredFieldValidator ID="fullname_validation" runat="server" ControlToValidate="txtbox_fullname" ErrorMessage="Please Enter Full Name" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div>
        *UserName:
        <asp:TextBox ID="txtbox_username" runat="server" ForeColor="#000066"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="username_validation" runat="server" ErrorMessage="Username can only have letters, numbers and '.' or  '_' symbol" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" ForeColor="Red" ValidationExpression="^([A-Za-z0-9_](?:(?:[A-Za-z0-9_]|(?:\.(?!\.))){0,28}(?:[A-Za-z0-9_]))?)$" ControlToValidate="txtbox_username"></asp:RegularExpressionValidator>
    </div>
    <div>
        *Email:
        <asp:TextBox ID="txtbox_email" runat="server" TextMode="Email" ForeColor="#000066"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="email_validation" runat="server" ControlToValidate="txtbox_email" ErrorMessage="Invalid Email Address" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </div>
    <div>
        *Phone Number:
        <asp:TextBox ID="txtbox_phoneno" runat="server" TextMode="Phone" ForeColor="#000066"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="phno_validation" runat="server" ControlToValidate="txtbox_phoneno" ErrorMessage="Enter a correct phone number" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" ForeColor="Red" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[6789]\d{9}$"></asp:RegularExpressionValidator>
    </div>
        <div>
        Add New Password:&nbsp;
        <asp:TextBox ID="txtbox_newpwd" runat="server" TextMode="Password" ForeColor="#000066"></asp:TextBox>
    </div>
    <div>
        Confirm Password:&nbsp;
        <asp:TextBox ID="txtbox_confirmpwd" runat="server" TextMode="Password" ForeColor="#000066"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="cpass_validator" runat="server" ControlToCompare="txtbox_newpwd" ControlToValidate="txtbox_confirmpwd" ErrorMessage="Password and Confirm Password does not match." Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" ForeColor="Red"></asp:CompareValidator>
    </div>
    <div>
        <asp:Button ID="btn_register" class="btn" runat="server" Text="Submit" OnClick="btn_register_Click" />
    </div>

    <div>
        &nbsp;</div>
    <div>
        &nbsp;</div>
    <div>
    
    </div>
      <div>
        &nbsp;</div>
      <div>
        *mandatory fields</div>
<div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EndSemProjectConnectionString %>" SelectCommand="SELECT [UserId], [Name], [Username], [Email], [Phone] FROM [tblUser]"></asp:SqlDataSource>
    </div>
                                   </div>
        </div>
    <a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>

</asp:Content>

