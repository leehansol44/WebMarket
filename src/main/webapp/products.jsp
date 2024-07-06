<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품목록</title>
</head>
<body>

	<%@ include file="menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품목록</h1>
		</div>
	</div>
	<%
		//useBean 액션 태그의 id 속성 값을 통해 ProductRepository 클래스의 getAllProducts()메소드를 호출하여 반환된 결과 값을 
		//ArrayList<Product> 객체 타입의 변수 listOfProducts에 저장하도록 스크립틀릿 태그를 작성한다. 
		ArrayList<Product> listOfProducts = productDAO.getAllProducts();
	
	%>
	
	<div class="container">
		<div class="row" align="center">
			<%
			
			//객체타입의 변수 listOfProducts에 저장된 상품 목록 개수만큼 실행하도록 반복문을 작성한다. 
				for(int i = 0; i <listOfProducts.size(); i++ ){
					Product product = listOfProducts.get(i);//상품 정보를 가져와 Product객체 타입의 변수 product에 저장하도록 작성한다. 
			
			%>
			<div class="col-md-4">
				<!-- Product 객체 타입의 변수 product에 저장된 상품명, 상품 상세 정보, 상품 가격을 출력하도록 표현문 태그를 작성한다.  -->
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %>
				<p><%=product.getUnitPrice() %>
				<p><a href="./product.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button">상세 정보 &raquo;> </a>
			</div>
			<%
			//위에 반복문 시작을 닫도록 스크립틀릿 태그를 작성한다. 
				}
			%>
		</div>	
		<hr>
	</div>
	
	
	<%@ include file="footer.jsp" %>
</body>
</html>