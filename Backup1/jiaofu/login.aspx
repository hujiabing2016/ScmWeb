<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="jiaofu.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>经纪交付管理系统</title>
    <style type="text/css">
        #table1
        {
            width:100%;
            margin-top:200px;
            height: 158px;
        }
        #table2
        {
            width: 50%;
            height: 105px;
            
        }
        body
        {
            background-image:url("images/bg.jpg");
            background-repeat:inherit;
            background-size:cover;  
        }
        .style3
        {
            height: 14px;
            width: 41%;
            font-size: large;
        }
        #form1
        {
            height: 136px;
        }
        .style5
        {
            height: 14px;
            width: 59%;
        }
        .style6
        {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

    <table id="table1" cellpadding="2">
        <tr>
            <td>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                <table id="table2" cellpadding="1">
                    <tr>
                        <td align="right" class="style3">
                            用户名：</td>
                        <td align="left" class="style5">
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style4">
                            <span class="style6">密　码</span>：</td>
                        <td align="left" >
                            <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btnlogin" runat="server" Text="登录" Height="21px" Width="74px" 
                                onclick="btnlogin_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    </form>
</body>
</html>
