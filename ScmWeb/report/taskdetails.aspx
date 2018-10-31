<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="taskdetails.aspx.cs" Inherits="ScmWeb.taskdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>新增任务</title>
     <script src="../js/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
    <base target="_self" />
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td style="text-align:right">周数：</td>
                    <td>
                        <asp:TextBox ID="txtweeks" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtweeks"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">总体任务描述:</td>
                    <td>
                        <asp:TextBox ID="txttaskdes" runat="server" Height="51px" TextMode="MultiLine" Width="199px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txttaskdes"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">子任务</td>
                    <td>
                        <asp:TextBox ID="txtsubtask" runat="server" Height="51px" TextMode="MultiLine" Width="199px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">任务分类</td>
                    <td>
                        <asp:DropDownList ID="ddltype" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddltype" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">任务优先级</td>
                    <td>
                        <asp:DropDownList ID="ddlpriority" runat="server">
                            <asp:ListItem>高</asp:ListItem>
                            <asp:ListItem>中</asp:ListItem>
                            <asp:ListItem>低</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlpriority" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">负责人</td>
                    <td>
                        <asp:DropDownList ID="ddlexecutor" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlexecutor" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">预估耗时(H)</td>
                    <td>
                        <asp:TextBox ID="txtspentTime" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">任务开始时间</td>
                    <td>
                        <asp:TextBox ID="txtstarttime" runat="server" onclick="WdatePicker()"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtstarttime" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">预期结束时间</td>
                    <td>
                        <asp:TextBox ID="txtfinishtime" runat="server" onclick="WdatePicker()"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtfinishtime" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">实际结束时间</td>
                    <td>
                        <asp:TextBox ID="txtfinishtimereal" runat="server" onclick="WdatePicker()"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">任务状态</td>
                    <td>
                        <asp:DropDownList ID="ddlstatus" runat="server">
                            <asp:ListItem>未开始</asp:ListItem>
                            <asp:ListItem>正在进行</asp:ListItem>
                            <asp:ListItem>准时完成</asp:ListItem>
                            <asp:ListItem>延迟完成</asp:ListItem>
                            <asp:ListItem>废弃</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlstatus" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">备注</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtremark" runat="server" Height="51px" TextMode="MultiLine" Width="199px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Button ID="btncommit" runat="server" Text="提交" OnClick="btncommit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btncancel" runat="server" Text="取消" CausesValidation="False" OnClick="btncancel_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
