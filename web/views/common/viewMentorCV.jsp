

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

    <%@include file="../user/headCSS2.jsp" %>

    <body>
        <!-- header -->
        <%@include file="../user/header.jsp" %>
        <!-- /header -->
        <div>
            <!-- teachers -->
            <section class="section" style="padding-top: 160px;">
                <div class="container">
                    <div class="row" >
                        <div class="col-md-5 ">
                            <img class="img-fluid w-100" src="<%=request.getContextPath()%>/template1/images/teachers/teacher-1.jpg" alt="teacher">
                            <br><br>
                            <a href="<%=request.getContextPath()%>/views/user/createInvitation.jsp">
                                <input type="submit" value="Invite" class="btn btn-primary btn-user btn-block" /></a>
                        </div>
                        <div class="col-md-7 row">
                            <h4 class="col-md-12 ">${mentorProfile.firstName} ${mentorProfile.lastName}</h4>
                            <div class="col-md-6 mb-5">
                                <h6 class="text-color">Gender: ${mentorProfile.getGender()} </h6>
                            </div >
                            <div class="col-md-6 mb-5"> 
                                <h6 class="text-color">DOB: ${mentorProfile.getDob()}</h6>
                            </div>
                            <h4 class="col-md-12 ">INTRODUCTION</h4>
                            <p class="col-md-12"> ${mentorCV.introduction}</p>

                            <div class="col-md-12">
                                <h4 class="mb-4">CONTACT INFO:</h4>
                                <ul class="list-unstyled">
                                    <li class="mb-3"><a class="text-color" href="mailto:johndoe@email.com"><i class="ti-email mr-2"></i>${mentorProfile.email}</a></li>

                                    <li class="mb-3"><a class="text-color" href="#"><i class="ti-location-pin mr-2"></i>
                                        
                                        Address: ${xa} , ${huyen} , ${tinh}
                                        </a></li>
                                </ul>
                            </div>

                        </div>
                        <div class="col-12" style="padding-top: 5%">
                            <h4 class="mb-4">SERVICE DESCRIPTION</h4>
                            <p class="mb-5">${mentorCV.serviceDescription}</p>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-12">
                            <h4 class="mb-4">SKILL</h4>
                            <c:forEach items="${mentorCV.skillList}" var="s">
                                <p>${s.name}</p>
                            </c:forEach>
                        </div>
                        <!-- course item -->
<!--                        <div class="col-lg-4 col-sm-6 mb-5">
                            <div class="card p-0 border-primary rounded-0 hover-shadow">
                                <img class="card-img-top rounded-0" src="images/courses/course-4.jpg" alt="course thumb">
                                <div class="card-body">
                                    <ul class="list-inline mb-2">
                                        <li class="list-inline-item"><i class="ti-calendar mr-1 text-color"></i>02-14-2018</li>
                                        <li class="list-inline-item"><a class="text-color" href="#">Humanities</a></li>
                                    </ul>
                                    <a href="course-single.jsp">
                                        <h4 class="card-title">Complete Freelancing</h4>
                                    </a>
                                    <p class="card-text mb-4"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                        incididunt ut labore et dolore magna.</p>
                                    <a href="course-single.jsp" class="btn btn-primary btn-sm">Apply now</a>
                                </div>
                            </div>
                        </div>-->
                        <!-- course item -->

                    </div>
                </div>
            </section>
            <!-- /teachers -->
        </div>


        <!-- footer -->
        <%@include file="../user/footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="../user/scriptJS.jsp" %>

    </body>
</html>