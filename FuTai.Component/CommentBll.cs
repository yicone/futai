using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FuTai.Component
{
    public class CommentBll : BaseBll
    {
        public enum CommentAuditStatus
        {
            Queue = 0,
            Pass = 1,
            QueueAndPass = 2,
            Refused = -1,
            Deleted = -2
        }

        public void Insert(string title, string content, string productId, int userId, string nickName)
        {
            Comment comment = new Comment()
            {
                Title = title,
                Content = content,
                ProductId = productId,
                UserId = userId,
                NickName = nickName,
                CreateDate = DateTime.Now,
                AuditStatus = (int)CommentAuditStatus.Queue
            };

            using (var context = BaseBll.DataContext)
            {
                context.Comment.InsertOnSubmit(comment);
                context.SubmitChanges();
            }
        }

        public List<Comment> GetCommentList(string productId, CommentAuditStatus status)
        {
            List<Comment> list = new List<Comment>();

            using (var context = BaseBll.DataContext)
            {
                if (status == CommentAuditStatus.QueueAndPass)
                {
                    var a = from c in context.Comment
                            where (c.AuditStatus == (int)CommentAuditStatus.Queue || c.AuditStatus == (int)CommentAuditStatus.Pass)
                                && c.ProductId == productId
                            select c;

                    if (a != null)
                    {
                        try
                        {
                            list = a.ToList();
                        }
                        catch (Exception ex)
                        {
                            LogHelper.Logger.Error(ex);
                            throw;
                        }
                    }
                }
                else
                {
                    var a = from c in context.Comment
                            where c.AuditStatus == (int)status && c.ProductId == productId
                            select c;

                    if (a != null)
                    {
                        list = a.ToList();
                    }
                }
            }

            return list;
        }
    }
}
