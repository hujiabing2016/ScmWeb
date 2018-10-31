<%@ Page Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="TaskTable.aspx.cs" Inherits="ScmWeb.report.TaskTable" %>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .auto-style2 {
            height: 25px;
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
                            &nbsp;&nbsp;&nbsp; 总任务：<asp:TextBox ID="txtTasks" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp; 任务分类：<asp:DropDownList ID="ddlType" runat="server" Width="80px">
                                                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp; 优先级：<asp:DropDownList ID="ddlPrio" runat="server" Width="80px">
                                    <asp:ListItem Value="0">--请选择--</asp:ListItem>
                                    <asp:ListItem>高</asp:ListItem>
                                    <asp:ListItem>中</asp:ListItem>
                                    <asp:ListItem>低</asp:ListItem>
                                                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp; 负责人：<asp:DropDownList ID="ddlname" runat="server" Width="80px">
                                                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;任务状态：<asp:DropDownList ID="ddlStatus" runat="server" Width="80px">
                                    <asp:ListItem Value="0">--请选择--</asp:ListItem>
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
                            <td align="center"style="border-bottom:1px solid"" valign="middle" >
                                <asp:Button ID="btnquery" runat="server" Text="查询" OnClick="btnquery_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Text="取消" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width:15%" valign="top">&nbsp;&nbsp;
                    <asp:TreeView ID="TreeView1" runat="server" ImageSet="Simple">
                        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                        <Nodes>
                            <asp:TreeNode Text="报表" Value="报表">
                                <asp:TreeNode NavigateUrl="~/report/TaskTable.aspx" Text="任务跟踪表" Value="任务跟踪表"></asp:TreeNode>
                                <asp:TreeNode Text="月度数据统计" Value="月度数据统计" NavigateUrl="~/report/monthlydata.aspx"></asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td colspan="11">
                    <asp:GridView ID="GridViewtask" runat="server" AutoGenerateColumns="False" width="100%"
                        CellPadding="4" GridLines="None" OnRowCancelingEdit="GridViewtask_RowCancelingEdit" OnRowDataBound="GridViewtask_RowDataBound" OnRowEditing="GridViewtask_RowEditing" OnRowUpdating="GridViewtask_RowUpdating" ShowHeaderWhenEmpty="True">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="taskid" HeaderText="任务编号" Visible="False" />
                            <asp:TemplateField HeaderText="周数">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtweeks" runat="server" Text='<%# Bind("weeks") %>' Width="100%"></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtweekfoot" runat="server" Width="20px"></asp:TextBox>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("weeks") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="3%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="总体任务描述">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTaskDes" runat="server" Text='<%# Bind("taskDes") %>' Width="100%" TextMode="MultiLine"></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="taskdesfoot" runat="server" TextMode="MultiLine" Width="150px"></asp:TextBox>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("taskDes") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="15%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="子任务">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtsubtask" runat="server" Text='<%# Bind("subTaskDes") %>' TextMode="MultiLine" Width="100%"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("subTaskDes") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="任务分类">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddltype" runat="server" Width="100%">
                                        <asp:ListItem>开发、技术预研</asp:ListItem>
                                        <asp:ListItem>日常计划性任务</asp:ListItem>
                                        <asp:ListItem>问题解决</asp:ListItem>
                                        <asp:ListItem>流程制定</asp:ListItem>
                                        <asp:ListItem>业务推广</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="12%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="任务优先级" >
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddlpriority" runat="server" Width="100%">
                                        <asp:ListItem>高</asp:ListItem>
                                        <asp:ListItem>中</asp:ListItem>
                                        <asp:ListItem>低</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("priority") %>' Width="100%"></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="5%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="责任人">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtname" runat="server" Text='<%# Bind("executor") %>' Width="100%"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("executor") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="5%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="耗时（H）">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtspenttime" runat="server" Text='<%# Bind("spentTime") %>' Width="100%"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("spentTime") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="3%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="任务开始时间">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtstarttime" runat="server" Text='<%# Bind("startTime") %>' Width="100%"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("startTime", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="7%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="预期结束时间">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtfinishtime" runat="server" Text='<%# Bind("finishTime") %>' Width="100%"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("finishTime", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="7%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="实际结束时间">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtfinishtimereal" runat="server" Text='<%# Bind("finishTimeReal") %>' Width="100%"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("finishTimeReal", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="7%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="任务状态">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddlstatus" runat="server" Width="100%">
                                        <asp:ListItem>未开始</asp:ListItem>
                                        <asp:ListItem>正在进行</asp:ListItem>
                                        <asp:ListItem>准时完成</asp:ListItem>
                                        <asp:ListItem>延迟完成</asp:ListItem>
                                        <asp:ListItem>废弃</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("state") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="9%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="备注">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtremark" runat="server" Text='<%# Bind("remarks") %>' TextMode="MultiLine" Width="100%"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("remarks") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="10%" />
                            </asp:TemplateField>  
                            <asp:CommandField HeaderText="操作" ShowEditButton="True" >
                            </asp:CommandField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="Silver" Font-Bold="True" ForeColor="White" />
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
                    <a href="javascript:showModalDialog('taskdetails.aspx');window.location.href='TaskTable.aspx' ">新增任务</a>
                </td>
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

