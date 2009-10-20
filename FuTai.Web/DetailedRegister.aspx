<%@ Page Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true"
    CodeBehind="DetailedRegister.aspx.cs" Inherits="FuTai.Web.DetailedRegister" Title="新用户注册" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <link type="text/css" rel="stylesheet" href="/style/inner.css" />
    <link type="text/css" rel="stylesheet" href="/style/custom.css" />
<style type="text/css">
        .TipBox2
        {
            border: solid 1px #E17D7E;
            padding: 0px 1px 0px 25px;
            font-size: 12px;
            background: #FEEAE3 url(images/wrongbg.gif) no-repeat 5px 0px;
        }
    </style>

    <script type="text/javascript" src="/js/jquery.error-1.0.0.js "></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#user_register').click(function() {

                var email = $('#email').val();
                var passowrd = $('#passowrd').val();
                var passwordAnswer = $('#passwordAnswer').val();
                var birthDate = $('#birthDate').val();
                var sex = $('#sex').val();
                var trueName = $('#trueName').val();
                var nickName = $('#nickName').val();
                var phone = $('#phone').val();

                if (!email) {
                    $('#email').error('请输入E-mail地址');
                    return false;
                } else if (!/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test(email)) {
                    $('#email').error('邮箱格式不正确');
                    return false;
                } else {
                    var r = BaseAjax.CheckEmailExists(email);
                    var exists = r.value;
                    if (exists) {
                        $('#email').error('邮箱已存在');
                        return false;
                    }
                }

                if (!password) {
                    $('#password').error('请输入密码');
                    return false;
                } else if (!/^[a-zA-Z0-9]{6,20}$/.test(password)) {
                    $('#password').error('密码格式不正确');
                    return false;
                }

                if (password2 != password) {
                    $('#password2').error('两次输入的密码不一致');
                    return false;
                }

                if (!nickName) {
                    $('#nickName').error('请输入昵称');
                    return false;
                } else if (nickName.length <= 3) {
                    $('#nickName').error('昵称应为4-10个字符');
                    return false;
                } else {
                    var r = BaseAjax.CheckNicknameExists(nickName);
                    var exists = r.value;
                    if (exists) {
                        $('#nickName').error('昵称已存在');
                        return false;
                    }
                }

                var result = BaseAjax.Register(email, passowrd, passwordAnswer,
                                    birthDate, sex, trueName, nickName, phone);
            });
        });
    </script>

</asp:Content>
<asp:Content id="Content2" contentplaceholderid="cphContent" runat="server">
    <div class="custom_main1">
        <div class="hr">
        </div>
        <div style="margin: 0pt auto; width: 600px;">
            <div class="box1 cartBox">
                <h2>
                    <span>新用户注册：</span></h2>
                <div class="cont">
                    <div class="clearfix">
                    </div>
                    <table width="400" cellspacing="0" cellpadding="5" border="0" align="center">
                        <tbody>
                            <tr>
                                <td width="134" align="right">
                                    您的E-mail地址：
                                </td>
                                <td width="245">
                                    <label>
                                        <input type="text" id="email" name="email" />
                                        <br />
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    设置密码：<br />
                                </td>
                                <td>
                                    <input type="text" id="passowrd" name="passowrd" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    确认密码：<br />
                                </td>
                                <td>
                                    <input type="text" id="password2" name="password2" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    生日：<br />
                                </td>
                                <td>
                                    <input type="text" id="birthDate" name="birthDate" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    性别：<br />
                                </td>
                                <td>
                                    <input type="text" id="sex" name="sex" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    真实姓名：<br />
                                </td>
                                <td>
                                    <input type="text" id="trueName" name="trueName" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    设置昵称：<br />
                                </td>
                                <td>
                                    <input type="text" id="nickName" name="nickName" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    联系电话：
                                </td>
                                <td>
                                    <input type="text" id="phone" name="phone" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                </td>
                                <td>
                                    <input type="button" value=" 注 册  " class="btn1Style" id="user_register" name="user_register" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="clearfix">
        </div>
        <div class="inner_bottomcont">
            <h4 class="cartBtnbox">
                福泰的企业精神——创新！分享！快乐！</h4>
            <div class="inner_hr">
            </div>
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
        <div class="clearfix">
        </div>
    </div>
</asp:Content>
<asp:Content id="Content3" contentplaceholderid="cphTemplate" runat="server">
</asp:Content>
