<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="navigation.aspx.cs" Inherits="jiaofu.navigation" %>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
<style>
#table1
{
    width:100%; 
    background-color:White;
    }
#table2
{
    width:100%; 
    background-color:White;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server"  contentplaceholderid="ContentPlaceHolder1" >
    <table width="100%">
    <tr>
        <td style="width:10%">
            &nbsp;</td>
        <td align="center" valign="middle">
             <table id="table1">
            <tr>
                <td colspan="6" style="border-bottom:1px solid #000; "align="center">
                    导航栏</td>
            </tr>
            <tr>
          <td style="width:13.3%;;height:10px">
            <div >
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Front.aspx" 
            Font-Bold ="True"  Font-Size ="Large"  >TS</asp:HyperLink>
            </div>
          </td>
            <td style="width:13.3%;height:10px"> 
             <div >
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Front.aspx" 
            Font-Bold ="True"  Font-Size ="Large"  >PKG</asp:HyperLink>
            </div></td>
                <td style="width:13.3%;;height:10px">
             <div >
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Front.aspx" 
            Font-Bold ="True"  Font-Size ="Large"  >协同</asp:HyperLink>
            </div></td>
                <td style="width:13.3%;;height:10px">
            <div >
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="Front.aspx" 
            Font-Bold ="True"  Font-Size ="Large"  >青铜器</asp:HyperLink>
            </div>
            </td>
                <td style="width:13.3%;;height:10px">
            <div >
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="Front.aspx" 
            Font-Bold ="True"  Font-Size ="Large"  >Jenkins</asp:HyperLink>
            </div></td>
                <td style="width:13.3%;height:10px">
             <div >
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="Front.aspx" 
            Font-Bold ="True"  Font-Size ="Large"  >恒生社区</asp:HyperLink>
            </div></td>
            </tr>
            <tr>
                <td style="width:13.3%;height:10px">
              <div >
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="Front.aspx" 
            Font-Bold ="True"  Font-Size ="Large"  >E-learning</asp:HyperLink>
            </div></td>
                <td>
               <div >
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="Front.aspx" 
            Font-Bold ="True"  Font-Size ="Large"  >堡垒机</asp:HyperLink>
            </div></td>
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
        </td>
        <td style="width:10%" align="left">
            常用信息:  
            <ul type="circle" >  
                <li>信息部-xxxx</li>  
                <li>人力资源-xxxx</li>  
                <li>物业保修-xxxx</li> 
                <li>保安室-xxxx</li>  
            </ul>   
             </td>
    </tr> 
    <tr>
    <td></td>
    <td>
        <table id="table2">
            <tr>
                <td style="text-align: center; border-bottom:1px solid #000;">
                    最新动态</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        </td>
    <td>
        <br />
            <asp:LinkButton ID="LinkButton1" runat="server">新员工引导</asp:LinkButton>
        </td>
    </tr>
    <tr>
    <td></td>
    <td></td>
    <td></td>
    </tr>

</table>


</asp:Content>




