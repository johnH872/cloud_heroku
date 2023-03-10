<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Categories</title>
<div class="container-fluid pt-4 px-4">
	<div class="row g-4">
		<div class="col-sm-12 col-xl-12">
			<a href="/quan-tri/san-pham/loai-mau/cateColorForm"><button type="button" class="btn btn-secondary m-2">Add new color</button></a>
			<div class="bg-light rounded h-100 p-4">
				<h6 class="mb-4">Danh sách các màu</h6>
				<i>${errorDelCateColorMessage}</i>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Type</th>
							<th scope="col">Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="cateColorList" items="${cateColorList}">
							<tr>
								<td><c:out value="${cateColorList.color_id}" /></td>
								<td><c:out value="${cateColorList.type}" /></td>
								<td><a href="edit/${cateColorList.color_id} ">Edit</a>
									&nbsp;&nbsp;&nbsp;&nbsp; <a
									href="delete/${cateColorList.color_id}">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>