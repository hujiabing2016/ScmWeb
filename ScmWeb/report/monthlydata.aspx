<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="monthlydata.aspx.cs" Inherits="ScmWeb.report.monthlydata" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="style1" width="100%">
            <tr>
                <td style="width:15%"></td>
                <td colspan="11" style="text-align: center;font-size:x-large">
                    2018年1月份各产品发包/进展情况一览表</td>
            </tr>
            <tr>
                <td></td>
                <td colspan="11">
                    <table cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td style="border-top:1px solid">产品简称：&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                &nbsp; 产品所属阶段：&nbsp;<asp:DropDownList ID="ddlType0" runat="server" Width="80px">
                                                            </asp:DropDownList>
                                &nbsp;&nbsp; 历史发放包：&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                &nbsp;&nbsp; 包类别：<asp:DropDownList ID="ddlPrio" runat="server" Width="80px">
                                    <asp:ListItem Value="0">--请选择--</asp:ListItem>
                                    <asp:ListItem>高</asp:ListItem>
                                    <asp:ListItem>中</asp:ListItem>
                                    <asp:ListItem>低</asp:ListItem>
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
                    <asp:GridView ID="GridViewmonthdata" runat="server" AutoGenerateColumns="False" width="100%"
                        CellPadding="4" GridLines="None" ShowHeaderWhenEmpty="True">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="packid" HeaderText="包编号" Visible="False" />
                            <asp:TemplateField HeaderText="产品简称">
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
                            <asp:TemplateField HeaderText="所属阶段">
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
                            <asp:TemplateField HeaderText="历史发放包">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtsubtask" runat="server" Text='<%# Bind("subTaskDes") %>' TextMode="MultiLine" Width="100%"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("subTaskDes") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="包类别">
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
                            <asp:TemplateField HeaderText="制作日期" >
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
                            <asp:TemplateField HeaderText="更新">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtname" runat="server" Text='<%# Bind("executor") %>' Width="100%"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("executor") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="5%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="修改单">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtspenttime" runat="server" Text='<%# Bind("spentTime") %>' Width="100%"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("spentTime") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="3%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="程序项">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtstarttime" runat="server" Text='<%# Bind("startTime") %>' Width="100%"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("startTime", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="7%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="测试通过日期">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtfinishtime" runat="server" Text='<%# Bind("finishTime") %>' Width="100%"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("finishTime", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="7%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="计划发放">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtfinishtimereal" runat="server" Text='<%# Bind("finishTimeReal") %>' Width="100%"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("finishTimeReal", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="7%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="实际发放">
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
                            <asp:TemplateField HeaderText="偏差">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtremark" runat="server" Text='<%# Bind("remarks") %>' TextMode="MultiLine" Width="100%"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("remarks") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="10%" />
                            </asp:TemplateField>  
                            <asp:TemplateField HeaderText="延期"></asp:TemplateField>
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
                    &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
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
