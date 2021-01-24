<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/footer.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(document).ready(function(){
		$('#btn_top').click(function(){
			var offset = $('.my_header').offset(); //선택한 태그의 위치를 반환
                //animate()메서드를 이용해서 선택한 태그의 스크롤 위치를 지정해서 0.4초 동안 부드럽게 해당 위치로 이동함 
	        $('html').animate({scrollTop : offset.top}, 400);
		});
	});

</script>
<!-- <footer class="py-5 bg-dark"> -->
<!-- 	<div class="container"> -->
<!-- 		<p class="m-0 text-center text-white">Copyright &copy; Your -->
<!-- 			Website 2020</p> -->
<!-- 	</div> -->
<!-- 	<!-- /.container --> -->
<!-- </footer> -->
	<footer>
		<div class="footer">
			<div class="f_logo_wrap">
				<a href="http://koreate.net/main/home.php" title="main"><img
					src="${pageContext.request.contextPath }/resources/images/koreate_flogo.png" title="main"
					alt="한국기술교육직업전문학교 흑백의 로고 이미지입니다."></a>
			</div>
			<div class="footer_wrap">
				<span>주소 : (47821)부산광역시 동래구 충렬대로 84 (온천동) │ TEL:051-714-5709 │
					FAX:070-8224-5035 │ E-mail : webmaster@koreate.net</span><br> <span
					class="s_bold">COPYRIGHT ⓒ 한국기술교육직업전문학교<a
					style="color: white;"
					href="http://koreate.net/management/mngemt_main.php">.</a> ALL
					rights Reserved
				</span>
			</div>
			
			<div id="btn_top" class="btn_top" >
				<a href=".my_header">
				<img src="http://koreate.net/imgs/re_main/top_up.png" alt="메인 상단으로 이동" title="top">
				</a>
			</div>
<!-- 			<div id="btn_top" class="btn_top"> -->
<!-- 				<img src="http://koreate.net/imgs/re_main/top_up.png" -->
<!-- 					alt="메인 상단으로 이동" title="top"> -->
<!-- 			</div> -->
		</div>
	</footer>
</html>
