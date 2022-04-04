<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<title>Trang-chủ</title>
<body>
		<div class="hom-slider">
			<div class="container">
				<div id="sequence">

					<div class="sequence-prev">
						<i class="fa fa-angle-left"></i>
					</div>
					<div class="sequence-next">
						<i class="fa fa-angle-right"></i>
					</div>
					<ul class="sequence-canvas">
						<li class="animate-in">
							<div class="flat-caption caption1 formLeft delay300 text-center">
							
								<span class="suphead">THỜI TRANG MỚI CỦA NĂM 2022</span>
							</div>
							<div class="flat-caption caption2 formLeft delay400 text-center">
								<h1>Collection For Winter</h1>
							</div>
							<div class="flat-caption caption3 formLeft delay500 text-center">
								<p>
									Phong cách thời trang ngày càng tinh tế, sang trọng và đầy kỳ vọng của nhiều cô gái. Xu hướng thời trang nữ 2022 dưới đây dự sẽ rất được chào đón, cùng nhau đón xem nhé!
								</p>
							</div>
							<div class="flat-button caption4 formLeft delay600 text-center">
								<a class="more" href="#">More Details</a>
							</div>
							<div class="flat-image formBottom delay200" data-duration="5"
								data-bottom="true">
								<img
									src="<c:url value="/templates/images/sildes/anh1.png"/>"
									alt="">
							</div>
						</li>
						<li>
							<div class="flat-caption caption2 formLeft delay400 text-center">
								<h1>New Fashion of 2013</h1>
							</div>
							<div class="flat-caption caption3 formLeft delay500 text-center">
								<p>
									Lorem Ipsum is simply dummy text of the printing and
									typesetting industry. <br>Lorem Ipsum is simply dummy text
									of the printing and typesetting
								</p>
							</div>
							<div class="flat-button caption4 formLeft delay600 text-center">
								<a class="more" href="#">More Details</a>
							</div>
							<div class="flat-image formBottom delay200" data-bottom="true">
								<img src="<c:url value="/templates/images/sildes/anh4.png"/>"
									alt="">
							</div>
						</li>
						<li>
							<div class="flat-caption caption2 formLeft delay400">
								<h1>Collection For Winter</h1>
							</div>
							<div class="flat-caption caption3 formLeft delay500">
								<h2>
									Etiam velit purus, luctus vitae velit sedauctor<br>egestas
									diam, Etiam velit purus.
								</h2>
							</div>
							<div class="flat-button caption5 formLeft delay600">
								<a class="more" href="#">More Details</a>
							</div>
							<div class="flat-image formBottom delay200" data-bottom="true">
								<img
									src="<c:url value="/templates/images/sildes/anh3.png"/>"
									alt="">
							</div>
						</li>
						<li>
							<div class="flat-caption caption2 formLeft delay400 text-center">
								<h1>New Fashion of 2013</h1>
							</div>
							<div class="flat-caption caption3 formLeft delay500 text-center">
								<p>
									Lorem Ipsum is simply dummy text of the printing and
									typesetting industry. <br>Lorem Ipsum is simply dummy text
									of the printing and typesetting
								</p>
							</div>
							<div class="flat-button caption4 formLeft delay600 text-center">
								<a class="more" href="#">More Details</a>
							</div>
							<div class="flat-image formBottom delay200" data-bottom="true">
								<img
									src="<c:url value="/templates/images/sildes/anh2.png"/>"
									alt="">
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="promotion-banner">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-sm-4 col-xs-4">
							<div class="promo-box">
								<img src="<c:url value="/templates/images/promotion-01.png"/>"
									alt="">
							</div>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-4">
							<div class="promo-box">
								<img src="<c:url value="/templates/images/promotion-02.png"/>"
									alt="">
							</div>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-4">
							<div class="promo-box">
								<img src="<c:url value="/templates/images/promotion-03.png"/>"
									alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div class="featured-products">
		<h3 class="title">
			<strong>SẢN PHẨM </strong> MỚI
		</h3>
		<div class="control">
			<a id="prev_featured" class="prev" href="#">&lt;</a><a
				id="next_featured" class="next" href="#">&gt;</a>
		</div>
		<ul id="featured">
			<li>
				<c:if test="${ products.size() > 0 }">
					<div class="row"></div>
					<c:forEach var="item" items="${ products }" varStatus="loop">
						<div class="col-md-3 col-sm-6">
							<div class="products">
								<div class="offer">new</div>
								<div class="thumbnail">
									<a href="details.html"><img
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
							test="${ (loop.index + 1) % 4 == 0 || (loop.index + 1)  == products.size() }">
							<c:if test="${ (loop.index + 1) < products.size() }">
								<div class="row"></div>
							</c:if>

						</c:if>


					</c:forEach>
				</c:if>
			</li>
		</ul>
	</div>
	<div class="featured-products">
		<h3 class="title">
			<strong>Sản Phẩm</strong> Hot

		</h3>
		<div class="control">
			<a id="prev_featured" class="prev" href="#">&lt;</a><a
				id="next_featured" class="next" href="#">&gt;</a>
		</div>
		<ul id="hot">
	
			<li><c:if test="${ products.size() > 0 }">
					<div class="row"></div>
					
					<c:forEach var="item" items="${ products_new }" varStatus="loop">
						<div class="col-md-3 col-sm-6">
							<div class="products">
								<div class="offer">- %20</div>
								<div class="thumbnail">
									<a href="details.html"><img
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
							test="${ (loop.index + 1) % 4 == 0 || (loop.index + 1)  == products.size() }">
							<c:if test="${ (loop.index + 1) < products.size() }">
								<div class="row"></div>
							</c:if>

						</c:if>


					</c:forEach>
				</c:if></li>
				
			<li></li>
			
		</ul>
		</div>
		<div class="clearfix"></div>
</body>