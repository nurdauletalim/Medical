<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<main>s
    <div class="whole-wrap" style="margin-bottom: 70px; ">
        <div class="container box_1170">


            <div class="section-top-border">
                <div class="row justify-content-md-center">
                    <div class="col-lg-8 col-md-8">
                        <h3 class="mb-30">Login</h3>
                        <form action="LoginServlet" method="post">
                            <div class="mt-10">
                                <input type="email" name="email" placeholder="Email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email address'" required class="single-input">
                            </div>
                            <div class="mt-10">
                                <input type="password" name="password" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'" required class="single-input">
                            </div><br>
                            <button type="submit" class="genric-btn primary-border">Sign in</button>
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
