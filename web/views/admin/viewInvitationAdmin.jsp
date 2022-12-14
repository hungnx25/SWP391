

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <%@include file="headCSS.jsp" %>

    <style>
        .cv:hover{
            background-color:#e9ecef;
            color: #ffbc3b;
        }
        input,select,textarea,.cv{
            margin: 16px 0px;
            border-radius: 5px;
        }
        .cv{
            color: black;
            border-color: #ced4da;
            background-color: #fff;
            padding: 10px;
        }
        table{
            margin-top: 30px;
        }
        .col-9{
            margin: 0 auto;
        }

    </style>
    <body>
        <%@include file= "../user/header.jsp" %>
        <div class="row">
            <%@include file="adminSidebar.jsp" %>

            <div class="col-10">
                <section class="section" style="margin-top: 50px">
                    <h2 style="margin-left:15px">All invitations</h2>
                    <div class="container">
                        <div class="row">  
                            <div class="col-md-12 table">
                                <table border="2" style="width: 100%">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Mentor</th>
                                            <th>Mentee</th>
                                            <th>Skill</th>
                                            <th>Title</th> 
                                            <th>Content</th>         
                                            <th>Deadline date</th>
                                            <th>Status</th>

                                        </tr>
                                    </thead>
                                    <c:forEach items="${listInv}" var="inv" varStatus="">
                                        
                                        <tbody>
                                            <tr>
                                                <td>${inv.ID}</td>
                                                <td>
                                                    <c:forEach items="${listUserProfile}" var="user">
                                                        <c:if test="${user.ID == inv.mentorID }">
                                                            ${user.firstName} ${user.lastName}
                                                        </c:if>
                                                    </c:forEach>
                                                </td>
                                                <td>
                                                    <c:forEach items="${listUserProfile}" var="user">
                                                        <c:if test="${user.ID == inv.menteeID }">
                                                            ${user.firstName} ${user.lastName}
                                                        </c:if>
                                                    </c:forEach>
                                                </td>
                                                <td>
                                                    <c:forEach items="${listSkill}" var="skill">
                                                        <c:if test="${skill.ID == inv.skillID}">
                                                            ${skill.name} 
                                                        </c:if>
                                                    </c:forEach>
                                                </td>
                                                <td>${inv.title}</td>
                                                <td>${inv.content}</td>
                                                <td>${inv.deadlineDate}</td>
                                                <td>
                                                    <c:forEach items="${listStatus}" var="sta">
                                                        <c:if test="${sta.key == inv.statusID}">
                                                            ${sta.value} 
                                                        </c:if>
                                                    </c:forEach>
                                                </td>
                                        </tbody>

                                    </c:forEach>
                                </table>
                            </div>
                        </div>
                        <!--form-->
                    </div>
                </section>
            </div>
        </div>
        <!-- footer -->
        <%@include file="../user/footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="../user/scriptJS.jsp" %>
        <script src="https://cdn.ckeditor.com/ckeditor5/34.1.0/classic/ckeditor.js"></script>
        <script>
            var value;
            ClassicEditor
                    .create(document.querySelector('#editor'))
                    .then(editor => {
                        value = editor;
                    })
                    .catch(error => {
                        console.error(error);
                    });

            const handleSubmit = () => {
                document.getElementById('a').innerHTML = value.getData();
            };
        </script>
    </body>

</html>
