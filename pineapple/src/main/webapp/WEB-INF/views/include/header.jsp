<%@ page language="java" 
       contentType="text/html; charset=utf-8" 
       pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      

      
      <!-- Header Area Start -->
        <header class="header-area clearfix">
            <!-- Close Icon -->
            <div class="nav-close">
                <i class="fa fa-close" aria-hidden="true"></i>
            </div>
            <!-- Logo -->
            <div class="logo">
                <a href="/pineapple/home"><img src="/pineapple/resources/img/core-img/logo.png" alt=""></a>
            </div>
            
            
            
            <!-- Amado Nav -->
            <nav class="amado-nav">
                 
                <ul>
                    <li class="active"><a href="/pineapple/home">||&nbsp;Home</a></li>
                    <li><a href="/pineapple/upload/pr-listPage">||&nbsp;Product</a></li>
                </ul>
            </nav>
            
            
           
            <!--  Login Button Group -->
            <div class="amado-btn-group mt-30 mb-100">
            <c:choose>
            <c:when test="${ empty loginuser }">
                <a href="/pineapple/account/login" class="btn amado-btn mb-15">Login</a>
                <a href="/pineapple/account/register" class="btn amado-btn active">Register</a>
            </c:when>
            <c:otherwise>               
               <a href="#" class="btn amado-btn active">${ loginuser.memberId }님 </a>
               <a href="/pineapple/account/logout" class="btn amado-btn mb-15">로그아웃</a>
            </c:otherwise>
            </c:choose>
       
            </div>
            
   
           
            <!-- Social Button -->
            <div class="social-info d-flex justify-content-between">
                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div>
        </header>
        <!-- Header Area End -->
        
        
        
        