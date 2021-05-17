<header>
    <jsp:useBean id="user" class="Entity.User" scope="session"/>

    <div class="header-area">
        <div class="main-header header-sticky">
            <div class="container-fluid">
                <div class="row align-items-center">

                    <div class="col-xl-2 col-lg-2 col-md-1">
                        <div class="logo">
                            <a href="index.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
                        </div>
                    </div>

                    <div class="col-xl-10 col-lg-10 col-md-10">
                        <div class="menu-main d-flex align-items-center justify-content-end">

                            <div class="main-menu f-right d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a href="index.jsp">Home</a></li>
                                        <li><a href="about.jsp">About</a></li>
                                        <li><a href="AllDoctorsServlet">Doctors</a></li>
                                        <li><a href="department.jsp">Department</a></li>
                                        <li><a href="contact.jsp">Contact</a></li>
                                        <li><a href="video.jsp">Video lesson</a></li>
                                        <li><a href="AllMedicineServlet">Pricing</a></li>
                                        <%if(user.getEmail() == null) {%>
                                        <li><a href="login.jsp">Login</a>
                                            <%}%>
                                                <%if(user.getEmail() != null) {%>
                                        <li><a href="#"><jsp:getProperty name="user" property="name"/></a>
                                            <%}%>
                                        </li>

                                    </ul>
                                </nav>
                            </div>
                            <%if(user.getEmail() == null) {%>
                            <div class="header-right-btn f-right d-none d-lg-block ml-30">
                                <a href="register.jsp" class="btn header-btn">Sign Up</a>
                            </div>
                            <%}%>
                            <%if(user.getEmail() != null) {%>
                            <div class="header-right-btn f-right d-none d-lg-block ml-30">
                                <a href="LogoutServlet" class="btn header-btn">Logout</a>
                            </div>
                            <%}%>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</header>