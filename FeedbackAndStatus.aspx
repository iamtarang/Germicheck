

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Reg.master" AutoEventWireup="true" CodeFile="FeedbackAndStatus.aspx.cs" Inherits="FeedbackAndStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
   <center><h2>Feedback Page</h2></center>
    <center>
  <p>
        Suggestions or Feedback:
      <asp:TextBox ID="txtbox_sug" runat="server" class="btmspace-15" type="text" Width="200px" Height="80px" TextMode="MultiLine" BorderColor="White" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
    </p>
        <p style ="font-size: 20px">
        Reach to Us:
        </p>
        <table style="width:20%; color:floralwhite; border:0px solid; text-align:center; vertical-align:middle">
        
            <tr style="background-color: #026B8A; border:0px solid">
                <td style="background-color: #026B8A; border:0px solid; align-content:center; vertical-align:middle">
            Facebook
        </td>
                <td style="background-color: #026B8A; border:0px solid">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/icons8-facebook-50.png" />
        </td>
                    </tr>
            <tr style="background-color: #026B8A; border:0px solid">
                <td style="background-color: #026B8A; border:0px solid; vertical-align:middle">
                       Twitter
        </td>
                <td style="background-color: #026B8A; border:0px solid">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/icons8-twitter-50.png" />
        </td>
                    </tr>
             <tr style="background-color: #026B8A; border:0px solid">
                <td style="background-color: #026B8A; border:0px solid; align-content:center; vertical-align:middle">
                        Instagram
        </td>
                <td style="background-color: #026B8A; border:0px solid">
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/icons8-instagram-50.png" />
        </td>
                    </tr>
            <tr style="background-color: #026B8A; border:0px solid">
                <td style="background-color: #026B8A; border:0px solid; vertical-align:middle">
                                        LinkedIn
        </td>
                <td style="background-color: #026B8A; border:0px solid">

            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/icons8-linkedin-50.png" />
        </td>
                    </tr>
            </table>
        </center>
 
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="#">www.germicheck.com</a></p>
    <p class="fl_right">Project By Arijeet, Mrunmayi and Tarang
    </p>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
</asp:Content>


