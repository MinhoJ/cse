<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="<c:url value = "/resources/css/viewProduct.css"/>" rel="stylesheet"/>

<div class="row">
	<h1>Product Details</h1>
</div>
<div class="row">
	<p class="lead">Here is the detail of the product!</p>
</div>
<div class="row">
	<div class="col-md-6">
		<c:set var="imageFilename"
			value="/resources/images/${product.name }.jpg" />
		<img src="<c:url value = "${imageFilename }" />" alt="image"
			style="width: 80%" />
	</div>
	<div class="col-md-6">
		<h3>${product.name }</h3>
		<p>Description : ${product.description }</p>
		<p>Manufacturer : ${product.manufacturer }</p>
		<p>Category : ${product.category }</p>
		<p>Price : ${product.price }원</p>
	</div>
</div>
