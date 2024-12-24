<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-sm-3">
    <div class="card bg-light mb-3">
        <div class="card-header" style="background-color: violet; color: black; text-transform: uppercase;">
            <i class="fa fa-list"></i> Danh mục sản phẩm
        </div>
        <ul class="list-group category_block">
            <c:forEach items="${listCC}" var="o">
                <li class="list-group-item text-white ${tag == o.cid ? "active":""}">
                    <a href="category?cid=${o.cid}">${o.cname}</a>
                </li>
            </c:forEach>
        </ul>
    </div>
    
    <div class="card bg-light mb-3">
        <div class="card-header bg-success text-white text-uppercase ">Sản phẩm vừa xem</div>
        <div class="card-body">
            <c:if test="${not empty lastViewedProduct}">
                 <a href="detail?pid=${lastViewedProduct.id}">
                <img class="img-fluid" src="${lastViewedProduct.image}" />
                <h5 class="card-title">${lastViewedProduct.name}</h5>
                <p class="card-text" style="color: black;">${lastViewedProduct.title}</p>
                <div class="price-box" style="border: 4px solid #ccc; padding: 10px; border-radius: 20px; background-color: #f8f9fa;">
                        <p class="bloc_left_price" style="margin: 0;">${lastViewedProduct.price} $</p>
                    </div>
            </c:if>
        </div>
    </div>
    
</div>
