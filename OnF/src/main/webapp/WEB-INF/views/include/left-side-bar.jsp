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
                        <!-- <li class="sidebar-item"> 
	                        <a class="sidebar-link sidebar-link" href="index.html" aria-expanded="false">
		                        <i data-feather="home" class="feather-icon"></i>
		                        <span class="hide-menu">Dashboard</span>
	                        </a>
                        </li> -->
                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">Work Today</span></li>
						<li>
						<div id="ViewTimer"></div>
						<br/>
						<div class="text-center">
							<button type="button" class="btn waves-effect waves-light btn-rounded btn-secondary"  onclick="TimerStart()">근무 시작하기</button><br/>
						</div>
						</li>

                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">바로가기</span></li>
                        <li class="sidebar-item"> 
                        	<a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
	                        	<i data-feather="file-text" class="feather-icon"></i>
	                        	<span class="hide-menu">일정관리</span>
                        	</a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item">
                                	<a href="form-inputs.html" class="sidebar-link">
                                	<span class="hide-menu">근무일정</span>
                                	</a>
                                </li>
                                <li class="sidebar-item">
	                                <a href="form-input-grid.html" class="sidebar-link">
	                                	<span class="hide-menu">휴가일정</span>
	                               	</a>
                                </li>
                           	</ul>
                        </li>
                        <li class="sidebar-item"> 
                        	<a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
                        		<i data-feather="grid" class="feather-icon"></i>
                        		<span class="hide-menu">부서관리 </span>
                       		</a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item">
	                                <a href="${root}department/dept" class="sidebar-link">
	                                <span class="hide-menu">조직도</span>
	                                </a>
                                </li>
                                <li class="sidebar-item">
	                                <a href="${root}department/mydept" class="sidebar-link">
	                                <span class="hide-menu">팀정보</span>
	                                </a>
                                </li>
                            </ul>
                        </li>
                        <li class="sidebar-item"> 
                        	<a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
                        		<i data-feather="bar-chart" class="feather-icon"></i>
                        		<span class="hide-menu">계정관리 </span>
                       		</a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item"><a href="${root }user/mypage" class="sidebar-link"><span
                                            class="hide-menu"> 개인정보
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="${root }user/profile" class="sidebar-link"><span
                                            class="hide-menu"> 인사정보
                                        </span></a>
                                </li>
                                <li class="sidebar-item">
	                                <a href="#" class="sidebar-link">
	                                <span class="hide-menu">근태정보</span>
	                                </a>
                                </li>
                                <li class="sidebar-item">
	                                <a href="#" class="sidebar-link">
	                                <span class="hide-menu">회사정보(미정)</span>
	                                </a>
                                </li>
                                <li class="sidebar-item"><a href="${root }user/mypage_password" class="sidebar-link"><span
                                            class="hide-menu"> 비밀번호 변경
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="${root }user/mypage_modify" class="sidebar-link"><span
                                            class="hide-menu"> 회원정보 수정
                                        </span></a>
                                </li>
                            </ul>
                        </li>
                       	<li class="list-divider"></li>
                        <li class="nav-small-cap">
                        	<span class="hide-menu">Extra</span>
                       	</li>
	                        <li class="sidebar-item">
	                        	<a href="${root }master/master-emp" class="sidebar-link">
	                        	<span class="hide-menu">관리자모드 전환</span></a>
                            </li>
                        <li class="sidebar-item">
	                        <a class="sidebar-link sidebar-link" href="${root}landing/landing" aria-expanded="false">
	                        	<i data-feather="log-out" class="feather-icon"></i>
	                        	<span class="hide-menu">로그아웃</span>
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
