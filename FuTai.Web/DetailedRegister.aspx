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
                var password = $('#password').val();
                var password2 = $('#password2').val();
                var passwordAnswer = $('#passwordAnswer').val();
                var passwordQuestion = $('#passwordQuestion').val();
                var birthDate =new Date($('#birthYear').val(),$('#birthMonth').val(),$('#birthDate').val());
                
                var sex = $('#sex').val()=="true"?true:false;
                var userName = $('#userName').val();
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

                // todo: 密码可以包含某些特殊字符
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

                if (!passwordAnswer) {
                    $('#passwordAnswer').error('请输入密码找回问题');
                    return false;
                } else if (!/^[\S]{3,20}$/.test(passwordAnswer)) {
                    $('#passwordAnswer').error('密码问题过短');
                }

                if (!passwordQuestion) {
                    $('#passwordQuestion').error('请输入密码问题答案');
                    return false;
                } else if (!/^[\S]{3,20}$/.test(passwordQuestion)) {
                    $('#passwordQuestion').error('密码答案过短');
                }

                // todo: 必须是日期格式, 如yyyy-MM-dd; 考虑使用js日期组件
                if (!birthDate) {
                    $('#birthDate').error('请输入生日');
                    return false;
                }

                // todo: 性别采用下拉选择
//                if (!sex) {
//                    $('#sex').error('请选择性别');
//                    return false;
//                }

                // todo: 用户名不能包含数字或特殊字符
                if (!userName || !(userName.length>2 && userName.length<20)) {
                    $('#userName').error('请输入真实姓名');
                    return false;
                }

                // todo: 昵称不能包含某些特殊字符
                // todo: 确认昵称是否需要判定重复
                if (!nickName) {
                    $('#nickName').error('请输入昵称');
                    return false;
                } else if (!(nickName.length>=4 && nickName.length<=10  )) {
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

                // todo: 验证电话格式
                if (!phone || !(phone.length>=8 && phone.length<=10)) {
                    $('#phone').error('联系电话格式错误');
                    return false;
                }

                var result = BaseAjax.Register(email, password, passwordAnswer, passwordQuestion,birthDate, sex, userName, nickName, phone);
                if (!result.error)
                {
                    alert("恭喜您注册成功!您将自动登录到福泰钻石");
                    BaseAjax.Login(email, password);
                    location.href="/Default.aspx";
                }
                else
                    alert(result.error.Message);
            });
        });
    </script>

</asp:Content>
<asp:content id="Content2" contentplaceholderid="cphContent" runat="server">
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
                                    <input type="password" id="password" name="password" style="width:127px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    确认密码：<br />
                                </td>
                                <td>
                                    <input type="password" id="password2" name="password2" style="width:127px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    密码找回问题：<br />
                                </td>
                                <td>
                                    <input type="text" id="passwordAnswer" name="passwordAnswer" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    密码问题答案：<br />
                                </td>
                                <td>
                                    <input type="text" id="passwordQuestion" name="passwordQuestion" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    生日：<br />
                                </td>
                                <td>
                                    <select id="birthYear">
                                        <option>1970</option>
                                        <option>1971</option>
                                        <option>1972</option>
                                        <option>1973</option>
                                        <option>1974</option>
                                        <option>1975</option>
                                        <option>1976</option>
                                        <option>1977</option>
                                        <option>1978</option>
                                        <option>1979</option>
                                        <option>1980</option>
                                        <option>1981</option>
                                        <option>1982</option>
                                        <option>1983</option>
                                        <option>1984</option>
                                        <option>1985</option>
                                        <option>1986</option>
                                        <option>1987</option>
                                        <option>1988</option>
                                        <option>1989</option>
                                        <option>1990</option>
                                        <option>1991</option>
                                        <option>1992</option>
                                        <option>1993</option>
                                        <option>1994</option>
                                        <option>1995</option>
                                        <option>1996</option>
                                        <option>1997</option>
                                        <option>1998</option>
                                        <option>1999</option>
                                        <option>2000</option>
                                        <option>2001</option>
                                        <option>2002</option>
                                        <option>2003</option>
                                        <option>2004</option>
                                        <option>2005</option>
                                        <option>2006</option>
                                        <option>2007</option>
                                        <option>2008</option>
                                        <option>2009</option>
                                    </select> 年 <select id="birthMonth">
                                        <option>01</option>
                                        <option>02</option>
                                        <option>03</option>
                                        <option>04</option>
                                        <option>05</option>
                                        <option>06</option>
                                        <option>07</option>
                                        <option>08</option>
                                        <option>09</option>
                                        <option>10</option>
                                        <option>11</option>
                                        <option>12</option>
                                    </select> 月 
                                        <select id="birthDate">
                                        <option>01</option>
                                        <option>02</option>
                                        <option>03</option>
                                        <option>04</option>
                                        <option>05</option>
                                        <option>06</option>
                                        <option>07</option>
                                        <option>08</option>
                                        <option>09</option>
                                        <option>10</option>
                                        <option>11</option>
                                        <option>12</option>
                                        <option>13</option>
                                        <option>14</option>
                                        <option>15</option>
                                        <option>16</option>
                                        <option>17</option>
                                        <option>18</option>
                                        <option>19</option>
                                        <option>20</option>
                                        <option>21</option>
                                        <option>22</option>
                                        <option>23</option>
                                        <option>24</option>
                                        <option>25</option>
                                        <option>26</option>
                                        <option>27</option>
                                        <option>28</option>
                                        <option>29</option>
                                        <option>30</option>
                                        <option>31</option>
                                    </select>
                                     日
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    性别：<br />
                                </td>
                                <td>
                                    <select id="sex" name="sex" style="width:131px">
                                        <option value="true">男</option>
                                        <option value="false">女</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    真实姓名：<br />
                                </td>
                                <td>
                                    <input type="text" id="userName" name="userName" />
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
</asp:content>
<asp:content id="Content3" contentplaceholderid="cphTemplate" runat="server">
</asp:content>
