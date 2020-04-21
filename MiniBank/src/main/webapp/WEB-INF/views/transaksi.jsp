<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<%@ page isELIgnored="false" %>
<title>Mini Bank - Transaksi</title>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<c:url value="/resources/css/content.css"/>">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="home"><b>Mini Bank</b></a>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li><a><span class="glyphicon glyphicon-user"></span> Hi,
						Nasabah</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>
						Keluar</a></li>
			</ul>
		</div>
	</nav>
	<div class="wrapper">
		<!-- Sidebar -->
		<div id="sidebar">
			<ul class="list-unstyled">
				<li><a href="home"><span
						class="glyphicon glyphicon-home"></span> Home</a></li>
				<li><a href="#pembelian" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle"><span
						class="glyphicon glyphicon-tags"></span> Pembelian<span
						class="glyphicon glyphicon-triangle-bottom pull-right"></span></a>
					<ul class="collapse list-unstyled" id="pembelian">
						<li><a href="voucher"><span class="glyphicon glyphicon-phone"></span>
								Voucher</a></li>
					</ul></li>
				<li><a href="#pembayaran" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle"><span
						class="glyphicon glyphicon-usd"></span> Pembayaran<span
						class="glyphicon glyphicon-triangle-bottom pull-right"></span></a>
					<ul class="collapse list-unstyled" id="pembayaran">
						<li><a href="telepon"><span
								class="glyphicon glyphicon-earphone"></span> Telepon</a></li>
					</ul></li>
				<li class="active"><a href="#kredit" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle"><span
						class="glyphicon glyphicon-credit-card"></span> Kartu Kredit<span
						class="glyphicon glyphicon-triangle-bottom pull-right"></span></a>
					<ul class="collapse list-unstyled" id="kredit">
						<li class="active"><a href="transaksi"><span
								class="glyphicon glyphicon-transfer"></span> Transaksi</a></li>
						<li><a href="tagihan"><span
								class="glyphicon glyphicon-duplicate"></span> Tagihan</a></li>
					</ul></li>
				<li><a href="#administrasi" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle"><span
						class="glyphicon glyphicon-log-out"></span> Administrasi<span
						class="glyphicon glyphicon-triangle-bottom pull-right"></span></a>
					<ul class="collapse list-unstyled" id="administrasi">
						<li><a href="#"><span
								class="glyphicon glyphicon-education"></span> Ganti Bahasa</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-user"></span>
								Ganti Password</a></li>
					</ul></li>
			</ul>
		</div>
		<div class="container">
			<div class="content">
				<h3>List Transaksi</h3>
				<hr style="color: blue">
					<c:if test="${!empty listTransaksi}">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Nama Toko</th>
								<th>Nominal Transaksi</th>
								<th>Tanggal Transaksi</th>
							</tr>
						</thead>
						<tbody>
							
							<c:forEach items="${listTransaksi}" var="transaksi">
								<tr>
									<td>${transaksi.nama_toko}</td>
									<td>${transaksi.nominal_transaksi}</td>
									<td><fmt:formatDate value="${transaksi.tanggal_transaksi}" pattern="dd MMM YYYY" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					</c:if>
			</div>
		</div>

	</div>
</body>
</html>