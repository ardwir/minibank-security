<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Mini Bank - Halaman Utama</title>
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
      <a class="navbar-brand" href="#"><strong>Mini Bank</strong></a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a><span class="glyphicon glyphicon-user"></span> Hi, Nasabah</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Keluar</a></li>
    </ul>
  </div>
</nav>
<div class="wrapper">
    <!-- Sidebar -->
    <div id="sidebar">
        <ul class="list-unstyled">
            <li class="active">
                <a href="#"><span class="glyphicon glyphicon-home"></span> Home</a>
            </li>
            <li>
                <a href="#pembelian" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><span class="glyphicon glyphicon-tags"></span> Pembelian<span class="glyphicon glyphicon-triangle-bottom pull-right"></span></a>
                <ul class="collapse list-unstyled" id="pembelian">
                    <li>
                        <a href="voucher"><span class="glyphicon glyphicon-phone"></span> Voucher</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#pembayaran" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><span class="glyphicon glyphicon-usd"></span> Pembayaran<span class="glyphicon glyphicon-triangle-bottom pull-right"></span></a>
                <ul class="collapse list-unstyled" id="pembayaran">
                    <li>
                        <a href="telepon"><span class="glyphicon glyphicon-earphone"></span> Telepon</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#kredit" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><span class="glyphicon glyphicon-credit-card"></span> Kartu Kredit<span class="glyphicon glyphicon-triangle-bottom pull-right"></span></a>
                <ul class="collapse list-unstyled" id="kredit">
                    <li>
                        <a href="transaksi"><span class="glyphicon glyphicon-transfer"></span> Transaksi</a>
                    </li>
                    <li>
                        <a href="tagihan"><span class="glyphicon glyphicon-duplicate"></span> Tagihan</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#administrasi" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><span class="glyphicon glyphicon-log-out"></span> Administrasi<span class="glyphicon glyphicon-triangle-bottom pull-right"></span></a>
                <ul class="collapse list-unstyled" id="administrasi">
                    <li>
                        <a href="#"><span class="glyphicon glyphicon-education"></span> Ganti Bahasa</a>
                    </li>
                    <li>
                        <a href="#"><span class="glyphicon glyphicon-user"></span> Ganti Password</a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
    <div class="container">
    	<div class="content">
    	<h3>Hi, Nasabah. Selamat Datang di Mini Bank</h3>
    	<hr style="color:blue">
    	<img style="width:100%" src=https://images.unsplash.com/photo-1580482982890-4caedd6f97ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80>
    	</div>
    </div>

</div>
</body>
</html>