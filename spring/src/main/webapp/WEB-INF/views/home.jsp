<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet" />
<!-- Custom styles for this template -->
<!-- Bootstrap core JavaScript -->
<script	src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script	src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
<style>
	.my_slide_img{
		height:300px;
		width: 100%;
	}
</style>
<body>
	<!-- Navigation -->
	<%@ include file="./include/home_nav.jsp"%>

	<!-- Header -->
	<header class="bg-primary py-5 mb-5 my_header">
<!-- 		<div class="container h-100"> -->
<!-- 			<div class="row h-100 align-items-center"> -->
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<h1 class="display-4 text-white mt-5 mb-2">테스트 페이지</h1>
					<p class="lead mb-1 text-white-50">동해 물과 백두산이 마르고 닳도록 하느님이 보우하사
						우리나라 만세. 무궁화 삼천리 화려 강산 대한 사람, 대한으로 길이 보전하세.</p>
					<p class="lead mb-1 text-white-50">남산 위에 저 소나무, 철갑을 두른 듯 바람 서리
						불변함은 우리 기상일세. 무궁화 삼천리 화려 강산 대한 사람, 대한으로 길이 보전하세.</p>
					<p class="lead mb-1 text-white-50">가을 하늘 공활한데 높고 구름 없이 밝은 달은 우리
						가슴 일편단심일세. 무궁화 삼천리 화려 강산 대한 사람, 대한으로 길이 보전하세.</p>
					<p class="lead mb-1 text-white-50">이 기상과 이 맘으로 충성을 다하여 괴로우나
						즐거우나 나라 사랑하세. 무궁화 삼천리 화려 강산 대한 사람, 대한으로 길이 보전하세.</p>
				</div>
			</div>
		</div>
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-blockv my_slide_img" src="${pageContext.request.contextPath }/resources/images/pexels-photo-1.jpeg" alt="First slide">
<%-- 					<img class="d-block w-100" src="${pageContext.request.contextPath }/resources/images/pexels-photo-1.jpeg" alt="First slide">					 --%>
				</div>
				<div class="carousel-item">
					<img class="d-block my_slide_img" src="${pageContext.request.contextPath }/resources/images/pexels-photo-2.jpeg" alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block my_slide_img" src="${pageContext.request.contextPath }/resources/images/pexels-photo-3.jpeg" alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>


	</header>

	<!-- Page Content -->
	<div class="container">

		<div class="row">
			<div class="col-md-8 mb-5">
				<h2>What We Do</h2>
				<hr>
				<p>이제 뭘 할까?</p>
				<p>내용</p>
				<a class="btn btn-primary btn-lg" href="#">Call to Action&raquo;</a>
			</div>
			<div class="col-md-4 mb-5">
				<h2>Contact Us</h2>
				<hr>
				<address>
					<strong>자바 웹 개발</strong> <br>부산광역시 동래구 충렬대로 84<br>영남빌딩
					901호<br>
				</address>
				<address>
					<abbr title="Phone">P:</abbr> (123) 456-7890 <br> <abbr
						title="Email">E:</abbr> <a href="mailto:#">ruckseven@naver.com</a>
				</address>
			</div>
		</div>
		<!-- /.row -->

		<div class="row">
			<div class="col-md-4 mb-5">
				<div class="card h-100">
					<img class="card-img-top"
						src="${pageContext.request.contextPath }/resources/images/20200905_203310216.jpg"
						alt="망했습니다.">
					<div class="card-body">
						<h4 class="card-title">망했어요</h4>
						<p class="card-text">망했어요</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-primary">ㅇㅋ</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 mb-5">
				<div class="card h-100">
					<img class="card-img-top" src="https://placehold.it/300x200" alt="">
					<div class="card-body">
						<h4 class="card-title">부트스트랩</h4>
						<p class="card-text">결국 이러고 있다</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-primary">Find Out More!</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 mb-5">
				<div class="card h-100">
					<img class="card-img-top" src="https://placehold.it/300x200" alt="">
					<div class="card-body">
						<h4 class="card-title">Card title</h4>
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Sapiente esse necessitatibus neque.</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-primary">Find Out More!</a>
					</div>
				</div>
			</div>
		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<%@ include file="./include/footer.jsp"%>

</body>
</html>
