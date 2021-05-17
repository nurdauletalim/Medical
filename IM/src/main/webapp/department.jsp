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
    <title>Department</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<main>

    <div class="slider-area2">
        <div class="slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap hero-cap2 text-center">
                            <h2>Departments</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="department_area section-padding2">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="section-tittle text-center mb-100">
                        <span>Our Departments</span>
                        <h2>Our Medical Services</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="depart_ment_tab mb-30">

                        <ul class="nav" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">
                                    <i class="flaticon-teeth"></i>
                                    <h4>Dentistry</h4>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">
                                    <i class="flaticon-cardiovascular"></i>
                                    <h4>Cardiology</h4>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">
                                    <i class="flaticon-ear"></i>
                                    <h4>ENT Specialists</h4>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="Astrology-tab" data-toggle="tab" href="#Astrology" role="tab" aria-controls="contact" aria-selected="false">
                                    <i class="flaticon-bone"></i>
                                    <h4>Astrology</h4>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="Neuroanatomy-tab" data-toggle="tab" href="#Neuroanatomy" role="tab" aria-controls="contact" aria-selected="false">
                                    <i class="flaticon-lung"></i>
                                    <h4>Neuroanatomy</h4>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="Blood-tab" data-toggle="tab" href="#Blood" role="tab" aria-controls="contact" aria-selected="false">
                                    <i class="flaticon-cell"></i>
                                    <h4>Blood Screening</h4>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="dept_main_info white-bg">
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                        <div class="contact-form-main">
                            <div class="container">
                                <div class="row justify-content-end">
                                    <div class="col-xl-7 col-lg-7">
                                        <div class="form-wrapper">

                                            <div class="form-tittle">
                                                <div class="row ">
                                                    <div class="col-xl-12">
                                                        <div class="section-tittle section-tittle2">
                                                            <span>Dentistry</span>
                                                            <h2>Appointment Form</h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <form id="contact-form" action="ConsultServlet" method="POST">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box user-icon mb-30">
                                                            <input type="hidden" name="userid" value="<%=user.getId()%>">
                                                            <input type="hidden" name="dep" value="Dentistry">
                                                            <input type="text" name="name" placeholder="Name" value="<%=user.getName()%>">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box email-icon mb-30">
                                                            <input type="text" name="phone" placeholder="Phone">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box subject-icon mb-30">
                                                            <input type="Email" name="email" placeholder="Email"  value="<%=user.getEmail()%>">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="form-box message-icon mb-65">
                                                            <textarea name="txt" id="message" placeholder="Message"></textarea>
                                                        </div>

                                                        <div class="submit-info">
                                                            <%if (user.getEmail() !=null){%>
                                                            <button class="btn" type="submit">Submit Now <i class="ti-arrow-right"></i> </button>
                                                            <%}%>
                                                            <%if (user.getEmail() ==null){%>
                                                            <button class="btn" type="button"><a href="login.jsp">Submit Now</a> <i class="ti-arrow-right"></i> </button>
                                                            <%}%>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                        <div class="contact-form-main">
                            <div class="container">
                                <div class="row justify-content-end">
                                    <div class="col-xl-7 col-lg-7">
                                        <div class="form-wrapper">

                                            <div class="form-tittle">
                                                <div class="row ">
                                                    <div class="col-xl-12">
                                                        <div class="section-tittle section-tittle2">
                                                            <span>Cardiology</span>
                                                            <h2>Appointment Form</h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <form id="contact-form" action="ConsultServlet" method="POST">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box user-icon mb-30">
                                                            <input type="hidden" name="userid" value="<%=user.getId()%>">
                                                            <input type="hidden" name="dep" value="Cardiology">
                                                            <input type="text" name="name" placeholder="Name" value="<%=user.getName()%>">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box email-icon mb-30">
                                                            <input type="text" name="phone" placeholder="Phone">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box subject-icon mb-30">
                                                            <input type="Email" name="email" placeholder="Email"  value="<%=user.getEmail()%>">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="form-box message-icon mb-65">
                                                            <textarea name="txt" id="message" placeholder="Message"></textarea>
                                                        </div>

                                                        <div class="submit-info">
                                                            <%if (user.getEmail() !=null){%>
                                                            <button class="btn" type="submit">Submit Now <i class="ti-arrow-right"></i> </button>
                                                            <%}%>
                                                            <%if (user.getEmail() ==null){%>
                                                            <button class="btn" type="button"><a href="login.jsp">Submit Now</a> <i class="ti-arrow-right"></i> </button>
                                                            <%}%>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">

                        <div class="contact-form-main">
                            <div class="container">
                                <div class="row justify-content-end">
                                    <div class="col-xl-7 col-lg-7">
                                        <div class="form-wrapper">

                                            <div class="form-tittle">
                                                <div class="row ">
                                                    <div class="col-xl-12">
                                                        <div class="section-tittle section-tittle2">
                                                            <span>ENT Specialists</span>
                                                            <h2>Appointment Form</h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                            <form id="contact-form" action="ConsultServlet" method="POST">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box user-icon mb-30">
                                                            <input type="hidden" name="userid" value="<%=user.getId()%>">
                                                            <input type="hidden" name="dep" value="ENT Specialists">
                                                            <input type="text" name="name" placeholder="Name" value="<%=user.getName()%>">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box email-icon mb-30">
                                                            <input type="text" name="phone" placeholder="Phone">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box subject-icon mb-30">
                                                            <input type="Email" name="email" placeholder="Email"  value="<%=user.getEmail()%>">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="form-box message-icon mb-65">
                                                            <textarea name="txt" id="message" placeholder="Message"></textarea>
                                                        </div>

                                                        <div class="submit-info">
                                                            <%if (user.getEmail() !=null){%>
                                                            <button class="btn" type="submit">Submit Now <i class="ti-arrow-right"></i> </button>
                                                            <%}%>
                                                            <%if (user.getEmail() ==null){%>
                                                            <button class="btn" type="button"><a href="login.jsp">Submit Now</a> <i class="ti-arrow-right"></i> </button>
                                                            <%}%>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                    <div class="tab-pane fade" id="Astrology" role="tabpanel" aria-labelledby="Astrology-tab">
                        <div class="contact-form-main">
                            <div class="container">
                                <div class="row justify-content-end">
                                    <div class="col-xl-7 col-lg-7">
                                        <div class="form-wrapper">

                                            <div class="form-tittle">
                                                <div class="row ">
                                                    <div class="col-xl-12">
                                                        <div class="section-tittle section-tittle2">
                                                            <span>Astrology</span>
                                                            <h2>Appointment Form</h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                            <form id="contact-form" action="ConsultServlet" method="POST">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box user-icon mb-30">
                                                            <input type="hidden" name="userid" value="<%=user.getId()%>">
                                                            <input type="hidden" name="dep" value="Astrology">
                                                            <input type="text" name="name" placeholder="Name" value="<%=user.getName()%>">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box email-icon mb-30">
                                                            <input type="text" name="phone" placeholder="Phone">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box subject-icon mb-30">
                                                            <input type="Email" name="email" placeholder="Email"  value="<%=user.getEmail()%>">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="form-box message-icon mb-65">
                                                            <textarea name="txt" id="message" placeholder="Message"></textarea>
                                                        </div>

                                                        <div class="submit-info">
                                                            <%if (user.getEmail() !=null){%>
                                                            <button class="btn" type="submit">Submit Now <i class="ti-arrow-right"></i> </button>
                                                            <%}%>
                                                            <%if (user.getEmail() ==null){%>
                                                            <button class="btn" type="button"><a href="login.jsp">Submit Now</a> <i class="ti-arrow-right"></i> </button>
                                                            <%}%>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="tab-pane fade" id="Neuroanatomy" role="tabpanel" aria-labelledby="Neuroanatomy-tab">

                        <div class="contact-form-main">
                            <div class="container">
                                <div class="row justify-content-end">
                                    <div class="col-xl-7 col-lg-7">
                                        <div class="form-wrapper">

                                            <div class="form-tittle">
                                                <div class="row ">
                                                    <div class="col-xl-12">
                                                        <div class="section-tittle section-tittle2">
                                                            <span>Neuroanatomy</span>
                                                            <h2>Appointment Form</h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                            <form id="contact-form" action="ConsultServlet" method="POST">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box user-icon mb-30">
                                                            <input type="hidden" name="userid" value="<%=user.getId()%>">
                                                            <input type="hidden" name="dep" value="Neuroanatomy">
                                                            <input type="text" name="name" placeholder="Name" value="<%=user.getName()%>">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box email-icon mb-30">
                                                            <input type="text" name="phone" placeholder="Phone">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box subject-icon mb-30">
                                                            <input type="Email" name="email" placeholder="Email"  value="<%=user.getEmail()%>">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="form-box message-icon mb-65">
                                                            <textarea name="txt" id="message" placeholder="Message"></textarea>
                                                        </div>

                                                        <div class="submit-info">
                                                            <%if (user.getEmail() !=null){%>
                                                            <button class="btn" type="submit">Submit Now <i class="ti-arrow-right"></i> </button>
                                                            <%}%>
                                                            <%if (user.getEmail() ==null){%>
                                                            <button class="btn" type="button"><a href="login.jsp">Submit Now</a> <i class="ti-arrow-right"></i> </button>
                                                            <%}%>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                    <div class="tab-pane fade" id="Blood" role="tabpanel" aria-labelledby="Blood-tab">

                        <div class="contact-form-main">
                            <div class="container">
                                <div class="row justify-content-end">
                                    <div class="col-xl-7 col-lg-7">
                                        <div class="form-wrapper">

                                            <div class="form-tittle">
                                                <div class="row ">
                                                    <div class="col-xl-12">
                                                        <div class="section-tittle section-tittle2">
                                                            <span>Blood Screening</span>
                                                            <h2>Appointment Form</h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                            <form id="contact-form" action="ConsultServlet" method="POST">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box user-icon mb-30">
                                                            <input type="hidden" name="userid" value="<%=user.getId()%>">
                                                            <input type="hidden" name="dep" value="Blood Screening">
                                                            <input type="text" name="name" placeholder="Name" value="<%=user.getName()%>">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box email-icon mb-30">
                                                            <input type="text" name="phone" placeholder="Phone">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6">
                                                        <div class="form-box subject-icon mb-30">
                                                            <input type="Email" name="email" placeholder="Email"  value="<%=user.getEmail()%>">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="form-box message-icon mb-65">
                                                            <textarea name="txt" id="message" placeholder="Message"></textarea>
                                                        </div>

                                                        <div class="submit-info">
                                                            <%if (user.getEmail() !=null){%>
                                                            <button class="btn" type="submit">Submit Now <i class="ti-arrow-right"></i> </button>
                                                            <%}%>
                                                            <%if (user.getEmail() ==null){%>
                                                            <button class="btn" type="button"><a href="login.jsp">Submit Now</a> <i class="ti-arrow-right"></i> </button>
                                                            <%}%>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>

</main>
<%@include file="footer.jsp"%>
<%@include file="script.jsp"%>
</body>
</html>