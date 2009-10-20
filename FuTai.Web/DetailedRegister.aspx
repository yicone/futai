<%@ Page Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true"
    CodeBehind="DetailedRegister.aspx.cs" Inherits="FuTai.Web.DetailedRegister" Title="新用户注册" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">   
    <link type="text/css" rel="stylesheet" href="/style/inner.css" />
    <link type="text/css" rel="stylesheet" href="/style/custom.css" />
    <script type="text/javascript">
        $(document).ready(function(){
            $
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <div class="custom_main1">
        <div class="hr" ></div>
        <div style="margin: 0pt auto; width: 600px;">
            <div class="box1 cartBox">
                <h2>
                    <span>新用户注册：</span></h2>
                <div class="cont">
                    <div class="clearfix" ></div>
                    <table width="400" cellspacing="0" cellpadding="5" border="0" align="center">
                        <tbody>
                            <tr>
                                <td width="134" align="right">
                                    会员网络用户名：
                                </td>
                                <td width="245">
                                    <label>
                                        <input type="text" id="textfield5" name="textfield5" />
                                        <br />
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    用户名密码：<br />
                                </td>
                                <td>
                                    <input type="text" id="textfield6" name="textfield7" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    密码找回问题：<br />
                                </td>
                                <td>
                                    <input type="text" id="textfield7" name="textfield8" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    生日：<br />
                                </td>
                                <td>
                                    <input type="text" id="textfield8" name="textfield9" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    性别：<br />
                                </td>
                                <td>
                                    <input type="text" id="textfield10" name="textfield10" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    真实姓名：<br />
                                </td>
                                <td>
                                    <input type="text" id="textfield11" name="textfield11" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    呢称：<br />
                                </td>
                                <td>
                                    <input type="text" id="textfield12" name="textfield12" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    会员电子邮箱：<br />
                                </td>
                                <td>
                                    <input type="text" id="textfield13" name="textfield13" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    会员联系电话：
                                </td>
                                <td>
                                    <input type="text" id="textfield14" name="textfield14" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                </td>
                                <td>
                                    <input type="submit" value=" 注 册  " class="btn1Style" id="button4" name="button4" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="clearfix" ></div>
        <div class="inner_bottomcont">
            <h4 class="cartBtnbox">
                福泰的企业精神——创新！分享！快乐！</h4>
            <div class="inner_hr" ></div>
            <table width="100%" cellspacing="0" cellpadding="0" border="0" class="cartTable2">
                <tbody>
                    <tr>
                        <td width="25%" valign="top">
                            <p>
                                1. 更低价格</p>
                            <p>
                            </p>
                            <p>
                                同类产品仅是传统珠宝店的3-7折，<br />
                                其他网站的7-9折
                            </p>
                        </td>
                        <td width="25%" valign="top">
                            <p>
                                2. 更多选择</p>
                            <p>
                            </p>
                            <p>
                                数千款欧美时尚款式，40余万<br />
                                颗全球美钻资源
                            </p>
                        </td>
                        <td width="25%" valign="top">
                            <p>
                                3. 更高品质</p>
                            <p>
                            </p>
                            <p>
                                世界三大品牌Cartier（卡地亚）、<br />
                                Tiffany&Co（蒂凡尼）、<br />
                                BVLGARI（宝格丽）的钻石供应商<br />
                                ——De Beers首席看货商，为九钻<br />
                                直供顶级切工美钻</p>
                        </td>
                        <td width="25%" valign="top">
                            <p>
                                4. 更安全 更方便</p>
                            <p>
                            </p>
                            <p>
                                提供GIA-国证双证双保险，<br />
                                体验店和在线客服一对一专<br />
                                业顾问服务，更可享受货到<br />
                                付款服务，鼠标一点，便捷<br />
                                到家</p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="clearfix" ></div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTemplate" runat="server">
</asp:Content>
