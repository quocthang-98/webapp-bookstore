<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book detail</title>
</head>
<body>
	<section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="https://i.scdn.co/image/ab67616d0000b27371d5ffe4407f913393ecdd11" alt="..." /></div>
                    <div class="col-md-6">
                        <div class="small mb-1">WREN EVANS</div>
                        
                        <h1 class="display-5 fw-bolder">LOI CHOI: The Neo Pop Punk - Standard CD</h1>
                        <div class="fs-5 mb-5">
                            <span class="text-decoration-line-through">500.000</span>
                            <span style="font-weight: bold;">350.000 VND</span>
                            <div class="small">Remaining: 20</div>
                        </div>
						
                        <div class="d-flex" style="margin-bottom: 0;">
						   <div class="d-flex flex-row" style="margin-bottom: 20px;">
						      <div class="input-group w-auto justify-content-start align-items-start">
						         <input type="button" value="-" class="btn-dark button-minus border rounded-circle  icon-shape icon-sm mx-1 " data-field="quantity">
						         <input type="number" step="1" value="1" name="quantity" class="quantity-field border-0 text-center w-25" readonly style="margin: 0;">
						         <input type="button" value="+" class="btn-dark button-plus border rounded-circle icon-shape icon-sm lh-0" data-field="quantity">
						      </div>
						   </div>
						</div>
						
						<div>
					      	<button type="button" class="btn btn-outline-dark">Add to Cart</button>
						</div>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <section class="py-5 bg-light" style="margin-top:0;">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">About this product</h2>
                <div class="mb-3">
                        <p class="lead">
                        Album đầu tay của Wren Evans. <br>
                        Tracklist: <br>
                        1. Phóng Đổ Tim Em <br>
                        2. Call Me <br>
                        3. Cầu Vĩnh Tuy <br>
                        4. Từng Quen <br>
                        5. bé ơi từ từ <br>
                        6. Lối Chơi (Interlude) <br>
                        7. Tình Yêu Vĩ Mô <br>
                        8. Việt Kiều <br>
                        9. ĐĐĐ <br>
                        10. Quyền Anh <br>
                        11. Tò Te Tí <br>
                        </p>
				</div>
            </div>
            
        </section>
        <hr>
        
        <!-- Related items section-->
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">Related products</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
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
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View Details</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Special Item</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
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
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View Details</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
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
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View Details</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Popular Item</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
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
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View Details</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <hr>
        
        
        <!-- Comment section -->
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">Comments</h2>
                <div class="mb-3">
				  <label for="commentInput" class="form-label">What do you think about this product?</label>
				  <input type="email" class="form-control" id="commentInput" placeholder="Type your comments here...">
				</div>
				<button type="button" class="btn btn-dark">Post</button>
            </div>
            
            <div class="container px-4 px-lg-5 mt-5">
            <div class="d-flex flex-start">
              <img class="rounded-circle shadow-1-strong me-3"
                src="https://scontent.fsgn5-15.fna.fbcdn.net/v/t39.30808-1/405372159_871851221392800_4877411962768229159_n.jpg?stp=dst-jpg_p200x200&_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeH__uEuwvMUWv1FA9Qrf4c7yzq2hRTIM1bLOraFFMgzVtE7yUYpZRsIeDdpo9kgY_emZ5wQHtFF39R3zS8Cj5vn&_nc_ohc=P78aPtlHgZcQ7kNvgFdukLA&_nc_ht=scontent.fsgn5-15.fna&oh=00_AYBhkhN8e9_s5EkrzkWwFSJhO2ZdiNkxO5yasvhk6heB-A&oe=66607981" alt="avatar" width="60"
                height="60" />
              <div style="width: 100%; margin: auto;">
                <h6 class="fw-bold mb-1">Wren Evans</h6>
                <div class="d-flex align-items-center mb-3">
                  <p class="mb-0">
                    March 15, 2021
                    <span class="badge bg-success">Author</span>
                  </p>
                </div>
                <p class="mb-0">
                  Mọi người mua CD để ủng hộ anh Wren dân tổ nhé! &#128526;
                </p>

              </div>
				 <a href="#!" class="link-muted" style="text-align:right;display:block;"><i class="fa fa-heart ms-2"></i><p>3804</p></a>
            </div>
          </div>
            
            <div class="container px-4 px-lg-5 mt-5">
            <div class="d-flex flex-start">
              <img class="rounded-circle shadow-1-strong me-3"
                src="https://scontent.fsgn5-9.fna.fbcdn.net/v/t39.30808-1/444479908_390929930660336_7205019188867939876_n.jpg?stp=dst-jpg_p200x200&_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGD2sRR7A3TBLGhI7H_rwAQowrEd0F_qjWjCsR3QX-qNeGiTYGhHEUEexzTRrG3WoWcFVxqxzjolNA6Tieu_Fry&_nc_ohc=bTgwRkK2uFwQ7kNvgESUcaK&_nc_ht=scontent.fsgn5-9.fna&oh=00_AYDd0yjKN2jFfrfDMqI9J16jpmkJ2-dW2JNIoXaLK3EtGQ&oe=66606418" alt="avatar" width="60"
                height="60" />
              <div style="width: 100%; margin: auto;">
                <h6 class="fw-bold mb-1">Sun Phan</h6>
                <div class="d-flex align-items-center mb-3">
                  <p class="mb-0">
                    March 15, 2021
                    <span class="badge bg-success">Top Contributor</span>
                  </p>
                </div>
                <p class="mb-0">
                  Nhạc hay vờ cờ lờ luôn anh ui! &#128525;&#10024;
                </p>

              </div>
				 <a href="#!" class="link-muted" style="text-align:right;display:block;"><i class="fa fa-heart ms-2"></i><p>4</p></a>
            </div>
          </div>
          
          <div class="container px-4 px-lg-5 mt-5">
            <div class="d-flex flex-start">
              <img class="rounded-circle shadow-1-strong me-3"
                src="https://scontent.fsgn5-9.fna.fbcdn.net/v/t39.30808-1/434674815_3608894492772727_9041989188412370689_n.jpg?stp=dst-jpg_p200x200&_nc_cat=105&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGBlTrGjdo25fpfaLZtQPtC0PHZXOa7cWfQ8dlc5rtxZyuZJb3mr8M9t-yZ17J020wBAzB9j8DWgBR-YcfP3yDR&_nc_ohc=znWvne_NPJkQ7kNvgEFb8_V&_nc_ht=scontent.fsgn5-9.fna&oh=00_AYBUZvhO-WDyY8C9D1yoYVrVL5CjtoVPtpAvwWYDvznmXQ&oe=66606383" alt="avatar" width="60"
                height="60" />
              <div style="width: 100%; margin: auto;">
                <h6 class="fw-bold mb-1">Đỗ Đình Phúc</h6>
                <div class="d-flex align-items-center mb-3">
                  <p class="mb-0">
                    March 15, 2021
                    <span class="badge bg-success"></span>
                  </p>
                </div>
                <p class="mb-0">
                  Mọi người vào trang em mua kem trộn nhe <a href="https://www.facebook.com/profile.php?id=100009566342416" target="_blank">https://www.facebook.com/profile.php?id=100009566342416</a>
                </p>

              </div>
				 <a href="#!" class="link-muted" style="text-align:right;display:block;"><i class="fa fa-heart ms-2"></i><p>1239843</p></a>
            </div>
          </div>
          
          <div class="container px-4 px-lg-5 mt-5">
            <div class="d-flex flex-start">
              <img class="rounded-circle shadow-1-strong me-3"
                src="https://scontent.fsgn5-10.fna.fbcdn.net/v/t39.30808-1/358456020_686633320174319_2191595948105468142_n.jpg?stp=c283.274.428.429a_dst-jpg_s200x200&_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEXQSULmo1_F5dDRXfkyhp3OVyTtNkJgRs5XJO02QmBGwcWRQErakwyxMvcQxFI0wkpL2eGHBWyo4mU7M37y_G9&_nc_ohc=oiUfbsvAEW0Q7kNvgFAtF2S&_nc_ht=scontent.fsgn5-10.fna&oh=00_AYDsjgeuBNyDNNBPb-t0jv56898z0X_07_itQKac0dew2w&oe=66607500" alt="avatar" width="60"
                height="60" />
              <div style="width: 100%; margin: auto;">
                <h6 class="fw-bold mb-1">Cần Phét Sần trường I</h6>
                <div class="d-flex align-items-center mb-3">
                  <p class="mb-0">
                    March 15, 2021
                    <span class="badge bg-success"></span>
                  </p>
                </div>
                <p class="mb-0">
                  Em mong là BGH nhà trường sẽ tổ chức 1 buổi đối thoại trực tiếp với sinh viên chứ hiện giờ em thấy IU đang gặp quá nhiều vấn đề luôn đó ạ 
                </p>

              </div>
				            <a href="#!" class="link-muted" style="text-align:right;display:block;"><i class="fa fa-heart ms-2"></i><p>77</p></a>
            </div>
          </div>
          
                    <div class="container px-4 px-lg-5 mt-5">
            <div class="d-flex flex-start">
              <img class="rounded-circle shadow-1-strong me-3"
                src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(26).webp" alt="avatar" width="60"
                height="60" />
              <div style="width: 100%; margin: auto;">
                <h6 class="fw-bold mb-1">Học Sinh Ngoan</h6>
                <div class="d-flex align-items-center mb-3">
                  <p class="mb-0">
                    March 15, 2021
                    <span class="badge bg-success"></span>
                  </p>
                </div>
                <p class="mb-0">
                  Ý của cá nhân mình là như thế này, sau 1 khoảng thời gian đọc những cfs complain về mọi thứ của trường hiện tại: từ csvc, trang thiết bị đến dịch vụ, đặc biệt những vật chất phục vụ mục đích học tập đg xuống cấp hoặc đg ko đúng như những gì kì vọng (mặc dù học phí mỗi kì-mỗi năm lại tăng lên) thì mình đg có 1 ý tưởng như thế này: Tổng hợp toàn bộ sinh viên lại làm 1 cái đơn request gửi trực tiếp lên trường: Nêu ra những điều chưa hài lòng và mong muốn đc cải thiện cho đúng với cái số tiền học phí bỏ ra cùng với những lời giới thiệu về trường khi là 1 học sinh cấp 3 hay là tân sinh viên. 
					Các bạn thấy như nào, nếu đồng ý (thật sự muốn cải thiện để có thể học tập tốt) thì hãy thả tim vào phần React của bài viết, và mình coi như sẽ liên hệ và tạo group cùng những bạn đó viết đơn nói ra những mong muốn và gửi lên phía trường ! Vậy nha mọi người ơi<3 
                </p>

              </div>
				            <a href="#!" class="link-muted" style="text-align:right;display:block;"><i class="fa fa-heart ms-2"></i><p>23</p></a>
            </div>
          </div>

        </section>
        
        <script>
        function incrementValue(e) {
            e.preventDefault();
            var fieldName = $(e.target).data('field');
            var parent = $(e.target).closest('div');
            var currentVal = parseInt(parent.find('input[name=' + fieldName + ']').val(), 10);

            if (!isNaN(currentVal)) {
                parent.find('input[name=' + fieldName + ']').val(currentVal + 1);
            } else {
                parent.find('input[name=' + fieldName + ']').val(0);
            }
        }

        function decrementValue(e) {
            e.preventDefault();
            var fieldName = $(e.target).data('field');
            var parent = $(e.target).closest('div');
            var currentVal = parseInt(parent.find('input[name=' + fieldName + ']').val(), 10);

            if (!isNaN(currentVal) && currentVal > 0) {
                parent.find('input[name=' + fieldName + ']').val(currentVal - 1);
            } else {
                parent.find('input[name=' + fieldName + ']').val(0);
            }
        }

        $('.input-group').on('click', '.button-plus', function(e) {
            incrementValue(e);
        });

        $('.input-group').on('click', '.button-minus', function(e) {
            decrementValue(e);
        });

        
        </script>
        
</body>
</html>