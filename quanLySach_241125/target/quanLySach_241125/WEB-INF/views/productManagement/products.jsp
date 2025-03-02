<%--
  Created by IntelliJ IDEA.
  User: 7390
  Date: 2/24/2025
  Time: 8:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--them thu vien nay de su dung the c--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<head>
    <head>
        <jsp:include page="../common/_meta.jsp"/>
        <title>Quản Lý Sản Phẩm</title>
    </head>
</head>

<body>

<header class="section-header">
    <section class="header-main border-bottom">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-11 py-3">
                    <a class="text-body" href="./home.html">
                        <h3>Shop Bán Sách : Admin</h3>
                    </a>
                </div> <!-- col.// -->
                <div class="col-1">
                    <ul class="nav col-12 col-lg-auto my-2 my-lg-0 justify-content-center justify-content-lg-end text-small">
                        <li>
                            <a href="#" class="nav-link text-body">
                                <i class="bi bi-window d-block text-center fs-3"></i>
                                Client
                            </a>
                        </li>
                    </ul>
                </div> <!-- col.// -->
            </div> <!-- row.// -->
        </div> <!-- container.// -->
    </section> <!-- header-main.// -->
</header> <!-- section-header.// -->

<nav class="navbar navbar-main navbar-expand-lg navbar-light border-bottom">
    <div class="container">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="bi bi-people"></i> Quản lý người dùng</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="bi bi-tags"></i> Quản lý thể loại</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#"><i class="bi bi-book"></i> Quản lý sản phẩm</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="bi bi-cart"></i> Quản lý giỏ hàng</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="bi bi-inboxes"></i> Quản lý đơn hàng</a>
                </li>
            </ul>
            <a class="btn btn-primary" href="#" role="button">Đăng nhập</a>
        </div>
    </div> <!-- container.// -->
</nav> <!-- navbar-main.// -->

<section class="section-content">
    <div class="container">
        <header class="section-heading py-4 d-flex justify-content-between">
            <h3 class="section-title">Quản lý sản phẩm</h3>
            <form action="/admin/viewProductManagement" method="get">
                <button type="submit" class="btn btn-success">
                    <i class="fas fa-plus"></i> Add New
                </button>
            </form>
        </header> <!-- section-heading.// -->
        <main class="table-responsive-xl mb-5">
            <table class="table table-bordered table-striped table-hover align-middle">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Book Title</th>
                    <th>Author</th>
                    <th>Page Count</th>
                    <th>Publisher</th>
                    <th>Publication Year</th>
                    <th>Genre</th>
                    <th>Price</th>
                    <th>Discount</th>
                    <th>Stock Quantity</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="product" items="${products}">
                    <tr>
                        <td>${product.id}</td>
                        <td>${product.bookTitle}</td>
                        <td>${product.author}</td>
                        <td>${product.pageCount}</td>
                        <td>${product.publisher}</td>
                        <td>${product.publicationYear}</td>
                        <td>${product.genre}</td>
                        <td>${product.price}</td>
                        <td>${product.discount}</td>
                        <td>${product.stockQuantity}</td>
                        <td>
<%--                            <a href="view?id=${product.id}">View</a> |--%>
<%--                            <a href="edit?id=${product.id}">Edit</a> |--%>
<%--                            <a href="delete?id=${product.id}">Delete</a>--%>

                            <a class="btn btn-primary" href="#" role="button">View</a>
                            <a href="/admin/viewProductManagement?id=${product.id}" class="btn btn-warning btn-sm">
                                <i class="fas fa-edit">Edit</i>
                            </a>
                            <form action="/admin/products/management?id=${product.id}&deleted=true" method="post">
                                <button type="submit" class="btn btn-danger">
                                    <i class="fas fa-trash-alt">Delete</i>
                                </button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </main> <!-- book-manager-table.// -->
        <nav class="mt-3 mb-5">
            <ul class="pagination justify-content-center">
                <li class="page-item disabled"><a class="page-link" href="#">Trang trước</a></li>
                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">Trang sau</a></li>
            </ul>
        </nav>
    </div> <!-- container.// -->
</section> <!-- section-content.// -->

<footer class="section-footer">
    <section class="footer-bottom text-center bg-light border-top py-3">
        <div class="container-fluid">© 2021 — Shop Bán Sách</div> <!-- container-fluid.// -->
    </section> <!-- footer-bottom.// -->
</footer> <!-- section-footer.// -->

</body>

</html>