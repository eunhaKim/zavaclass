<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<%
  int level = session.getAttribute("sLevel")==null ? 999 : (int) session.getAttribute("sLevel");
  pageContext.setAttribute("level", level);
%>
<!-- Topbar Start -->
<div class="container-fluid">
    <div class="row py-1 px-xl-5">
        <div class="col-lg-6 d-none d-lg-block">
            <div class="d-inline-flex align-items-center h-100">
                <a class="text-body mr-3" href="">About</a>
                <a class="text-body mr-3" href="">Contact</a>
                <a class="text-body mr-3" href="">Help</a>
                <a class="text-body mr-3" href="">FAQs</a>
            </div>
        </div>
        <div class="col-lg-6 text-center text-lg-right">
            <div class="d-inline-flex align-items-center">
                <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">My Account</button>
                    <div class="dropdown-menu dropdown-menu-right">
                    	<c:if test="${level > 4}">
                        <button class="dropdown-item" type="button" onclick="location.href='MemberLogin.mem'">로그인</button>
                        <button class="dropdown-item" type="button">회원가입</button>
                      </c:if>
                      <c:if test="${level <= 4}">
                      	<button class="dropdown-item" type="button">로그아웃</button>
                      	<button class="dropdown-item" type="button">회원정보수정</button>
                      	<button class="dropdown-item" type="button">회원탈퇴</button>
                      </c:if>
                      <c:if test="${level == 0}">
                      	<button class="dropdown-item" type="button">회원리스트</button>
                      	<button class="dropdown-item" type="button">관리자메뉴</button>
                      </c:if>
                    </div>
                </div>
                <!-- <div class="btn-group mx-2">
                    <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">USD</button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <button class="dropdown-item" type="button">EUR</button>
                        <button class="dropdown-item" type="button">GBP</button>
                        <button class="dropdown-item" type="button">CAD</button>
                    </div>
                </div> -->
                <!-- <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">EN</button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <button class="dropdown-item" type="button">FR</button>
                        <button class="dropdown-item" type="button">AR</button>
                        <button class="dropdown-item" type="button">RU</button>
                    </div>
                </div> -->
            </div>
            <div class="d-inline-flex align-items-center d-block d-lg-none">
                <a href="" class="btn px-0 ml-2">
                    <i class="fas fa-heart text-dark"></i>
                    <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
                </a>
                <a href="" class="btn px-0 ml-2">
                    <i class="fas fa-shopping-cart text-dark"></i>
                    <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
                </a>
            </div>
        </div>
    </div>
    <div class="row bg-light align-items-center py-3 px-xl-5 d-none d-lg-flex">
        <div class="col-lg-4">
            <a href="${ctp}/Main" class="text-decoration-none">
                <span class="h1 text-primary px-2"><i class="fa-solid fa-video"></i></span>
                <span class="h1 text-dark px-2">Movie</span>
                <span class="h1 text-dark px-2 ml-n1">Review</span>
            </a>
        </div>
        <div class="col-lg-4 col-6 text-left">
            <form action="">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for movie">
                    <div class="input-group-append">
                        <span class="input-group-text bg-transparent text-primary">
                            <i class="fa fa-search"></i>
                        </span>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-lg-4 col-6 text-right">
            <p class="m-0">Customer Service</p>
            <h5 class="m-0">010-2622-0194</h5>
        </div>
    </div>
</div>
<!-- Topbar End -->