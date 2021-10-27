<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!-- 좌측사이드바부분 -->
	<!-- ============================================================== -->
	<!-- Left Sidebar - style you can find in sidebar.scss  -->
	<!-- ============================================================== -->
	<aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar" data-sidebarbg="skin6">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><strong style="font-weight:800" class="hide-menu">직원 관리</strong></li>

                        <li class="sidebar-item"> 
                        	<a class="sidebar-link" href="${root }master/master-emp" aria-expanded="false">
                        		<i data-feather="tag" class="feather-icon"></i>
                        		<span class="hide-menu"> 직원 목록 </span>
                        	</a>
                        </li>
                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><strong style="font-weight:800" class="hide-menu">휴가 관리</strong></li>

                        <li class="sidebar-item"> 
                        	<a class="sidebar-link" href="${root }master/vaq_approve" aria-expanded="false">
                        		<i data-feather="tag" class="feather-icon"></i>
                        		<span class="hide-menu"> 휴가 목록 </span>
                        	</a>
                        </li>
                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><strong style="font-weight:800" class="hide-menu">부서 관리</strong></li>
                        <li class="sidebar-item"> 
                        	<a class="sidebar-link" href="${root }master/master-work" aria-expanded="false">
                        		<i data-feather="tag" class="feather-icon"></i>
                        		<span class="hide-menu"> 부서 목록 </span>
                        	</a>
                        </li>
                         <li class="list-divider"></li>
                        <li class="nav-small-cap"><strong style="font-weight:800" class="hide-menu">근태 관리</strong></li>
                        <li class="sidebar-item"> 
                        	<a class="sidebar-link" href="${root }master/master-worktype" aria-expanded="false">
                        		<i data-feather="tag" class="feather-icon"></i>
                        		<span class="hide-menu"> 근무 유형 목록 </span>
                        	</a>
                        </li>
                        <li class="list-divider"></li>
                        
                        <li class="nav-small-cap">
                        	<span class="hide-menu">회사 설정</span>
                        </li>
                        <li class="sidebar-item"> 
                        	<a class="sidebar-link sidebar-link" href="${root }master/companySettings" aria-expanded="false">
                        		<i class="icon-action-redo"></i>
                        		<span class="hide-menu">마스터 변경</span>
                        	</a>
                        </li>
                        <li class="sidebar-item"> 
                        	<a class="sidebar-link sidebar-link" href="${root }master/companyDelete" aria-expanded="false">
                        		<i class="fas fa-trash-alt"></i>
                        		<span class="hide-menu">회사 삭제</span>
                        	</a>
                        </li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
	<!-- ============================================================== -->
	<!-- End Left Sidebar - style you can find in sidebar.scss  -->
	<!-- ============================================================== -->
