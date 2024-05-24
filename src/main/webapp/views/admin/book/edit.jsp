<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Details Editor</title>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-md-8 mx-auto rounded border p-4 m-4">
      <h2 class="text-center mb-5">Edit Book Data</h2>

      <form method="post">
        <div class="row mb-3">
          <label class="col-sm-4 col-form-label">ID*</label>
          <div class="col-sm-8">
            <input class="form-control" value="${book.id}" required>
          </div>
        </div>

        <div class="row mb-3">
          <label class="col-sm-4 col-form-label">Title*</label>
          <div class="col-sm-8">
            <input class="form-control" value="${book.title}" required>
          </div>
        </div>

        <div class="row mb-3">
          <label class="col-sm-4 col-form-label">Author (ID)</label>
          <div class="col-sm-8">
            <div class="dropdown">
			  <button class="btn btn-light dropdown-toggle dropdown-toggle-split" type="button" data-bs-toggle="dropdown" aria-expanded="false">
			    ${book.authorId}
			  </button>
			  <div class="dropdown-menu">
			    <a class="dropdown-item">Query giup tao</a>
			    <a class="dropdown-item">de lay danh sach</a>
			    <a class="dropdown-item">authorID (kem theo authorName)</a>
			    <a class="dropdown-item">cua nguyen cai database</a>
			    <a class="dropdown-item">roi them vo day nha anh yeu</a>
			  </div>
			</div>
          </div>
       	</div>
        
        <div class="row mb-3">
          <label class="col-sm-4 col-form-label">Type (ID)</label>
          <div class="col-sm-8">
            <div class="dropdown">
			  <button class="btn btn-light dropdown-toggle dropdown-toggle-split" type="button" data-bs-toggle="dropdown" aria-expanded="false">
			    ${book.typeId}
			  </button>
			  <div class="dropdown-menu">
			    <a class="dropdown-item">Con cai nay thi</a>
			    <a class="dropdown-item">query de lay</a>
			    <a class="dropdown-item">typeId nha</a>
			  </div>
			</div>
          </div>
       	</div>
       	
       	<div class="row mb-3">
          <label class="col-sm-4 col-form-label">Publisher (ID)</label>
          <div class="col-sm-8">
            <div class="dropdown">
			  <button class="btn btn-light dropdown-toggle dropdown-toggle-split" type="button" data-bs-toggle="dropdown" aria-expanded="false">
			    ${book.typeId}
			  </button>
			  <div class="dropdown-menu">
			    <a class="dropdown-item">Con cai nay thi</a>
			    <a class="dropdown-item">query de lay</a>
			    <a class="dropdown-item">publisherId nha</a>
			  </div>
			</div>
          </div>
       	</div>
       	
		<div class="row mb-3">
          <label class="col-sm-4 col-form-label">Publication Date</label>
          <div class="col-sm-8">
            <input class="form-control" value="${book.publicationDate}" placeholder="dd/MM/yyyy">
          </div>
        </div>
        
        
        <div class="row mb-3">
          <label class="col-sm-4 col-form-label">Stocks</label>
          <div class="col-sm-8">
            <input class="form-control" value="${book.stocks}">
          </div>
        </div>

                
        <div class="row mb-3">
          <label class="col-sm-4 col-form-label">Price</label>
          <div class="col-sm-8">
            <input class="form-control" value="${book.price}" required>
          </div>
        </div>

        <div class="row mb-3">
          <label class="col-sm-4 col-form-label">Thumbnail</label>
          <div class="col-sm-8">
			<input type="file" class="form-control" id="customFile" />
          </div>
        </div>

        <div class="row mb-3">
          <label class="col-sm-4 col-form-label">Description</label>
          <div class="col-sm-8">
            <input class="form-control">
          </div>
        </div>
        
       <div class="row mb-3">
          <label class="col-sm-4 col-form-label">Created by</label>
          <div class="col-sm-8">
            <input class="form-control" placeholder="tao k thay 'createdBy' trong BookModel nen tao se de trong">
          </div>
        </div>
        


        <div class="row">
          <div class="offset-sm-4 col-sm-4 d-grid">
            <button type="submit" class="btn btn-primary">Confirm</button>
          </div>

          <div class="col-sm-4 d-grid">
          	<c:url var="listURL" value="/admin-book">
          		<c:param name = "type" value = "list"/>
          	</c:url>
            <a type="submit" class="btn btn-outline-primary" href="${listURL}" role="button">Cancel</a>
          </div>
        </div>
        
        
      </form>
    </div>
  </div>
</div>
</body>
</html>