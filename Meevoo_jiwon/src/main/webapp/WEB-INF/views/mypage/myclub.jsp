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
			#main1_1 h2{text-align: center;}
			.main1 h2{font-size: 40px; margin: 0 auto;}
			.wrap1{border:1px solid black; width:800px; height:400px; margin: 0 auto;}
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
										
										</div>
									</div>
									
									<div class="wrap1">
										<div id="wrap12">
										
										</div>
									</div>
									
									<div class="wrap1">
										<div id="wrap13">
										
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