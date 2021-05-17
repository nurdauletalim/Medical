<%--
  Created by IntelliJ IDEA.
  User: Nurdaulet
  Date: 06.05.2021
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<main>
    <div class="whole-wrap">
        <div class="container box_1170">


            <div class="section-top-border">
                <div class="row justify-content-md-center">
                    <div class="col-lg-8 col-md-8">
                        <h3 class="mb-30">Registration</h3>
                        <form action="RegisterServlet" method="post">
                            <div class="mt-10">
                                <input type="text" name="name" placeholder="Full Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Full Name'" required class="single-input">
                            </div>
                            <div class="mt-10">
                                <input type="email" name="email" placeholder="Email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email address'" required class="single-input">
                            </div>
                            <div class="mt-10">
                                <input type="text" name="iin" placeholder="IIN" onfocus="this.placeholder = ''" onblur="this.placeholder = 'IIN'" required class="single-input">
                            </div>
                            <div class=" mt-10">
                                <input type="password" name="password" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'" required class="single-input">
                            </div>
                            <div class="mt-10">
                                <input type="text" name="city" placeholder="City" onfocus="this.placeholder = ''" onblur="this.placeholder = 'City'" required class="single-input">
                            </div>
                            <div class="mt-10">
                                <input type="text" name="address" placeholder="Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Address'" required class="single-input">
                            </div>
                            <br>
                            <button class="genric-btn primary-border" type="submit">Sign up</button>
                        </form>
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
