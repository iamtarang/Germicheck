<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_M2.master" AutoEventWireup="true" CodeFile="AdminView.aspx.cs" Inherits="AdminView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        
        <asp:Label ID="lbl_search" runat="server" Text="Search by Name:"></asp:Label>
        <asp:TextBox ID="txtbox_srchname" runat="server" AutoPostBack="True" OnTextChanged="txtbox_srchname_TextChanged" ForeColor="#000066"></asp:TextBox>
        <br />
    <asp:GridView ID="GridView1" runat="server" ForeColor="#333333" Width="800px" CellPadding="4" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserId" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EndSemProjectConnectionString %>" DeleteCommand="DELETE FROM [tblUser] WHERE [UserId] = @original_UserId AND [Name] = @original_Name AND [Username] = @original_Username AND [Email] = @original_Email AND [Phone] = @original_Phone AND [Password] = @original_Password" InsertCommand="INSERT INTO [tblUser] ([Name], [Username], [Email], [Phone], [Password]) VALUES (@Name, @Username, @Email, @Phone, @Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [UserId], [Name], [Username], [Email], [Phone], [Password] FROM [tblUser]" UpdateCommand="UPDATE [tblUser] SET [Name] = @Name, [Username] = @Username, [Email] = @Email, [Phone] = @Phone, [Password] = @Password WHERE [UserId] = @original_UserId AND [Name] = @original_Name AND [Username] = @original_Username AND [Email] = @original_Email AND [Phone] = @original_Phone AND [Password] = @original_Password">
            <DeleteParameters>
                <asp:Parameter Name="original_UserId" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Phone" Type="Int64" />
                <asp:Parameter Name="original_Password" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Phone" Type="Int64" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Phone" Type="Int64" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="original_UserId" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Phone" Type="Int64" />
                <asp:Parameter Name="original_Password" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" Width="800px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AllowSorting="True">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EndSemProjectConnectionString %>" DeleteCommand="DELETE FROM [tblAppointment] WHERE [AppointmentId] = @original_AppointmentId AND [SelectedCity] = @original_SelectedCity AND [SelectedArea] = @original_SelectedArea AND [PremiseType] = @original_PremiseType AND (([NoOfRooms] = @original_NoOfRooms) OR ([NoOfRooms] IS NULL AND @original_NoOfRooms IS NULL)) AND (([SqrFt] = @original_SqrFt) OR ([SqrFt] IS NULL AND @original_SqrFt IS NULL)) AND [DateTime] = @original_DateTime AND [Scent] = @original_Scent AND (([SpecReq] = @original_SpecReq) OR ([SpecReq] IS NULL AND @original_SpecReq IS NULL))" InsertCommand="INSERT INTO [tblAppointment] ([SelectedCity], [SelectedArea], [PremiseType], [NoOfRooms], [SqrFt], [DateTime], [Scent], [SpecReq]) VALUES (@SelectedCity, @SelectedArea, @PremiseType, @NoOfRooms, @SqrFt, @DateTime, @Scent, @SpecReq)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblAppointment]" UpdateCommand="UPDATE [tblAppointment] SET [SelectedCity] = @SelectedCity, [SelectedArea] = @SelectedArea, [PremiseType] = @PremiseType, [NoOfRooms] = @NoOfRooms, [SqrFt] = @SqrFt, [DateTime] = @DateTime, [Scent] = @Scent, [SpecReq] = @SpecReq WHERE [AppointmentId] = @original_AppointmentId AND [SelectedCity] = @original_SelectedCity AND [SelectedArea] = @original_SelectedArea AND [PremiseType] = @original_PremiseType AND (([NoOfRooms] = @original_NoOfRooms) OR ([NoOfRooms] IS NULL AND @original_NoOfRooms IS NULL)) AND (([SqrFt] = @original_SqrFt) OR ([SqrFt] IS NULL AND @original_SqrFt IS NULL)) AND [DateTime] = @original_DateTime AND [Scent] = @original_Scent AND (([SpecReq] = @original_SpecReq) OR ([SpecReq] IS NULL AND @original_SpecReq IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_AppointmentId" Type="Int32" />
                <asp:Parameter Name="original_SelectedCity" Type="String" />
                <asp:Parameter Name="original_SelectedArea" Type="String" />
                <asp:Parameter Name="original_PremiseType" Type="String" />
                <asp:Parameter Name="original_NoOfRooms" Type="String" />
                <asp:Parameter Name="original_SqrFt" Type="String" />
                <asp:Parameter Name="original_DateTime" Type="DateTime" />
                <asp:Parameter Name="original_Scent" Type="String" />
                <asp:Parameter Name="original_SpecReq" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SelectedCity" Type="String" />
                <asp:Parameter Name="SelectedArea" Type="String" />
                <asp:Parameter Name="PremiseType" Type="String" />
                <asp:Parameter Name="NoOfRooms" Type="String" />
                <asp:Parameter Name="SqrFt" Type="String" />
                <asp:Parameter Name="DateTime" Type="DateTime" />
                <asp:Parameter Name="Scent" Type="String" />
                <asp:Parameter Name="SpecReq" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SelectedCity" Type="String" />
                <asp:Parameter Name="SelectedArea" Type="String" />
                <asp:Parameter Name="PremiseType" Type="String" />
                <asp:Parameter Name="NoOfRooms" Type="String" />
                <asp:Parameter Name="SqrFt" Type="String" />
                <asp:Parameter Name="DateTime" Type="DateTime" />
                <asp:Parameter Name="Scent" Type="String" />
                <asp:Parameter Name="SpecReq" Type="String" />
                <asp:Parameter Name="original_AppointmentId" Type="Int32" />
                <asp:Parameter Name="original_SelectedCity" Type="String" />
                <asp:Parameter Name="original_SelectedArea" Type="String" />
                <asp:Parameter Name="original_PremiseType" Type="String" />
                <asp:Parameter Name="original_NoOfRooms" Type="String" />
                <asp:Parameter Name="original_SqrFt" Type="String" />
                <asp:Parameter Name="original_DateTime" Type="DateTime" />
                <asp:Parameter Name="original_Scent" Type="String" />
                <asp:Parameter Name="original_SpecReq" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        </center>

</asp:Content>

