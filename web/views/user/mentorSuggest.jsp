<%-- 
    Document   : course
    Created on : Sep 21, 2022, 3:07:46 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <%@include file="headCSS.jsp" %>
    <style>
        .card-img-top{
            height: 300px;
            object-fit: cover;

        }
        .card{
            height: 581px;
        }
        .card-body{
            height: 100%;
        }
        .checked {
            color: orange;
        }
    </style>
    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->

        <!-- page title -->
        <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <ul class="list-inline custom-breadcrumb">
                            <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="">Top Mentors</a></li>
                            <li class="list-inline-item text-white h3 font-secondary "></li>
                        </ul>
                        <p class="text-lighten">Here are our top mentors, in addition there are mentors that support the skills you have been learning.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- /page title -->
        <c:set value="${requestScope.idMentorsSuggest}" var="ids"/>
        <c:set value="${requestScope.CVsHm}" var="CVs"/>
        <c:set value="${requestScope.profilesHm}" var="pfs"/>
        <c:set value="${requestScope.rateHm}" var="rates"/>

        <section class="section">
            <div class="container">
                <div class="row">

                    <div class="col-md-12 table">
                        
                        <div class="row justify-content-center">
                            <c:forEach items="${ids}" var="id">
                                <!-- course item -->
                            <div class="col-lg-4 col-sm-6 mb-5">
                                <div class="card p-0 border-primary rounded-0 hover-shadow">
                                    <img class="card-img-top rounded-0" src="<%=request.getContextPath()%>/img/avatar/p${id}.png" alt="">
                                    <div class="card-body">
                                        <ul class="list-inline mb-2">
                                            <li class="list-inline-item"><i class="ti-calendar mr-1 text-color"></i>${pfs.get(id).dob}</li>
                                        </ul>

                                        <h4 class="card-title">${pfs.get(id).firstName} ${pfs.get(id).lastName}</h4>
                                        <p class="card-text">Gender: ${pfs.get(id).gender}</p>
                                        <p class="card-text">Skill: 
                                            <c:forEach items="${CVs.get(id).skillList}" var="s">
                                                ${s.name} 
                                            </c:forEach>
                                        </p>
                                        <div style="margin-bottom: 20px">Rate: ${rates.get(id)}
                                            <span style="margin-left: 10px" class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span></div>
                                        <a href="" class="btn btn-primary btn-sm">Invite now</a>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                            
                        </div>
                    </div>
                </div>
        </section>



        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %>

    </body>
</html>
