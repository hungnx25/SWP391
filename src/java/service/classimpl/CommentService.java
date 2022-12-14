/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.CommentDAO;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import model.Comment;
import service.ICommentService;

/**
 *
 * @author Admin
 */
public class CommentService implements ICommentService {

    CommentDAO cmtDAO = new CommentDAO();
    
    @Override
   public List<Comment> getList() {
        List<Comment> cmtList = cmtDAO.getCmList();
        Collections.sort(cmtList, new Comparator<Comment>() {
            @Override
            public int compare(Comment cmt1, Comment cmt2) {
                return cmt1.getCreatedAt().compareTo(cmt2.getCreatedAt());
            }
        });
        Collections.reverse(cmtList);
        return cmtList;
    }

    @Override
    public Comment getCommentById(int id, List<Comment> list) {
        for (Comment comment : list) {
            if (comment.getID() == id) {
                return comment;
            }
        }
        return null;
    }

    @Override
    public String insert(Comment u, List<Comment> list) {

        Comment cmt = cmtDAO.insert(u);
        list.add(cmt);
        return "OK";

    }

    @Override
    public String update(Comment u, List<Comment> list) {

        cmtDAO.update(u);
        Comment cmt = getCommentById(u.getID(), list);
        cmt.setMentorID(u.getMentorID());
        cmt.setMenteeID(u.getMenteeID());
        cmt.setCreatedAt(u.getCreatedAt());
        cmt.setContent(u.getContent());
        return "OK";

    }

    @Override
    public String delete(int id, List<Comment> list) {
        cmtDAO.delete(id);
        list.remove(getCommentById(id, list));
        return "OK";
    }

}

//class Main{
//    public static void main(String[] args) {
//        ICommentService ser = new CommentService();
//        List<Comment> listCmt = ser.getList();
//        for (Comment comment : listCmt) {
//            System.out.println("comment" + comment.getCreatedAt());
//        }
//    }
//}
