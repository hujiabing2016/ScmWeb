<%@ Page Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="TaskTable.aspx.cs" Inherits="jiaofu.TaskTable" %>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
    </style>
    </asp:Content>

<asp:Content ID="Content2" runat="server"  contentplaceholderid="ContentPlaceHolder1" >
        <table class="style1" width="100%">
            <tr>
                <td style="width:15%"></td>
                <td colspan="11" style="text-align: center;font-size:x-large">
                    <strong>2018组内任务跟踪表</strong></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="11">
                    <table cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td style="border-top:1px solid">周数：<asp:DropDownList ID="dropdlweek" runat="server" Width="80px">
                                </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp; 总任务：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp; 任务分类：<asp:DropDownList ID="DropDownList2" runat="server" Width="80px">
                                    <asp:ListItem>--请选择--</asp:ListItem>
                                    <asp:ListItem>开发、技术预研</asp:ListItem>
                                    <asp:ListItem>日常计划性任务</asp:ListItem>
                                    <asp:ListItem>问题解决</asp:ListItem>
                                    <asp:ListItem>流程制定</asp:ListItem>
                                    <asp:ListItem>业务推广</asp:ListItem>
                                                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp; 优先级：<asp:DropDownList ID="DropDownList3" runat="server" Width="80px">
                                    <asp:ListItem>--请选择--</asp:ListItem>
                                    <asp:ListItem>高</asp:ListItem>
                                    <asp:ListItem>中</asp:ListItem>
                                    <asp:ListItem>低</asp:ListItem>
                                                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp; 负责人：<asp:DropDownList ID="ddlname" runat="server" Width="80px">
                                                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;任务状态：<asp:DropDownList ID="DropDownList5" runat="server" Width="80px">
                                    <asp:ListItem>--请选择--</asp:ListItem>
                                    <asp:ListItem>未开始</asp:ListItem>
                                    <asp:ListItem>正在进行</asp:ListItem>
                                    <asp:ListItem>准时完成</asp:ListItem>
                                    <asp:ListItem>延迟完成</asp:ListItem>
                                    <asp:ListItem>废弃</asp:ListItem>
                                                            </asp:DropDownList>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td align="center"style="border-bottom:1px solid"" valign="middle">
                                <asp:Button ID="btnquery" runat="server" Text="查询" OnClick="btnquery_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Text="取消" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width:15%" valign="middle">&nbsp;&nbsp;
                    <asp:TreeView ID="TreeView1" runat="server" ImageSet="Simple">
                        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                        <Nodes>
                            <asp:TreeNode Text="报表" Value="报表">
                                <asp:TreeNode NavigateUrl="~/TaskTable.aspx" Text="任务跟踪表" Value="任务跟踪表"></asp:TreeNode>
                                <asp:TreeNode Text="月度数据统计" Value="月度数据统计"></asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td colspan="11">
                    <asp:GridView ID="GridViewtask" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField HeaderText="周数" DataField="weeks" />
                            <asp:BoundField HeaderText="总体任务描述" DataField="taskDes" />
                            <asp:BoundField HeaderText="子任务" DataField="subTaskDes" />
                            <asp:BoundField HeaderText="任务分类" DataField="type" />
                            <asp:BoundField HeaderText="任务优先级" DataField="priority" />
                            <asp:BoundField HeaderText="任务负责人" DataField="executor" />
                            <asp:BoundField HeaderText="任务完成预估耗时（H）" DataField="spentTime" />
                            <asp:BoundField HeaderText="任务开始时间" DataField="startTime" DataFormatString="{0:D}" />
                            <asp:BoundField HeaderText="任务预期结束时间" DataField="finishTime" DataFormatString="{0:D}" />
                            <asp:BoundField HeaderText="任务实际结束时间" DataField="finishTimeReal" DataFormatString="{0:D}" />
                            <asp:BoundField HeaderText="任务状态" DataField="state" />
                            <asp:BoundField HeaderText="备注" DataField="remarks" />
                            <asp:CommandField HeaderText="操作" ShowEditButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width:15%"></td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width:15%"></td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>

