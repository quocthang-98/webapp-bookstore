<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
	<c:url var="Carturl" value = "/user-cart"/>
	<c:url var="APIurl" value = "/api-user-cart"/>
	<c:url var="APIOrderurl" value = "/api-user-order"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book detail</title>
</head>
<body>
<section class="pt-5 pb-5">
  <div class="container">
    <div class="row w-100">
        <div class="col-lg-12 col-md-12 col-12">
            <h3 class="display-5 mb-2 text-center">Shopping Cart</h3>
            <p class="mb-5 text-center">
                <i class="text-info font-weight-bold">${cart.numberItem}</i> item(s) in your cart</p>
            <table id="shoppingCart" class="table table-condensed table-responsive">
                <thead>
                    <tr>
                        <th style="width:60%">Product</th>
                        <th style="width:12%">Price</th>
                        <th style="width:10%">Quantity</th>
                        <th style="width:16%"></th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach var="item" items="${cart.resultList}">
                    <tr>
                        <td data-th="Product">
                            <div class="row">
                                <div class="col-md-3 text-left">
                                    <img src="${item.bookModel.thumbnail}" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                </div>
                                <div class="col-md-9 text-left mt-sm-2">
                                    <h4>${item.bookModel.title}</h4>
                                    <p class="font-weight-light">${item.bookModel.authorName}</p>
                                </div>
                            </div>
                        </td>
                        <td data-th="Price">${item.bookModel.price} VND</td>
                        <td data-th="Quantity">
<%--                             <input type="number" class="form-control form-control-lg text-center" value="${item.quantity}" min="1" max="${item.quantity + item.bookModel.stocks}"> --%>
							<div class="input-group-${item.id} w-auto justify-content-start align-items-start">
						         <input type="button" value="-" class="btn-dark button-minus border rounded-circle  icon-shape icon-sm mx-1 " data-field="quantity">
						         <input type="number" step="1" min="1" max="5" value="${item.quantity}" name="quantity" class="quantity-field border-0 text-center w-25" readonly style="margin: 0;" id = "cart-${item.id}">
						         <input type="button" value="+" class="btn-dark button-plus border rounded-circle icon-shape icon-sm lh-0" data-field="quantity">
						      </div>
                        </td>
                        <td class="actions" data-th="">
                            <div class="text-right">
                                <button class="btn btn-dark border-secondary bg-black btn-md mb-2" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="myfunction(${item.id}, '${item.bookModel.title}')">
									Remove
                                </button>
                            </div>
                            </div>
                            
                            
                            <!-- Delete Warning Popup Box -->
  								<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
									  <div class="modal-dialog modal-dialog-centered">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" id="exampleModalLabel">Confirm Deletion</h5>
									        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									      </div>
									      <div class="modal-body">
									        Are you sure you want to remove <a id="itemName"></a>? This action cannot be undone.
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
									        <button type="button" class="btn btn-danger" id="delete" onclick = "myfunction2()">Remove</button>
									      </div>
									    </div>
									  </div>
									</div>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div class="float-right text-right">
                <h4>Subtotal:</h4>
                <h1><a id="totalPrice"></a></h1>
            </div>
        </div>
    </div>
    <div class="row mt-4 d-flex align-items-center">
        <div class="col-sm-6 order-md-2 text-right">
        <c:if test="${not empty cart.resultList}">
            <a class="btn btn-primary mb-4 btn-lg pl-5 pr-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">Checkout</a>
        </c:if>
        <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
									  <div class="modal-dialog modal-dialog-centered">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" id="exampleModalLabel">Confirm Deletion</h5>
									        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									      </div>
									      <div class="modal-body">
									        Purchase all items in cart?
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
									        <button type="button" class="btn btn-success" id ="checkout">Purchase</button>
									      </div>
									    </div>
									  </div>
									</div>
        </div>
        <div class="col-sm-6 mb-3 mb-m-1 order-md-1 text-md-left">
            <a href="user-home">
                <i class="fas fa-arrow-left mr-2"></i> Continue Shopping</a>
        </div>
    </div>
</div>
</section>
<script>
	var totalPrice = ${cart.totalPrice};
	document.getElementById("totalPrice").innerHTML = totalPrice; 
	var data = {};
	function myfunction(index1, index2) {
		data["id"] = index1; 
	    document.getElementById("itemName").innerHTML = index2; 
	}
	
	function myfunction2(){
		$.ajax({
			url: '${APIurl}',
			type: 'DELETE',
			contentType: 'application/json',
			data: JSON.stringify(data),
			dataType: 'json',
			success: function (result){
				window.location.href = "${Carturl}";
			},
			error: function (error){
				console.log(error);
			}
		});
	}


	function incrementValue(e, max, price) {
	  e.preventDefault();
	  var fieldName = $(e.target).data('field');
	  var parent = $(e.target).closest('div');
	  var input = parent.find('input[name=' + fieldName + ']');
	  var currentVal = parseInt(input.val(), 10);

	  if (!isNaN(currentVal)) {
	    var newVal = currentVal + 1;
	    // Check if the new value exceeds the maximum allowed value
	    if (newVal <= max) { // Assuming a maximum of 10 (adjust as needed)
	      input.val(newVal);
	      totalPrice = totalPrice + price;
	      document.getElementById("totalPrice").innerHTML = totalPrice; 
	    } 
	  } else {
	    input.val(0);
	  }
	}

	function decrementValue(e, price) {
	  e.preventDefault();
	  var fieldName = $(e.target).data('field');
	  var parent = $(e.target).closest('div');
	  var input = parent.find('input[name=' + fieldName + ']');
	  var currentVal = parseInt(input.val(), 10);

	  if (!isNaN(currentVal) && currentVal > 0) {
	    var newVal = currentVal - 1;
	    // Check if the new value falls below the minimum allowed value
	    if (newVal >= 1) { // Assuming a minimum of 0 (adjust as needed)
	      input.val(newVal);
	      totalPrice = totalPrice - price;
	      document.getElementById("totalPrice").innerHTML = totalPrice; 
	    }
	  } else {
	    input.val(0);
	  }
	}
	<c:forEach var="item" items="${cart.resultList}">
	$('.input-group-${item.id}').on('click', '.button-plus', function(e) {
	  incrementValue(e, ${item.bookModel.stocks + item.quantity}, ${item.bookModel.price});
	});

	$('.input-group-${item.id}').on('click', '.button-minus', function(e) {
	  decrementValue(e, ${item.bookModel.price});
	});
	</c:forEach>
	
	$("#checkout").click(
		function () {
			var data = {};
			<c:forEach var="item" items="${cart.resultList}">
				data["id"] = ${item.id};
				data["quantity"] = $('#cart-${item.id}').val();
				data["bookId"] = ${item.bookId};
				updateCart(data);
			</c:forEach>
			data = {};
			data["totalPrice"] = totalPrice;
			createOrder(data);
		}
	);
	
	function updateCart(data) {
		$.ajax({
			url : '${APIurl}',
			type : 'PUT',
			contentType : 'application/json',
			data : JSON.stringify(data),
			dataType : 'json',
			success : function(result) {
				/* window.location.href = "${Bookurl}?type=list"; */
			},
			error : function(error) {
				console.log(error);
			}
		});
	}
	
	function createOrder(data) {
		$.ajax({
			url : '${APIOrderurl}',
			type : 'POST',
			contentType : 'application/json',
			data : JSON.stringify(data),
			dataType : 'json',
			success : function(result) {
				window.location.href = "${Carturl}";
			},
			error : function(error) {
				console.log(error);
			}
		});
	}
	
</script>

</body>
</html>