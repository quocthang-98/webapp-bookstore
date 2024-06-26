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
		<div class="container px-4 px-lg-5 my-5" style="overflow: hidden;">
			<div class="text-center text-white">
			<p class="lead fw-normal text-white-50 mb-0 banner-subtitle">Welcome to</p>
			<div class="banner-title-wrapper">
				<h1 class="display-4 fw-bolder banner-title bt1" ><span style="font-weight: bolder;">THE LAND OF IMAGINATION</span></h1>
				<h1 class="display-4 fw-bolder banner-title bt2" ><span style="font-weight: bolder;">THE REALM OF THOUGHT</span></h1>
				<h1 class="display-4 fw-bolder banner-title bt3" ><span style="font-weight: bolder;">THE DOMAIN OF CONCEPTS</span></h1>
				<h1 class="display-4 fw-bolder banner-title bt4" ><span style="font-weight: bolder;">THE WELLSPRING OF INNOVATION</span></h1>
				<h1 class="display-4 fw-bolder banner-title bt5" ><span style="font-weight: bolder;">THE WORLD OF IDEAS</span></h1>
			</div>
			</div>
		</div>
		
		<div class="wrapper banner-scroll">
		  <div class="banner-scroll-item item1">
		  	<img src="./template/images/banner-scroll-img1.png">
		  </div>
		  <div class="banner-scroll-item item2">
		  	<img src="./template/images/banner-scroll-img2.png">
		  </div>
		  <div class="banner-scroll-item item3">
		  	<img src="./template/images/banner-scroll-img3.png">
		  </div>
		  <div class="banner-scroll-item item4">
		  	<img src="./template/images/banner-scroll-img4.png">
		  </div>
		  <div class="banner-scroll-item item5">
		  	<img src="./template/images/banner-scroll-img5.png">
		  </div>
		  <div class="banner-scroll-item item6">
		  	<img src="./template/images/banner-scroll-img6.png">
		  </div>
		  <div class="banner-scroll-item item7">
		  	<img src="./template/images/banner-scroll-img7.png">
		  </div>
		  <div class="banner-scroll-item item8">
		  	<img src="./template/images/banner-scroll-img8.png">
		  </div>
		</div>
	</header>
	
	<section class="py-5 page-section" style="margin: 0;">
	<div class="container px-4 px-lg-5 mt-5">
		<h2 class="fw-bolder mb-4" id="section-whatsnew">New Arrivals</h2>
			<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<c:forEach var="item" items="${book.resultList}">
				
				<div class="col mb-5 item-card">
				<a href="<c:url value="/user-bookdetail?id=${item.id}"/>">
					<div class="card h-100 inner-item-card">
						<!-- Product image-->
						<div class="image-item-card-container">
							<img class="card-img-top image-item-card"
							src="${item.thumbnail}" alt="..." />
						</div>
						<!-- Product details-->
						<div class="content-item-card-container">
							<div class="card-body p-4 item-card-body">
								<div class="text-center content-text-item-card">
									<!-- Product name-->
									<h5 class="fw-bolder content-product-name-item-card" style="margin: 0;">${item.title}</h5>
									<p>${item.authorName}</p>
									<!-- Product price-->
									
								</div>
								<div class="text-center content-subtext-item-card">
									
									<p class="content-price-item-card">${item.price}</p>
									<div class="text-center">
										<p class="mt-auto">${item.genreName}</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				</div>
				</c:forEach>

			</div>
			</div>
				
				
		
		<div class="container">
    		<div class="d-flex justify-content-center">
      			<a href="<c:url value="/user-booklist?page=1&limit=6"/>" class="btn btn-dark view-all-btn" style="width: 40%;">View All Available Books</a>
    		</div>
    	</div>
	</section>
	
      <section class="py-5 bg-light page-section" style="margin-top:0; padding-top: 0;">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4" id="section-bookoftheday">Today's Pick</h2>
                
                <div class="mb-3">
                       
				</div>
				
				<div class="container">
			        <div class="card" style="width: 100%; margin-top: 50px; background-color: #D9FFF8 ;">
			            <div class="row no-gutters">
			                <div class="col-sm-5 card-img-side-container">
			                    <img class="card-img card-img-side" src="https://cdn0.fahasa.com/media/catalog/product/n/x/nxbtre_full_06402022_014041_1.jpg?_gl=1*15q15z2*_ga*MTY0MDI0NjEzMS4xNzE0NzkwNzc4*_ga_460L9JMC2G*MTcxNzU1OTUyMi44LjEuMTcxNzU1OTU0Ny4zNS4wLjEwNzM4MDUwOTU.*_gcl_aw*R0NMLjE3MTYyNTc1MDIuQ2owS0NRanc2YXV5QmhEekFSSXNBTElvNnZfVGlGbHd5UnVMOWQtd2F2aEVURW4yeDl0TDhBY2lWZVpkRXdlWWd1Qmk1WUYwTzRJSmM4WWFBcWt3RUFMd193Y0I.*_gcl_au*Mzc3MjU1Mjk5LjE3MTQ3OTA3Nzg." alt="Suresh Dasari Card">
			                </div>
			                <div class="col-sm-7">
			                    <div class="horizontal-card-body">
			                        <h5 class="fw-bolder content-product-name-item-card">Mắt Biếc (2022 Edition)</h5>
			                        <p class="fw-bold">88.000₫</p>
									<p class="mt-auto">Novels</p>
									<p class="mt-auto" style="width: 90%; text-align: justify;'">Nguyen Nhat Anh has come back with one of his masterpieces. Critics are already praising his masterful storytelling in his latest work, lauding its poignant characters and evocative descriptions. With his signature blend of wit and wisdom, Nguyen Nhat Anh promises to transport readers to another world with his newest masterpiece.</p>
			                        <a href="#" class="btn btn-outline-dark">View Details</a>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
            </div>
        </section>
        
         <section class="py-5 bg-light page-section" style="margin-top:0; padding-top: 0;">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4" id="section-bookoftheday">Upcoming Releases</h2>
                
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

				<div class="col mb-5 disabled-item-card">
					<div class="card h-100 disabled-inner-item-card">
						<!-- Product image-->
						<div class="image-item-card-container">
							<img class="card-img-top image-item-card"
							src="https://cdn0.fahasa.com/media/catalog/product/n/x/nxbtre_full_13012020_030128_1.jpg?_gl=1*4c2dr0*_gcl_aw*R0NMLjE3MTYyNTc1MDIuQ2owS0NRanc2YXV5QmhEekFSSXNBTElvNnZfVGlGbHd5UnVMOWQtd2F2aEVURW4yeDl0TDhBY2lWZVpkRXdlWWd1Qmk1WUYwTzRJSmM4WWFBcWt3RUFMd193Y0I.*_gcl_au*Mzc3MjU1Mjk5LjE3MTQ3OTA3Nzg.*_ga*MTY0MDI0NjEzMS4xNzE0NzkwNzc4*_ga_460L9JMC2G*MTcxNzU4MTcwMi4xMS4xLjE3MTc1ODIwMDIuMzQuMC4xNjcyMDc2NjA4" alt="..." />
						</div>
						<!-- Product details-->
						<div class="content-item-card-container">
							<div class="card-body p-4 item-card-body">
								<div class="text-center content-text-item-card">
									<!-- Product name-->
									<h5 class="fw-bolder content-product-name-item-card" style="margin: 0;">Mastery</h5>
									<p>Robert Greene</p>
									<!-- Product price-->
									
								</div>
								<div class="text-center disabled-content-subtext-item-card text-center">
									
									<p>December 2024</p>
								</div>
							</div>
						</div>
					</div>
				</div> 
				
				<div class="col mb-5 disabled-item-card">
					<div class="card h-100 disabled-inner-item-card">
						<!-- Product image-->
						<div class="image-item-card-container">
							<img class="card-img-top image-item-card"
							src="https://cdn0.fahasa.com/media/catalog/product/d/o/doraemon_nobita_va_vung_dat_ly_tuong_bia.jpg?_gl=1*125y88n*_ga*MTY0MDI0NjEzMS4xNzE0NzkwNzc4*_ga_460L9JMC2G*MTcxNzU4MTcwMi4xMS4xLjE3MTc1ODI0MTcuNDAuMC4xNjcyMDc2NjA4*_gcl_aw*R0NMLjE3MTYyNTc1MDIuQ2owS0NRanc2YXV5QmhEekFSSXNBTElvNnZfVGlGbHd5UnVMOWQtd2F2aEVURW4yeDl0TDhBY2lWZVpkRXdlWWd1Qmk1WUYwTzRJSmM4WWFBcWt3RUFMd193Y0I.*_gcl_au*Mzc3MjU1Mjk5LjE3MTQ3OTA3Nzg." alt="..." />
						</div>
						<!-- Product details-->
						<div class="content-item-card-container">
							<div class="card-body p-4 item-card-body">
								<div class="text-center content-text-item-card">
									<!-- Product name-->
									<h5 class="fw-bolder content-product-name-item-card" style="margin: 0;">Doraemon: Nobita's Sky Utopia</h5>
									<p>Fujiko F Fujio</p>
									<!-- Product price-->
									
								</div>
								<div class="text-center disabled-content-subtext-item-card text-center">
									
									<p>January 2025</p>
								</div>
							</div>
						</div>
					</div>
				</div> 
				
				
				</div>
			</div>
				
				
            </div>
        </section>
        	
</body>
</html>