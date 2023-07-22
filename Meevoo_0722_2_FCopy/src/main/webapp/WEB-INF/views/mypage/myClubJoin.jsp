<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>myClubJoin</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../css/main.lee.css" />
		<link rel="stylesheet" href="../css/profil.lee.css">
		<!-- 제이쿼리 최신 -->
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<style>
			#main1_1 h2{width:300px; border-bottom:1px solid gray; text-align: center; margin: 0 auto 50px;}
			.main1 h2{font-size: 40px; margin: 0 auto;}
			.wrap1{border-top:1px dotted #f56a6a; width:880px; height:800px; margin: 0 auto;}
			#wrap11{width:850px; height:600px; margin: 45px auto 0;}
			#wrap11_1 h4{width:170px; border-bottom: 1px solid lightgray; margin:5px 0 20px;}
			#th1{width:110px; text-align: center;}
			#th3, #th4, #th5{width:100px; text-align: center;}
			#th2{text-align: center;}
			.table-wrapper{text-align: center;}
			#table1{margin:0 0 25px;}
			#numon{background:#f56a6a; color: white; font-weight: 600;
  			/* position: relative; */ top: -15px; width: 20px; height: 22px; !important;
  			margin-left: 3px; margin-right: 3px; /* border: 1px #989898 solid; */
			text-decoration: none;}
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
											<h2>내 운동모임</h2>
										</header>
									</div>

									<div class="wrap1">
										<div id="wrap11">
											<div id="wrap11_1">
												<h4>내가 참여한 운동모임</h4>
											</div>
											<div class="table-wrapper">
												<table id="table1">
													<thead>
														<tr>
															<th id="th1">게시물 번호</th>
															<th id="th2">운동모임 제목</th>
															<th id="th3">위치</th>
															<th id="th4">참여 날짜</th>
															<th id="th5">후기</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="joinlist" items="${list }">
															<tr class="tr1">
																<td>${joinlist.cno }</td>
																<td>${joinlist.cnm }</td>
																<td>${joinlist.dongcate }</td>
																<td>
																	<fmt:formatDate value="${joinlist.cdodate}" pattern="yyyy-MM-dd" />
																</td>
																<td><button onclick="reviewBtn()" class="button small">쓰기</button></td>
															</tr>
														</c:forEach>
														<script>
															function reviewBtn(){ //참여한 운동모임 후기 작성 버튼 
																alert("후기 작성하러 이동합니다.");
															}
														</script>
													</tbody>
												</table>
												<div>
													<ul class="pagination">
														<!-- 첫페이지로 이동 -->
														<c:if test="${pageDto.page !=1 }">
															<a href="/mypage/myClubJoin?page=1" class="button"><li class="page1">처음으로</li></a>
														</c:if>
														<c:if test="${pageDto.page==1 }">
															<li class="page1"><span class="button disabled">처음으로</span></li>
														</c:if>
														<!-- 이전페이지 이동 -->
														<c:if test="${pageDto.page>1 }">
															<a href="/mypage/myClubJoin?page=${pageDto.page-1 }" class="button"><li class="page1">이전</li></a>
														</c:if>
														<c:if test="${pageDto.page==1 }">
								 							<li class="page1"><span class="button disabled">이전</span></li>
														</c:if>
														
														
														<!-- 페이지 리스트 -->
														<c:forEach var="num" begin="${pageDto.startPage}" end="${pageDto.endPage }" step="1">
															<c:if test="${num != pageDto.page }">
																<a href="/mypage/myClubJoin?page=${num }">
																	<li class="page"><div>${num }</div></li>
																</a>
															</c:if>
															<c:if test="${num == pageDto.page }">
																<li id="numon" class="page active"><div>${num }</div></li>
															</c:if>
														</c:forEach>
														
														<!-- 다음페이지 이동 -->
														<c:if test="${pageDto.page<pageDto.maxPage }">
															<a href="/mypage/myClubJoin?page=${pageDto.page+1 }" class="button"><li class="page1">다음</li></a>
														</c:if>
														<c:if test="${pageDto.page==pageDto.maxPage }">
															<li class="page1"><span class="button disabled">다음</span></li>
															
														</c:if>
														<!-- 끝페이지 이동 -->
														<c:if test="${pageDto.page!=pageDto.maxPage }">
															<a href="/mypage/myClubJoin?page=${pageDto.maxPage }" class="button"><li class="page1">끝으로</li></a>
														</c:if>
														<c:if test="${pageDto.page==pageDto.maxPage }">
															<li class="page1"><span class="button disabled">끝으로</span></li>
														</c:if>
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