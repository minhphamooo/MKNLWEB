<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<title>Danh sách - sản phẩm</title>
<style>
.center {
	text-align: center;
}

.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
	margin: 0 4px;
}

.pagination a.active {
	background-color: #329fca;
	color: white;
	border: 1px solid #329fca;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}
</style>

</head>


<body>

	<div class="featured-products">
		<h5 class="title">
			<strong> Danh sách </strong>sản phẩm <select class="pull-right">
				<option>A - Z</option>
				<option>Cao - Thấp</option>
			</select>
		</h5>
	</div>
	<ul id="featured">
		<li><c:if test="${ productsPaginate.size() > 0 }">
				<div class="row"></div>
				<c:forEach var="item" items="${ productsPaginate }" varStatus="loop">
					<div class="col-md-3 col-sm-6">
						<div class="products">
							<div class="offer">new</div>
							<div class="thumbnail">
								<a href="<c:url value="/chi-tiet/${item.id_product }"/>"><img
									src="<c:url value="/templates/images/products/small/${item.img }"/>"
									alt="Product Name"></a>
							</div>

							<div class="productname">
								<h5>${ item.name }</h5>
							</div>

							<h4 class="price">
								<fmt:formatNumber type="number" groupingUsed="true"
									value="${ item.price }" />
								vnđ
							</h4>
							<div class="button_group">
								<button class="button add-cart" type="button">Add To
									Cart</button>
								<button class="button compare" type="button">
									<i class="fa fa-exchange"></i>
								</button>
								<button class="button wishlist" type="button">
									<i class="fa fa-heart-o"></i>
								</button>
							</div>
						</div>
					</div>
					<c:if
						test="${ (loop.index + 1) % 4 == 0 || (loop.index + 1)  == productsPaginate.size() }">
						<c:if test="${ (loop.index + 1) < productsPaginate.size() }">
							<div class="row"></div>
						</c:if>

					</c:if>


				</c:forEach>
			</c:if></li>
	</ul>
	<div class="center">
		<div class="pagination">
			<c:forEach var="item" begin="1"
				end="${paginateInfo.totalPage}" varStatus="loop">
				<c:if test="${ (loop.index) == paginateInfo.currentPage}">
				<a href="<c:url value="/san-pham/${idCategory}/${loop.index}"/>" class="active">${loop.index }</a>	
				</c:if>
				<c:if test="${ (loop.index) != paginateInfo.currentPage}">
				<a href="<c:url value="/san-pham/${idCategory}/${loop.index}"/>" >${loop.index }</a>
				</c:if>
			</c:forEach>
		</div>
	</div>
</body>