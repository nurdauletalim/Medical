<%--
  Created by IntelliJ IDEA.
  User: Nurdaulet
  Date: 06.05.2021
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Our doctors</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<main>
    <jsp:useBean id="doctors" type="java.util.List<Entity.Doctors>" scope="request"/>

    <div class="slider-area2">
        <div class="slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap hero-cap2 text-center">
                            <h2>Doctors</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="team-area section-padding30">
        <div class="container">

            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="section-tittle text-center mb-100">
                        <span>Our Doctors</span>
                        <h2>Our Specialist</h2>
                    </div>
                </div>
            </div>
            <div>
                    <div class="mt-10">
                        <form action="FindDoctorServlet" method="post">
                            <input type="text" name="name" placeholder="Find by name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Find by name'" required="" class="single-input">
                        </form>
                    </div>
                    <div class="mt-10">
                        <form action="FindDoctorServlet" method="post">
                            <input type="text" name="dep" placeholder="Find by dep" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Find by dep'" required="" class="single-input">
                        </form>
                    </div>
            </div>
            <div class="row">
     <%for (int i = 0; i<doctors.size(); i++){ %>
                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-">
                    <div class="single-team mb-30">
                        <div class="team-img">
                            <img src="<%=doctors.get(i).getMore()%>" alt="">
                        </div>
                        <div class="team-caption">
                            <h3><a href="#"><%=doctors.get(i).getName()%></a></h3>
                            <span><%=doctors.get(i).getDep()%></span>
                            <div class="team-social">
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="fas fa-globe"></i></a>
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-pinterest-p"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <%}%>

            </div>
        </div>
    </div>

</main>
<%@include file="footer.jsp"%>
<%@include file="script.jsp"%>
</body>
</html>