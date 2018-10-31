<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="navigation.aspx.cs" Inherits="jiaofu.navigation" %>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
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
    .auto-style1 {
        width: 18px;
        height: 18px;
    }
    .auto-style2 {
        width: 18px;
        height: 16px;
    }
    .auto-style3 {
        width: 22px;
        height: 20px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server"  contentplaceholderid="ContentPlaceHolder1" >
    <table width="100%">
    <tr>
        <td style="width:15%">
            常用信息:  
                <br />
                信息部-xxxx
                <br />
                人力资源-xxxx 
                <br />
                物业保修-xxxx 
                <br />
                保安室-xxxx 
             </td>
        <td align="center" valign="middle">
             <table id="table1">
            <tr>
                <td colspan="6" style="border-bottom:1px solid #000; "align="center">
                    导航栏</td>
            </tr>
            <tr>
          <td style="width:10%;height:10px">
            <div >
                <img class="auto-style1" src="images/icon/TSicon.png" /><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="https://ts.hundsun.com/se/portal/SupportPortal.htm" 
              Font-Size ="Medium" Target="_blank" >TS</asp:HyperLink>
            </div>
          </td>
            <td style="width:10%;height:10px"> 
             <div >
                 <img alt="PKG" class="auto-style1" src="images/icon/PKGicon.png" /><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://scm.hundsun.com/pkgManage/#" 
              Font-Size ="Medium" Target="_blank"  >PKG</asp:HyperLink>
            </div></td>
                <td style="width:10%;;height:10px">
             <div >
                 <img alt="协同" class="auto-style2" src="images/icon/协同icon.png" /><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://hs-cas.hundsun.com/cas/login?service=https%3A%2F%2Fsynergy.hundsun.com%2Flogin%2FLogin.jsp" 
             Font-Size ="Medium" Target="_blank"  >协同</asp:HyperLink>
            </div></td>
                <td style="width:10%;;height:10px">
            <div >
                <img alt="青铜器" class="auto-style3" src="images/icon/青铜器icon.png" /><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="https://hs-cas.hundsun.com/cas/login?service=http%3A%2F%2Fpm.hundsun.com%3A80%2Fj_acegi_cas_security_check" 
              Font-Size ="Medium" Target="_blank"  >青铜器</asp:HyperLink>
            </div>
            </td>
                <td style="width:10%;;height:10px">
            <div >
                <img alt="Jenkins" class="auto-style3" src="images/icon/Jinkensicon.png" /><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="https://hs-cas.hundsun.com/cas/login?service=http%3A%2F%2Fci07.hundsun.com%2Fjenkins%2FsecurityRealm%2FfinishLogin" 
              Font-Size ="Medium" Target="_blank"  >Jenkins</asp:HyperLink>
            </div></td>
                <td style="width:10%;height:10px">
             <div >
                 <img alt="恒生社区" class="auto-style3" src="images/icon/恒生社区icon.png" /><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="https://home.hundsun.com/simplehome.aspx" 
              Font-Size ="Medium" Target="_blank"  >恒生社区</asp:HyperLink>
            </div></td>
            </tr>
            <tr>
                <td style="width:10%;height:10px">
              <div >
                  <img alt="E-learning" class="auto-style3" src="images/icon/Elearningicon.png" /><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="https://hs-cas.hundsun.com/cas/login?service=http%3A%2F%2Flearning.hundsun.com%2Flearn%2Fj_spring_cas_security_check" 
              Font-Size ="Medium" Target="_blank"  >E-learning</asp:HyperLink>
            </div></td>
                <td>
               <div >
                   <img alt="堡垒机" class="auto-style3" src="images/icon/堡垒机icon.png" /><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="https://192.168.57.100/index.php/Public/index/stra_name/ad_local" 
              Font-Size ="Medium" Target="_blank"  >堡垒机</asp:HyperLink>
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
        <td style="width:15%" align="left">
            &nbsp;</td>
    </tr> 
    <tr>
    <td>
        <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="https://home.hundsun.com/other/guide/Hundsun_guide.pdf" Target="_blank">新员工引导</asp:HyperLink>
        </td>
    <td>
        <table id="table2">
            <tr>
                <td style="text-align: center; border-bottom:1px solid #000;">
                    最新动态</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    敬请期待</td>
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
        </td>
    </tr>
    <tr>
    <td></td>
    <td></td>
    <td></td>
    </tr>

</table>


</asp:Content>




