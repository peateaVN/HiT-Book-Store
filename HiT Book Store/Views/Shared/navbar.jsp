<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/custom.css">
        <link rel="stylesheet" href="assets/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="assets/js/login.js"></script>
        <script src="assets/js/jquery-1.11.0.min.js"></script>
        <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/templatemo.js"></script>
        <script src="assets/js/custom.js"></script>
    </head>
    <body>
       
        <nav class="navbar navbar-fixed-top navbar-expand-lg navbar-light shadow">
            <div class="container d-flex justify-content-between align-items-center">

                
                <c:choose>   
                <c:when test="${sessionScope.ADMIN == null && sessionScope.CUSTOMER == null && sessionScope.TRANSPORTATIONCOMPANY == null}">
                <a class="navbar-brand text-success logo h1 align-self-center" href="home.jsp">
                    <img src="assets/img/logo.png" width="200" height="50" />
                </a>

                <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="align-self-center collapse navbar-collapse flex-fill d-lg-flex justify-content-lg-between" id="templatemo_main_nav">    
                    <div class="flex-fill">                        
                        <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <li class="nav-item">
                                <a class="nav-link" href="home.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="home.jsp">View all trip</a>
                                <ul class="dropdown">
                                    <c:forEach var="type" items="${applicationScope.LIST_TYPE_CAR}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="${pageContext.request.contextPath}/SearchCateController?carTypeID=${type.carTypeName}">${type.carTypeName}</a>
                                        </li>  
                                    </c:forEach>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="home.jsp">View car type<i class="fas fa-chevron-down"></i></a>
                                <ul class="dropdown">
                                    <c:forEach var="type" items="${applicationScope.LIST_TYPE_CAR}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="${pageContext.request.contextPath}/SearchCateController?carTypeID=${type.carTypeName}">${type.carTypeName}</a>
                                        </li>  
                                    </c:forEach>                                                                           
                                </ul>
                            </li>
                            
                        </ul>
                    </div>
                                        
                        <div  class="search-box">                       
                            <input class="search-input" type="text" name="search" value="" placeholder="Search here...">
                            <i class="fa fa-fw fa-search text-purple mr-3 text-decoration-none">
                                <input type="hidden" name="action" value="Search"/>
                            </i>                          
                        </div>
                    &nbsp;&nbsp;&nbsp;  
                    <div class="search-box d-flex">                               
                        <a href="cart.jsp" class="search-btn">
                            <i class="fa fa-fw fa-ticket-alt text-purple mr-3 text-decoration-none"></i>
                            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill border border-2 border-purple bg-white text-purple"></span>
                        </a>                           
                    </div>
                    &nbsp;&nbsp;&nbsp;  
                    
                    <div class="search-box d-flex">                       
                        <input class="input-group-alt" type="button" name="search" value="Login" >
                        <a href="login.jsp" class="search-btn">
                            <i class="fa fa-fw fa fa-sign-in-alt text-purple mr-3 text-decoration-none"></i>
                        </a>                               
                    </div>
                </div>
                 </c:when>
                
                <c:when test="${sessionScope.ADMIN != null}">
                <a class="navbar-brand text-success logo h1 align-self-center" href="home.jsp">
                    Hello Adminstrator ${sessionScope.ADMIN.fullName}
                </a>

                <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="align-self-center collapse navbar-collapse flex-fill d-lg-flex justify-content-lg-between" id="templatemo_main_nav">    
                    <div class="flex-fill">                        
                        <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <li class="nav-item">
                                <a class="nav-link" href="home.jsp">View accounts<i class="fas fa-chevron-down"></i></a>
                                <ul class="dropdown">
                                    <c:forEach begin="0" end="1">
                                        <li class="nav-item">
                                            <a class="nav-link" href="">Customer accounts</a>
                                        </li>  
                                    </c:forEach>                                                                           
                                </ul>
                            </li>
                            
                        </ul>
                    </div>                           
                    
                                        
                        <div  class="search-box">                       
                            <input class="search-input" type="text" name="search" value="" placeholder="Search here...">
                            <i class="fa fa-fw fa-search text-purple mr-3 text-decoration-none">
                                <input type="hidden" name="action" value="Search"/>
                            </i>                          
                        </div>
                    &nbsp;&nbsp;&nbsp;  
                    <form action="MainController">    
                        <div class="search-box d-flex">                       
                            <input class="input-group-alt" type="button" name="search" value="Logout" >
                                <a href="./LogoutServlet" class="search-btn">
                                    <i class="fa fa-fw fa-sign-out-alt text-purple mr-3 text-decoration-none"></i>
                                </a>                               
                        </div>
                    </form> 
                </div>
                 </c:when>
                
                <c:when test="${sessionScope.CUSTOMER != null}">
                    <a class="navbar-brand text-success logo h1 align-self-center" href="home.jsp">
                    <img src="assets/img/logo.png" width="200" height="50" />
                </a>

                <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="align-self-center collapse navbar-collapse flex-fill d-lg-flex justify-content-lg-between" id="templatemo_main_nav">    
                    <div class="flex-fill">                        
                        <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <li class="nav-item">
                                <a class="nav-link" href="home.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="home.jsp">View all trip</a>
                                <ul class="dropdown">
                                    <c:forEach var="type" items="${applicationScope.LIST_TYPE_CAR}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="${pageContext.request.contextPath}/SearchCateController?carTypeID=${type.carTypeName}">${type.carTypeName}</a>
                                        </li>  
                                    </c:forEach>                                                                           
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="home.jsp">View car type<i class="fas fa-chevron-down"></i></a>
                                <ul class="dropdown">
                                    <c:forEach var="type" items="${applicationScope.LIST_TYPE_CAR}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="${pageContext.request.contextPath}/SearchCateController?carTypeID=${type.carTypeName}">${type.carTypeName}</a>
                                        </li>  
                                    </c:forEach>                                                                           
                                </ul>
                            </li>
                        </ul>
                    </div>
                                        
                        <div  class="search-box">                       
                            <input class="search-input" type="text" name="search" value="" placeholder="Search here...">
                            <i class="fa fa-fw fa-search text-purple mr-3 text-decoration-none">
                                <input type="hidden" name="action" value="Search"/>
                            </i>                          
                        </div>
                    &nbsp;&nbsp;&nbsp;  
                    <div class="search-box d-flex">                               
                        <a href="cart.jsp" class="search-btn">
                            <i class="fa fa-fw fa-ticket-alt text-purple mr-3 text-decoration-none"></i>
                            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill border border-2 border-purple bg-white text-purple"></span>
                        </a>                           
                    </div>
                    &nbsp;&nbsp;&nbsp;  
                    
                    <div class="search-box d-flex">                       
                        <input class="input-group" type="button" name="search" value="Welcome ${sessionScope.CUSTOMER.fullName}" >
                        <a href="pageCustomer.jsp" class="search-btn">
                            <i class="fa fa-fw fa-users text-purple mr-3 text-decoration-none"></i>
                        </a>                               
                    </div>
                        
                    &nbsp;&nbsp;&nbsp;  
                    <form action="MainController">    
                        <div class="search-box d-flex">                       
                            <input class="input-group-alt" type="button" name="search" value="Logout" >
                                <a href="./LogoutServlet" class="search-btn">
                                    <i class="fa fa-fw fa-sign-out-alt text-purple mr-3 text-decoration-none"></i>
                                </a>                               
                        </div>
                    </form> 
                </div>
                 </c:when>
                
                <c:when test="${sessionScope.TRANSPORTATIONCOMPANY != null}">
                <div class="align-self-center collapse navbar-collapse flex-fill d-lg-flex justify-content-lg-between" id="templatemo_main_nav">    
                    <div class="flex-fill">                        
                        <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <li class="nav-item">
                                <a class="nav-link" href="home.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link">Category<i class="fas fa-chevron-down"></i></a>
                                <ul class="dropdown">
                                    <li class="nav-item">
                                        <a class="nav-link" href="">text1</a>
                                    </li> 
                                    <li class="nav-item">
                                        <a class="nav-link" href="">text2</a>
                                    </li> 
                                    <li class="nav-item">
                                        <a class="nav-link" href="">text3</a>
                                    </li> 
                                    <li class="nav-item">
                                        <a class="nav-link" href="">text4</a>
                                    </li>     
                                </ul>
                            </li>
                        </ul>
                    </div>
                                        
                        <div  class="search-box">                       
                            <input class="search-input" type="text" name="search" value="" placeholder="Search here...">
                            <i class="fa fa-fw fa-search text-purple mr-3 text-decoration-none">
                                <input type="hidden" name="action" value="Search"/>
                            </i>                          
                        </div>
                    &nbsp;&nbsp;&nbsp;  
                    <div class="search-box d-flex">                               
                        <a href="cart.jsp" class="search-btn">
                            <i class="fa fa-fw fa-ticket-alt text-purple mr-3 text-decoration-none"></i>
                            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill border border-2 border-purple bg-white text-purple"></span>
                        </a>                           
                    </div>
                    &nbsp;&nbsp;&nbsp;  
                    
                    <div class="search-box d-flex">                       
                        <input class="input-group" type="button" name="search" value="Welcome ${sessionScope.TRANSPORTATIONCOMPANY.fullName}" >
                        <a href="pageCompany    .jsp" class="search-btn">
                            <i class="fa fa-fw fa-users text-purple mr-3 text-decoration-none"></i>
                        </a>                               
                    </div>
                        
                    &nbsp;&nbsp;&nbsp;  
                    <form action="MainController">    
                        <div class="search-box d-flex">                       
                            <input class="input-group-alt" type="button" name="search" value="Logout" >
                                <a href="./LogoutServlet" class="search-btn">
                                    <i class="fa fa-fw fa-sign-out-alt text-purple mr-3 text-decoration-none"></i>
                                </a>                               
                        </div>
                    </form> 
                </div>
                 </c:when>
                </c:choose>
            </div>
        </nav>  
        

    </body>
</html>
