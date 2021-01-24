<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
    

<div id="wrapper">
	<%@ include file="../include/side.jsp" %>
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<%@ include file="../include/nav.jsp" %>				
						
			<div class="container-fluid">
				<table class="boardTable table table-hover">
					<tr>
						<th>글번호</th>
						<th>분류</th>
						<th>제목</th>			
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
					<%
						
					%>
					<c:forEach var="board" items="${boardList}" varStatus="idx">
					<tr>
						<td <c:if test="${board.authority eq 2 }">style="font-weight:bold"</c:if>>${board.num}</td>
						<td <c:if test="${board.authority eq 2 }">style="font-weight:bold"</c:if>>
							<c:choose>
								<c:when test="${board.authority eq 1}">
									일반
								</c:when>
								<c:when test="${board.authority eq 2}">
									공지
								</c:when>
							</c:choose>
						</td>
						<td <c:if test="${board.authority eq 2 }">style="font-weight:bold"</c:if>><a href="${pageContext.request.contextPath }/ReadBoardAction.board?num=${board.num}">${board.subject }</a></td>
						<td <c:if test="${board.authority eq 2 }">style="font-weight:bold"</c:if>>${board.name }</td>
						<td <c:if test="${board.authority eq 2 }">style="font-weight:bold"</c:if>>${board.regdate }</td>
						<td <c:if test="${board.authority eq 2 }">style="font-weight:bold"</c:if>>${board.hit }</td>
					</tr>
					</c:forEach>
				</table>
			</div>
			
		</div><!-- .content -->
	</div><!-- .content-wrapper -->
</div>
 <script type="text/javascript">
//  	$(document).ready(function(){
//  		var result = '<c:out value="${result}"/>';
 		
//  		//Sb Admin에서 제공하는 버튼등을 작동안하게 설정 2020-07-29
//  		$("#dataList").DataTable({		//기존 dataTables-example에서 dataList로 테이블 id 변경함
//  			"paging":false,
//  			"ordering":false,
//  			"info":false,			//페이지당 자료 갯수
//  			"searching":false		//검색창
//  		});
 		
//  		checkModal(result);
 		
//  		//뒤로가기시 문제점 처리 보완
//  		history.replaceState({},null,null);
 		
//  		function checkModal(result){
//  			if(result==='' || history.state){
//  				return;
//  			}
//  			if(parseInt(result) > 0){
//  				//마지막 등록한 게시물 번호 
//  				$(".modal-body").html("게시글 " + parseInt(result) + " 번이 등록되었습니다.");
//  			}  			
//  			//모달창 보여주기
//  			$("#myModal").modal("show");
//  		}
//  		$("#regBtn").on("click", function(){
//  			self.location ="${pageContext.request.contextPath}/board/register";
//  		});
 		
//  		var actionForm = $("#actionForm");
 		
//  		$(".paginate_button a").on("click",function(e){
//  			e.preventDefault();
//  			console.log("click");
//  			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
//  			actionForm.submit();
//  		});
 		
//  		$(".move").on("click",function(e){
//  			e.preventDefault();
//  			actionForm.append("<input type='hidden' name='bno' value='"+ $(this).attr("href") +"'>");
//  			actionForm.attr("action","${pageContext.request.contextPath}/board/get");
//  			actionForm.submit();
//  		});
 		
//  	});
 	
 	///////////////
 	//08.05 검색 버튼의 이벤트 처리 
 	
 	var searchForm = $("#searchForm");
 	
 	$("#searchForm button").on("click", function(e){
 		if(!searchForm.find("option:selected").val()){
 			alert("검색종류를 선택하세요");
 			return false;
 		}
 		
 		if(!searchForm.find("input[name='keyword']").val()){
 			alert("키워드를 입력하세요");
 			return false;
 		}
 		
 		searchForm.find("input[name='pageNum']").val("1");
 		e.preventDefault();
 		
 		searchForm.submit();
 	});
 
 </script>
 
 
 
  