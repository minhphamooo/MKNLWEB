<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body id="home">
	<div class="wrapper">
		<div class="header">
			<div class="container">
				<div class="row">
					<div class="col-md-2 col-sm-2">
						<div class="logo">
							<a href="index.html"><img
								src="<c:url value="/templates/images/logo.png"/>" alt="FlatShop"></a>
						</div>
					</div>
					<div class="col-md-10 col-sm-10">
						<div class="header_top">
							<div class="row">
								<div class="col-md-3">
									<ul class="option_nav">
										<li class="dorpdown"><a href="#">Eng</a>
											<ul class="subnav">
												<li><a href="#">Eng</a></li>
												<li><a href="#">Vns</a></li>
											</ul></li>
										<li class="dorpdown"><a href="#">USD</a>
											<ul class="subnav">
												<li><a href="#">USD</a></li>
												<li><a href="#">UKD</a></li>

											</ul></li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul class="topmenu">
										<li><a href="#">Liên hệ</a></li>
										<li><a href="#">Tin tức</a></li>
										<li><a href="#">Dịch vụ</a></li>
										<li><a href="#">Tuyển dụng</a></li>
										<li><a href="#">Hỗ trợ</a></li>
									</ul>
								</div>
								<div class="col-md-3">
									<ul class="usermenu">
										<li><a href="checkout.html" class="log">Đăng nhập</a></li>
										<li><a href="checkout2.html" class="reg">Đăng ký</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="header_bottom">
							<ul class="option">
								<li id="search" class="search">
									<form>
										<input class="search-submit" type="submit" value=""><input
											class="search-input" placeholder="Tìm kiếm sản phẩm..."
											type="text" value="" name="search">
									</form>
								</li>
								<li class="option-cart"><a href="#" class="cart-icon">cart
										<span class="cart_no">02</span>
								</a>
									<ul class="option-cart-item">
										<li>
											<div class="cart-item">
												<div class="image">
													<img
														src="<c:url value="/templates/images/products/thum/products-04.png"/>"
														alt="">
												</div>
												<div class="item-description">
													<p class="name">Lincoln chair</p>
													<p>
														Size: <span class="light-red">One size</span><br>Quantity:
														<span class="light-red">01</span>
													</p>
												</div>
												<div class="right">
													<p class="price">$30.00</p>
													<a href="#" class="remove"><img
														src="<c:url value="/templates/images/remove.png"/>"
														alt="remove"></a>
												</div>
											</div>
										</li>
										<li>
											<div class="cart-item">
												<div class="image">
													<img
														src="<c:url value="/templates/images/products/thum/products-02.png"/>"
														alt="">
												</div>
												<div class="item-description">
													<p class="name">Lincoln chair</p>
													<p>
														Size: <span class="light-red">One size</span><br>Quantity:
														<span class="light-red">01</span>
													</p>
												</div>
												<div class="right">
													<p class="price">$30.00</p>
													<a href="#" class="remove"><img
														src="<c:url value="/templates/images/remove.png"/>"
														alt="remove"></a>
												</div>
											</div>
										</li>
										<li><span class="total">Total <strong>$60.00</strong></span>
											<button class="checkout"
												onClick="location.href='checkout.html'">CheckOut</button></li>
									</ul></li>
							</ul>
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse" data-target=".navbar-collapse">
									<span class="sr-only">Toggle navigation</span><span
										class="icon-bar"></span><span class="icon-bar"></span><span
										class="icon-bar"></span>
								</button>
							</div>
							<div class="navbar-collapse collapse">
								<ul class="nav navbar-nav">
									<li class="active dropdown"><a href="#"
										class="dropdown-toggle" data-toggle="dropdown">THƯƠNG HIỆU</a>
										<div class="dropdown-menu">
											<ul class="mega-menu-links">
												<c:forEach var="item" items="${ categorys }">
													<li><a href='<c:url value="/san-pham/${item.id}"/>'><span
															class="icon-circle-blank"></span> ${item.name}</a></li>


												</c:forEach>
											</ul>
										</div></li>
									<li><a href="productgird.html">NAM</a></li>
									<li><a href="productgird.html">NỮ</a></li>								
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown">Thời trang</a>
										<div class="dropdown-menu mega-menu">
											<div class="row">
												<div class="col-md-6 col-sm-6">
													<ul class="mega-menu-links">
														<li><a href="productgird.html">New Collection</a></li>
														<li><a href="productgird.html">Shirts x tops</a></li>

														<li><a href="productgird.html">Dresses</a></li>
														<li><a href="productgird.html">Blazers x Jackets</a></li>
														<li><a href="productgird.html">Shoulder x Bags</a></li>
													</ul>
												</div>
												<div class="col-md-6 col-sm-6">
													<ul class="mega-menu-links">
														<li><a href="productgird.html">New Collection</a></li>
														<li><a href="productgird.html">Shirts x tops</a></li>
														<li><a href="productgird.html">Laptop x Brie</a></li>
														<li><a href="productgird.html">Dresses</a></li>
														<li><a href="productgird.html">Blazers x Jackets</a></li>
														<li><a href="productgird.html">Shoulder Bags</a></li>
													</ul>
												</div>
											</div>
										</div></li>
									<li><a href="productgird.html">HÀNG MỚI</a></li>
									<li><a href="productgird.html">SALE</a></li>
									<li><a href="productgird.html">PHỤ KIỆN</a></li>
									<li><a href='<c:url value="/thong-tin/"/>'>THÔNG TIN</a></li>

								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>