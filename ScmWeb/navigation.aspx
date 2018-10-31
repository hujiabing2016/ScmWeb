<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="navigation.aspx.cs" Inherits="ScmWeb.navigation" %>
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
    .auto-style3 {
        width: 22px;
        height: 20px;
    }
        .auto-style4 {
            width: 5%;
            height: 6px;
        }
        .auto-style5 {
            width: 18px;
            height: 18px;
        }
        .auto-style6 {
            width: 18px;
            height: 16px;
        }
        .auto-style7 {
            width: 15%;
        }
        .auto-style8 {
            height: 21px;
        }
        .auto-style9 {
            height: 3px;
            width: 5%;
        }
        .auto-style10 {
            width: 5%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" runat="server"  contentplaceholderid="ContentPlaceHolder1" >
    <table width="100%">
    <tr>
        <td align="center" class="auto-style4" rowspan="2">
             </td>
        <td align="center" valign="middle" rowspan="3">
             <table id="table1">
            <tr>
                <td colspan="6" style="border-bottom:2px solid #000; border-bottom-color: #FF9900; border-bottom-width: thick;"align="center">
                    导航栏</td>
            </tr>
            <tr>
          <td style="width:10%;height:10px">
            <div >
                <img alt="TS" class="auto-style5" src="images/icon/TSicon.png" /><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="https://ts.hundsun.com/se/portal/SupportPortal.htm" 
              Font-Size ="Medium" Target="_blank" >TS</asp:HyperLink>
            </div>
          </td>
            <td style="width:10%;height:10px"> 
             <div >
                 <img alt="PKG" class="auto-style5" src="images/icon/PKGicon.png" /><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://scm.hundsun.com/pkgManage/#" 
              Font-Size ="Medium" Target="_blank"  >PKG</asp:HyperLink>
            </div></td>
                <td style="width:10%;height:10px">
             <div >
                 <img alt="协同" class="auto-style6" src="images/icon/协同icon.png" /><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://hs-cas.hundsun.com/cas/login?service=https%3A%2F%2Fsynergy.hundsun.com%2Flogin%2FLogin.jsp" 
             Font-Size ="Medium" Target="_blank"  >协同</asp:HyperLink>
            </div></td>
                <td style="width:10%;height:10px">
            <div >
                <img alt="青铜器" class="auto-style3" src="images/icon/青铜器icon.png" /><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="https://hs-cas.hundsun.com/cas/login?service=http%3A%2F%2Fpm.hundsun.com%3A80%2Fj_acegi_cas_security_check" 
              Font-Size ="Medium" Target="_blank"  >青铜器</asp:HyperLink>
            </div>
            </td>
                <td style="width:10%;height:10px">
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
                <td class="auto-style8">
                    </td>
                <td class="auto-style8">
                    </td>
                <td class="auto-style8">
                    </td>
                <td class="auto-style8">
                    </td>
                <td class="auto-style8">
                    </td>
                <td class="auto-style8">
                    </td>
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
        <td align="center" rowspan="2" class="auto-style7">
           
             <asp:Label ID="Label2" runat="server" Text="常用信息："></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text="信息部：9256"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="人力资源-1168"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text="物业保修-9793"></asp:Label>
                <br />
                &nbsp;<asp:Label ID="Label6" runat="server" Text="保安室-9119"></asp:Label>

        </td>
    </tr> 
    <tr>
        <td style="width:15%" align="center" valign="middle">
            <iframe id="I1" frameborder="0" height="80" marginheight="0" marginwidth="0" name="I1" scrolling="no" src="http://i.tianqi.com/index.php?c=code&amp;id=6" width="130"></iframe>
        </td>
    </tr> 
    <tr>
    <td align="center" class="auto-style9">
        </td>
    <td rowspan="3">
        <table id="table2">
            <tr>
                <td style="text-align: center; border-bottom:1px solid #000; border-bottom-width: thick; border-bottom-color: #FF9900;width:50%">
                    最新动态</td>
                <td style="text-align: center; border-bottom:1px solid #000; border-bottom-width: thick; border-bottom-color: #FF9900;width:50%">
                    我的任务</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    敬请期待</td>
                <td>
                     探索世界</td>
            </tr>
            <tr>
                <td>
                    敬请期待</td>
                <td>
                     迎接挑战</td>
            </tr>
            <tr>
                <td>
                    敬请期待</td>
                <td>
                    拥抱彼此</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        </td>
    <td rowspan="3" align="center">
        <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="https://home.hundsun.com/other/guide/Hundsun_guide.pdf" Target="_blank">新员工引导</asp:HyperLink>
        <br />
        </td>
    </tr>
    <tr>
    <td align="center" class="auto-style9">
        </td>
    </tr>
    <tr>
    <td align="center" class="auto-style10">
        
        </td>
    </tr>
    <tr>
    <td class="auto-style10"></td>
    <td></td>
    <td></td>
    </tr>

</table>


</asp:Content>




