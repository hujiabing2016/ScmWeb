<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="jiaofu.changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table style="width:100%; text-align:center; border:0;"><tr>
            <td style="width:15%"></td>
             <td style="width:70%;height:35px;text-align:center; font-size: x-large;background-color:white;border:1px solid #000;"><b>
            <br />
            <br />
            修改密码<br />
            <br />
            &nbsp;
            </b></td>
            <td style="width:15%"></td>
                                                                 </tr>
   </table>
    <table style="width:100%; text-align:center; border:0">
        <tr>
            <td style="width:15%"></td>
             <td style="width:70%;height:35px; font-size: x-large;background-color:white;border:1px solid #000;" align="center" valign="top">
                 <table cellpadding="0" cellspacing="0" class="auto-style1">
                     <tr>
                        <td style="text-align:center; height: 21px;border-bottom:1px solid">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Text="原密码：" style="font-size: small"></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server" MaxLength="16" TextMode="Password"></asp:TextBox>
                        </td>
                     </tr>
                     <tr>
                         <td style="text-align: center; height: 21px;border-bottom:1px solid">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label3" runat="server" Text="新密码：" style="font-size: small"></asp:Label>
                            <asp:TextBox ID="TextBox3" runat="server" MaxLength="16" TextMode="Password"></asp:TextBox>
                        </td>
                     </tr>
                     <tr>
                          <td style="text-align: center;height: 21px;border-bottom:1px solid">
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="确认密码：" style="font-size: small"></asp:Label> <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            <span style="color: #ff0000">&nbsp; <asp:CompareValidator ID="CompareValidator2" 
                runat="server" ControlToCompare="TextBox3"
                ControlToValidate="TextBox1" ErrorMessage="确认密码与密码不一致！" 
                ValidationGroup="pwd" style="font-size: small"></asp:CompareValidator></span></td>
                     </tr>
                     <tr>
                          <td style="height: 21px;" align="center" valign="middle">
                                <asp:Button ID="Button1"  runat="server"  Text="确定" OnClick="Button1_Click" 
                                    style="text-align: right" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Text="重置" onclick="Button2_Click" />
                            &nbsp;&nbsp;&nbsp;
                        </td>
                     </tr>
                     <tr>
                         <td></td>
                     </tr>
                 </table>
             </td>
            <td style="width:15%"></td>
                                                                 </tr>
   </table>

</asp:Content>
