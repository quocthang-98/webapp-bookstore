<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
</head>
<body>
	<header class="bg-dark py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="text-center text-white">
				<h1 class="display-4 fw-bolder">The World of Ideas</h1>
				<p class="lead fw-normal text-white-50 mb-0">The books you choose tell people who you truly are.</p>
			</div>
		</div>
	</header>
	
	<!-- Section-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
		<div class="home-slider owl-carousel js-fullheight">
      <div class="slider-item js-fullheight" style="background-image:url(./template/images/slider-1.jpg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
	          <div class="col-md-12 ftco-animate">
	          	<div class="text w-100 text-center">
	          		<h2>Book Of The Week</h2>
		            <h1 class="mb-3">The Godfather</h1>
		            <h3>Mario Puzzo</h3>
	            </div>
	          </div>
	        </div>
        </div>
      </div>

      <div class="slider-item js-fullheight" style="background-image:url(./template/images/slider-2.jpg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
	          <div class="col-md-12 ftco-animate">
	          	<div class="text w-100 text-center">
	          		<h2>BookBrowse Awards Winner</h2>
		            <h1 class="mb-3">Remember Us</h1>
		            <h3>Jacqueline Woodson</h3>
	            </div>
	          </div>
	        </div>
        </div>
      </div>

      <div class="slider-item js-fullheight" style="background-image:url(./template/images/slider-3.jpg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
	          <div class="col-md-12 ftco-animate">
	          	<div class="text w-100 text-center">
	          		<h2>Readers Recommend</h2>
		            <h1 class="mb-3">The Flower Sisters</h1>
		            <h3>Michelle Collins Anderson</h3>
	            </div>
	          </div>
	        </div>
        </div>
      </div>
    </div>
	</div>
		<div class="container px-4 px-lg-5 mt-5">
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top"
							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">Fancy Product</h5>
								<!-- Product price-->
								$40.00 - $80.00
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">View
									Details</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Sale badge-->
						<div class="badge bg-dark text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">Sale</div>
						<!-- Product image-->
						<img class="card-img-top"
							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">Special Item</h5>
								<!-- Product reviews-->
								<div
									class="d-flex justify-content-center small text-warning mb-2">
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
								</div>
								<!-- Product price-->
								<span class="text-muted text-decoration-line-through">$20.00</span>
								$18.00
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">View Details</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Sale badge-->
						<div class="badge bg-dark text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">Sale</div>
						<!-- Product image-->
						<img class="card-img-top"
							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">Sale Item</h5>
								<!-- Product price-->
								<span class="text-muted text-decoration-line-through">$50.00</span>
								$25.00
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">View Details</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top"
							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">Popular Item</h5>
								<!-- Product reviews-->
								<div
									class="d-flex justify-content-center small text-warning mb-2">
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
								</div>
								<!-- Product price-->
								$40.00
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">View Details</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Sale badge-->
						<div class="badge bg-dark text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">Sale</div>
						<!-- Product image-->
						<img class="card-img-top"
							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">Sale Item</h5>
								<!-- Product price-->
								<span class="text-muted text-decoration-line-through">$50.00</span>
								$25.00
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">View Details</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top"
							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">Fancy Product</h5>
								<!-- Product price-->
								$120.00 - $280.00
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="/list.jsp">View
									Details</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Sale badge-->
						<div class="badge bg-dark text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">Sale</div>
						<!-- Product image-->
						<img class="card-img-top"
							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">Special Item</h5>
								<!-- Product reviews-->
								<div
									class="d-flex justify-content-center small text-warning mb-2">
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
								</div>
								<!-- Product price-->
								<span class="text-muted text-decoration-line-through">$20.00</span>
								$18.00
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">View Details</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top"
							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">Popular Item</h5>
								<!-- Product reviews-->
								<div
									class="d-flex justify-content-center small text-warning mb-2">
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
								</div>
								<!-- Product price-->
								$40.00
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">View Details</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="container">
    		<div class="d-flex justify-content-center">
      			<a href="user-booklist" class="btn btn-primary">View All</a>
    		</div>
    	</div>
	</section>
</body>
</html>