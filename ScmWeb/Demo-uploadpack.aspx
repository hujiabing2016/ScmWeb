<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo-uploadpack.aspx.cs" Inherits="ScmWeb.Demo_uploadpack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <iframe src="http://tianqi.5ikfc.com:90/plugin-code/?style=1&dy=3" allowTransparency="true" frameborder="0" scrolling="no" width="680" height="50" id="weather_frame"></iframe>
        </div>
    </form>
</body>
</html>
