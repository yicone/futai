<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucComment.ascx.cs" Inherits="FuTai.Web.Controls.ucComment" %>
<%@ Register Src="ucCaptcha.ascx" TagName="ucCaptcha" TagPrefix="uc1" %>

<script type="text/javascript">
    $(document).ready(function(){
        var productId = "<%= this.ProductId %>";
        var $comment_title = $('#comment_title');
        var $comment_content = $('#comment_content');
        var $comment_captcha = $('#comment_captcha');
        var $comment_submit = $('#comment_submit');
        var $comment_cancel = $('#comment_cancel');
        
        var refreshCommentList = function(){
            var result2 = Comment.GetCommentList(productId);
            if(result2.value){
                renderTemplate('comment-list',{ 'list': result2.value});
            }
        };
        
        refreshCommentList();
        
        $comment_submit.click(function(){
            var title = $comment_title.val();
            var content = $comment_content.val();
            var captcha = $comment_captcha.val();
            
            var result = Captcha.Validate(captcha);
            if(!result.value){
                alert("验证码错误");
                Captchar_refresh();
                return false;
            }
            
            if(!title || !content || title.length < 6 || content.length < 6){
                alert('评论标题或内容不能为空, 且不能少于6个字符');
                return false;
            }
            
            var result = Comment.Insert(title, content, productId);
            if(!result.error){
                alert('评论成功');
                
                refreshCommentList();
            }else{
                alert(result.error.Message);
            }
        });
        
        $comment_cancel.click(function(){
            $comment_title.val('');
            $comment_content.val('');
        });
    });
    
    
</script>

<div class="tabSelect">
    <div id="comment-list">
    </div>
    <ul>
        <li class="now">添加评论</li>
    </ul>
    <div class="clearfix">
    </div>
    <div class="cont">
        <table width="100%" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td height="100" align="center">
                        <table width="720" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                                <tr>
                                    <td valign="top" align="left">
                                    </td>
                                    <td width="664" align="left">
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" align="left">
                                        提示：
                                    </td>
                                    <td align="left">
                                        <a href="/LoginRegister.aspx">登录</a>后才可以评论。
                                    </td>
                                </tr>
                                <tr>
                                    <td width="56" valign="top" align="left">
                                        <div id="u6_rtf">
                                            标题：</div>
                                    </td>
                                    <td align="left">
                                        <label>
                                            <input type="text" size="35" value="回复:[款式评论] - 款号: <%= this.ProductId %>" id="comment_title"
                                                name="comment_title" />
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" align="left">
                                        <div id="u6_rtf2">
                                            内容：</div>
                                    </td>
                                    <td align="left">
                                        <label>
                                            <textarea id="comment_content" rows="5" style="width: 650px;" cols="90" name="comment_content"></textarea>
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <div id="u10_rtf">
                                            验证码：</div>
                                    </td>
                                    <td align="left">
                                        <input type="text" size="4" id="comment_captcha" name="comment_captcha" />
                                        <uc1:ucCaptcha ID="ucCaptcha1" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                    </td>
                                    <td height="50" align="left">
                                        <input type="button" value=" 发表评论 " class="btn1Style" id="comment_submit" name="comment_submit" />
                                        <input type="button" value=" 重填 " class="btn1Style" id="comment_cancel" name="comment_cancel" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                    </td>
                                    <td align="left">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<textarea id="comment-list-template" style="display: none">
    {#foreach $T.list as comment}
        <div style="font-size:12px;padding:0px 5px;">
        <span>{ $T.comment.Title } | { $T.comment.Content }</span>     <span>{ $T.comment.NickName }|{ formatDate($T.comment.CreateDate) }</span>
        </div>
    {#/for}
</textarea>