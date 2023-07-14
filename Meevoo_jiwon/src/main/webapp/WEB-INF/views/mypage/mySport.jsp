<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Generic - Editorial by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../css/main.lee.css" />
		<link rel="stylesheet" href="../css/profil.lee.css">
		<!-- 제이쿼리 최신 -->
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<style>
			#main1_1 h2{width:300px; border-bottom:1px solid gray; text-align: center; margin: 0 auto 50px;}
			.main1 h2{font-size: 40px; margin: 0 auto;}
			.wrap1{border-top:1px dotted #f56a6a; width:880px; height:520px; margin: 0 auto;}
			#wrap11,#wrap12,#wrap13{width:850px; height:450px; margin: 45px auto 0;}
			#wrap11_1 h4{width:170px; border-bottom: 1px solid lightgray; margin:5px 0 20px;}
			.wrap11_2 h4{width:200px; border-bottom: 1px solid lightgray; margin:5px 0 20px;}
			#th1{width:110px; text-align: center;}
			#th3, #th4, #th5{width:100px; text-align: center;}
			#th2{text-align: center;}
			.table-wrapper{text-align: center;}
			#table1{margin:0 0 25px;}
			.page1 a{width:83.02px; height:30.8px; margin: 0 auto;}
			.page1 span{width:83.02px; height:30.8px; margin: 0 auto;}
		</style>
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- top.jsp -->
							<%@ include file="../top.jsp" %>

							<!-- Content -->
								<section>
									<div id=main1_1>
										<header class="main1">
											<h2>내 체육시설</h2>
										</header>
									</div>

									<div class="wrap1">
										<div id="wrap11">
											<div id="wrap11_1">
												<h4>내가 찜한 체육시설</h4>
											</div>
											<div class="table-wrapper">
												<table id="table1">
													<thead>
														<tr>
															<th id="th1">게시물 번호</th>
															<th id="th2">체육시설 이름</th>
															<th id="th3">위치</th>
															<th id="th4">찜 날짜</th>
															<th id="th5">찜 취소</th>
														</tr>
													</thead>
													<tbody>
														<tr class="tr1">
															<td>1</td>
															<td>구로동 클라이밍장~</td>
															<td>구로동</td>
															<td>2023.7.12</td>
															<td><button onclick="clubBtn()" class="button small">삭제</button></td>
														</tr>
														<tr class="tr1">
															<td>2</td>
															<td>구로동 클라이밍장~</td>
															<td>구로동</td>
															<td>2023.7.12</td>
															<td><button onclick="clubBtn()" class="button small">삭제</button></td>
														</tr>
														<tr class="tr1">
															<td>3</td>
															<td>구로동 클라이밍장~</td>
															<td>구로동</td>
															<td>2023.7.12</td>
															<td><button onclick="clubBtn()" class="button small">삭제</button></td>
														</tr>
														<tr class="tr1">
															<td>4</td>
															<td>구로동 클라이밍장~</td>
															<td>구로동</td>
															<td>2023.7.12</td>
															<td><button onclick="clubBtn()" class="button small">삭제</button></td>
														</tr>
														<tr class="tr1">
															<td>5</td>
															<td>구로동 클라이밍장~</td>
															<td>구로동</td>
															<td>2023.7.12</td>
															<td><button onclick="clubBtn()" class="button small">삭제</button></td>
														</tr>
													</tbody>
												</table>
												<div>
													<ul class="pagination">
														<li class="page1"><span class="button disabled">이전</span></li>
														<li><a href="#" class="page active">1</a></li>
														<li><a href="#" class="page">2</a></li>
														<li><a href="#" class="page">3</a></li>
														<li><a href="#" class="page">4</a></li>
														<li><a href="#" class="page">5</a></li>
														<li class="page1"><a href="#" class="button">다음</a></li>
													</ul>
												</div>
												
											</div>
										</div>
									</div>
									
									<div class="wrap1">
										<div id="wrap12">
											<div class="wrap11_2">
												<h4>내가 최근본 체육시설</h4>
											</div>
											<div class="table-wrapper">
												<table id="table1">
													<thead>
														<tr>
															<th id="th1">게시물 번호</th>
															<th id="th2">체육시설 이름</th>
															<th id="th3">위치</th>
															<th id="th4">본 날짜</th>
															<th id="th5">삭제</th>
														</tr>
													</thead>
													<tbody>
														<tr class="tr1">
															<td>1</td>
															<td>구로동 클라이밍장~</td>
															<td>구로동</td>
															<td>2023.7.12</td>
															<td><button onclick="clubBtn()" class="button small">삭제</button></td>
														</tr>
														<tr class="tr1">
															<td>2</td>
															<td>구로동 클라이밍장~</td>
															<td>구로동</td>
															<td>2023.7.12</td>
															<td><button onclick="clubBtn()" class="button small">삭제</button></td>
														</tr>
														<tr class="tr1">
															<td>3</td>
															<td>구로동 클라이밍장~</td>
															<td>구로동</td>
															<td>2023.7.12</td>
															<td><button onclick="clubBtn()" class="button small">삭제</button></td>
														</tr>
														<tr class="tr1">
															<td>4</td>
															<td>구로동 클라이밍장~</td>
															<td>구로동</td>
															<td>2023.7.12</td>
															<td><button onclick="clubBtn()" class="button small">삭제</button></td>
														</tr>
														<tr class="tr1">
															<td>5</td>
															<td>구로동 클라이밍장~</td>
															<td>구로동</td>
															<td>2023.7.12</td>
															<td><button onclick="clubBtn()" class="button small">삭제</button></td>
														</tr>
													</tbody>
												</table>
												<div>
													<ul class="pagination">
													<li class="page1"><span class="button disabled">이전</span></li>
													<li><a href="#" class="page active">1</a></li>
													<li><a href="#" class="page">2</a></li>
													<li><a href="#" class="page">3</a></li>
													<li><a href="#" class="page">4</a></li>
													<li><a href="#" class="page">5</a></li>
													<li class="page1"><a href="#" class="button">다음</a></li>
													</ul>
												</div>
												
											</div>
										</div>
									</div>
									
									<div class="wrap1">
										<div id="wrap13">
											<div class="wrap11_2">
												<h4>내가 작성한 시설후기</h4>
											</div>
											<div class="table-wrapper">
												<table id="table1">
													<thead>
														<tr>
															<th id="th1">게시물 번호</th>
															<th id="th2">체육시설 이름</th>
															<th id="th3">위치</th>
															<th id="th4">날짜</th>
															<th id="th5">삭제</th>
														</tr>
													</thead>
													<tbody>
														<tr class="tr1">
															<td>1</td>
															<td>구로동 클라이밍장~</td>
															<td>구로동</td>
															<td>2023.7.12</td>
															<td><button onclick="deleteBtn()" class="button small">삭제</button></td>
														</tr>
														<tr class="tr1">
															<td>2</td>
															<td>구로동 클라이밍장~</td>
															<td>구로동</td>
															<td>2023.7.12</td>
															<td><button onclick="deleteBtn()" class="button small">삭제</button></td>
														</tr>
														<tr class="tr1">
															<td>3</td>
															<td>구로동 클라이밍장~</td>
															<td>구로동</td>
															<td>2023.7.12</td>
															<td><button onclick="deleteBtn()" class="button small">삭제</button></td>
														</tr>
														<tr class="tr1">
															<td>4</td>
															<td>구로동 클라이밍장~</td>
															<td>구로동</td>
															<td>2023.7.12</td>
															<td><button onclick="deleteBtn()" class="button small">삭제</button></td>
														</tr>
														<tr class="tr1">
															<td>5</td>
															<td>구로동 클라이밍장~</td>
															<td>구로동</td>
															<td>2023.7.12</td>
															<td><button onclick="deleteBtn()" class="button small">삭제</button></td>
														</tr>
													</tbody>
												</table>
												<div>
													<ul class="pagination">
													<li class="page1"><span class="button disabled">이전</span></li>
													<li><a href="#" class="page active">1</a></li>
													<li><a href="#" class="page">2</a></li>
													<li><a href="#" class="page">3</a></li>
													<li><a href="#" class="page">4</a></li>
													<li><a href="#" class="page">5</a></li>
													<li class="page1"><a href="#" class="button">다음</a></li>
													</ul>
												</div>
												
											</div>
										</div>
									</div>




								</section>
								
								<!-- //footer.jsp -->
								<%@ include file="../footer.jsp" %>

						</div>
					</div>

				<!-- sidebar.jsp -->
				<%@ include file="../sidebar.jsp" %>
			</div>

		<!-- Scripts -->
			<script src="../js/jquery.min.js"></script>
			<script src="../js/browser.min.js"></script>
			<script src="../js/breakpoints.min.js"></script>
			<script src="../js/util.js"></script>
			<script src="../js/main.js"></script>

	</body>
</html>