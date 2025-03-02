<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="vi_VN"/>
<!DOCTYPE html>
<html lang="vi">

<head>
    <jsp:include page="../common/_meta.jsp"/>
    <title>Admin: Thêm sản phẩm</title>
</head>

<body>
<jsp:include page="../common/_header.jsp"/>
<section class="section-content">
    <div class="container">
        <header class="section-heading py-4 d-flex justify-content-between">
            <c:if test="${empty productModels.id}">
                <h3 class="section-title">Thêm sản phẩm</h3>
            </c:if>
            <c:if test="${not empty productModels.id}">
                <h3 class="section-title">Sửa sản phẩm</h3>
            </c:if>
        </header> <!-- section-heading.// -->
        <main class="add-book-form mb-5">
            <form action="/admin/products/management" method="post" class="w-50">
                <input value="${productModels.id}" name="id" type="number" class="form-control" id="add-book-id" hidden = true>
                <div class="mb-3">
                    <label for="add-book-title" class="form-label">Tên sách</label>
                    <input value="${productModels.bookTitle}" name="bookTitle" type="text" class="form-control" id="add-book-title" required>
                </div>
                <div class="mb-3">
                    <label for="add-book-author" class="form-label">Tác giả</label>
                    <input value="${productModels.author}" name="author" type="text" class="form-control" id="add-book-author" required>
                </div>
                <div class="mb-3">
                    <label for="add-book-pages" class="form-label">Số trang</label>
                    <input value="${productModels.pageCount}" name="pageCount" type="number" class="form-control" id="add-book-pages" required>
                </div>
                <div class="mb-3">
                    <label for="add-book-publisher" class="form-label">Nhà xuất bản</label>
                    <input value="${productModels.publisher}" name="publisher" type="text" class="form-control" id="add-book-publisher" required>
                </div>
                <div class="mb-3">
                    <label for="add-book-yearPublishing" class="form-label">Năm phát hành</label>
                    <input value="${productModels.publicationYear}" name="publicationYear" type="number" class="form-control" id="add-book-yearPublishing" required>
                </div>
                <div class="mb-3">
                    <label for="add-book-category" class="form-label">Thể loại</label>
                    <input value="${productModels.genre}" name="genre" type="text" class="form-control" id="add-book-category" required>
                </div>
                <div class="mb-3">
                    <label for="add-book-price" class="form-label">Giá</label>
                    <input value="${productModels.price}" name="price" type="number" class="form-control" id="add-book-price" required>
                </div>
                <div class="mb-3">
                    <label for="add-book-discount" class="form-label">Khuyến mãi</label>
                    <input value="${productModels.discount}" name="discount" type="number" class="form-control" id="add-book-discount" required>
                </div>
                <div class="mb-3">
                    <label for="add-book-quantity" class="form-label">Số lượng trong kho</label>
                    <input value="${productModels.stockQuantity}" name="stockQuantity" type="number" class="form-control" id="add-book-quantity" required>
                </div>
                <div class="mb-3">
                    <label for="add-book-description" class="form-label">Mô tả</label>
                    <textarea value="${productModels.description}" name="description" type="text" class="form-control" id="add-book-description" rows="5" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary"> Lưu sản phẩm</button>
                <button type="reset" class="btn btn-warning ms-2">Tẩy trống</button>
                <button type="button" class="btn btn-light ms-2" onclick="window.history.back();" >Hủy</button>
            </form>
        </main> <!-- add-book-form.// -->
    </div> <!-- container.// -->
</section> <!-- section-content.// -->

<jsp:include page="../common/_footer.jsp"/>
</body>

</html>