<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container-wrapper">
	<div class="container">
		<h1>Update Product</h1>
		<p class="lead">Fill the below information to add a product :</p>
		<sf:form
			action="${pageContext.request.contextPath }/admin/productInventory/updateProduct"
			method="post" modelAttribute="product">
			<sf:hidden path="id" />

			<div class="form-group">
				<label for="name">Name</label>
				<sf:input path="name" id="name" class="form-control" />
				<sf:errors path="name" cssStyle ="color:#ff0000;" />
			</div>

			<div class="form-group">
				<label for="category">category </label>
				<sf:radiobutton path="category" id="category" value="Computer" />
				Computer
				<sf:radiobutton path="category" id="category"
					value="Home Application" />
				Home Application
				<sf:radiobutton path="category" id="category" value="Stuff" />
				Stuff
			</div>

			<div class="form-group">
				<label for="description">Description</label>
				<sf:textarea path="description" id="description"
					class="form-control" />
			</div>

			<div class="form-group">
				<label for="price">Price</label>
				<sf:input path="price" id="price" class="form-control" />
				<sf:errors path="price" cssStyle ="color:#ff0000;" />
			</div>

			<div class="form-group">
				<label for="unitInStock">Unit In Stock</label>
				<sf:input path="unitInStock" id="unitInStock" class="form-control" />
				<sf:errors path="unitInStock" cssStyle ="color:#ff0000;" />
			</div>

			<div class="form-group">
				<label for="manufacturer">manufacturer</label>
				<sf:input path="manufacturer" id="manufacturer" class="form-control" />
				<sf:errors path="manufacturer" cssStyle ="color:#ff0000;" />
			</div>

			<input type="submit" value="submit" class="btn btn=default">
			<a href="<c:url value ="/admin/productInventory" />"
				class="btn btn-default">Cancel</a>
		</sf:form>
		<br />
	</div>

</div>