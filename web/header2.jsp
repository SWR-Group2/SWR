<%-- 
    Document   : header2
    Created on : Jun 13, 2024, 10:24:11 PM
    Author     : thuat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand navbar-light navbar-bg">
            <a class="sidebar-toggle js-sidebar-toggle">
                <i class="hamburger align-self-center"></i>
            </a>

            <div class="navbar-collapse collapse">
                <ul class="navbar-nav navbar-align">
                    
                    
                    <li class="nav-item">
                        <a class="nav-icon js-fullscreen d-none d-lg-block" href="#">
                            <div class="position-relative">
                                <i class="align-middle" data-feather="maximize"></i>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-flag dropdown-toggle" href="#" id="languageDropdown" data-bs-toggle="dropdown" aria-expanded="true">
                            <i class="fa fa-user-o" data-feather="user">My Account</i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="languageDropdown">
                            <a class="dropdown-item" href="userProfile.jsp">
                                <span class="align-middle">Profile</span>
                            </a>
                            <a class="dropdown-item" href="homepage.jsp">
                                <span class="align-middle">Homepage</span>
                            </a>
                            <a class="dropdown-item" href="orderHistory.jsp">
                                <span class="align-middle">My Order</span>
                            </a>
                            <a class="dropdown-item" href="homepage2.jsp">
                                <span class="align-middle">Logout</span>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </body>
</html>
