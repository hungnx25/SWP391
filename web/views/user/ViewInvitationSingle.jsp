<%-- 
    Document   : ViewInvitationSingle
    Created on : Oct 6, 2022, 11:53:36 AM
    Author     : minhd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <%@include file="headCSS2.jsp" %>
    <style>
        .invite{
            border: 1px #dee2e6 solid;
            padding: 3% 5% 5% 5%;
            width: 60%;
            background-color: #f3f3f3;
            border-radius: 5px;
        }
        .content{
            word-wrap: break-word;
        }
        .signup__link{
            color: #1e1e4b;
            margin: 2%;
            border:  1px #ededf1 solid ;
            border-radius: 5px;
            padding: 2%;
            background: rgba(9,30,66,0.04);
        }
        .signup__link:hover{
            color: #ffbc3b;
            background: rgba(9,30,66,0.08);
        }
        .title{
            color: #ffbc3b;
        }
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
        
    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <div id="content" class="row" style="padding-top: 50px; ">
            <%@include file="sidebar.jsp" %>
            <div class="col-10">
                <section class="section" >
                    <div class="container" style="display: flex; flex-flow: column">
                        <div style="margin-bottom: 20px;margin-top: -10px"><button style="margin-right: 10px" class="cv"><a href="<%=request.getContextPath()%>/viewAllInvite"><i class="ti-arrow-left"></i></a></button> <a class="text-color" href="<%=request.getContextPath()%>/viewAllInvite">Back to VIEW ALL INVITATIONS</a></div>
                        
                        <div class="invite" style="margin:30px auto;">
                            <h2 class="title text-align-center">${Invitation.title} </h2><br>
                            <div class="ml-5" style="">
                                <h5 class=""><span class="font-weight-bold mr-2">To:</span>
                                    <c:forEach items="${listUserProfile}" var="user" varStatus="loop">
                                        <c:if test="${user.ID == Invitation.mentorID}">
                                            <a  class="text-color" href="viewCV?mentorID=${Invitation.mentorID}">${user.firstName} ${user.lastName}</a>
                                        </c:if>
                                    </c:forEach>
                                </h5><br>
                                <fmt:parseDate value="${Invitation.createdAt}" pattern="yyyy-MM-dd" var="Date1" />
                                <fmt:formatDate value="${Date1}" var="Date3" pattern="dd/MM/yyyy"/>        
                                <span class="font-weight-bold mr-2">Created at:</span> ${Date3}<br><br>
                                <fmt:parseDate value="${Invitation.deadlineDate}" pattern="yyyy-MM-dd" var="Date" />
                                <fmt:formatDate value="${Date}" var="Date2" pattern="dd/MM/yyyy"/>        
                                <span class="font-weight-bold mr-2">Deadline:</span> ${Date2}
                                <br><br>

                                <span class="font-weight-bold mr-2">Skill: </span>${HmSkill[Invitation.skillID]}
                                <br><br>

                                <span class="font-weight-bold mr-2">Status: </span>${listStatus[Invitation.statusID]}<br><br>
                                <span class="font-weight-bold mr-2">Content: </span>
                                <div class="content"><br>${Invitation.content}</div>
                                <br><br>
                            </div>
                            <div class="text-align-center ">
                                <a class="signup__link " href="<%=request.getContextPath()%>/editInvitation?type=1&id=${Invitation.ID}">Update</a>
                                <a class="signup__link " href="<%=request.getContextPath()%>/editInvitation?type=2&id=${Invitation.ID}">Cancel</a>
                                <c:if test="${requestScope.success!=null}">
                                    <br><br><br><h5 style="color: green">${success}</h5>
                                </c:if>
                                <c:if test="${requestScope.failed!=null}">
                                    <br><br><br><h5 style="color: red">${failed}</h5>
                                </c:if>
                            </div>

                        </div>
                    </div>
                    <!-- border -->
                    <!-- blog contect -->



                </section></div>
        </section>
    </div>
</div>
<!-- footer -->

<!-- /footer -->
<!-- jQuery -->
<%@include file="scriptJS.jsp" %> 
<!-- /jQuery -->
</body>
</html>

