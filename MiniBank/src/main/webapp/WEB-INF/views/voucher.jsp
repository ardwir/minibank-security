<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<%@ page isELIgnored="false"%>
<title>Mini Bank - Voucher</title>
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
				<li><a href="home"><span class="glyphicon glyphicon-home"></span>
						Home</a></li>
				<li class="active"><a href="#pembelian" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle"><span
						class="glyphicon glyphicon-tags"></span> Pembelian<span
						class="glyphicon glyphicon-triangle-bottom pull-right"></span></a>
					<ul class="collapse list-unstyled" id="pembelian">
						<li class="active"><a href="#"><span
								class="glyphicon glyphicon-phone"></span> Voucher</a></li>
					</ul></li>
				<li><a href="#pembayaran" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle"><span
						class="glyphicon glyphicon-usd"></span> Pembayaran<span
						class="glyphicon glyphicon-triangle-bottom pull-right"></span></a>
					<ul class="collapse list-unstyled" id="pembayaran">
						<li><a href="telepon"><span
								class="glyphicon glyphicon-earphone"></span> Telepon</a></li>
					</ul></li>
				<li><a href="#kredit" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle"><span
						class="glyphicon glyphicon-credit-card"></span> Kartu Kredit<span
						class="glyphicon glyphicon-triangle-bottom pull-right"></span></a>
					<ul class="collapse list-unstyled" id="kredit">
						<li><a href="transaksi"><span
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
				<h3>Pembelian Voucher</h3>
				<hr style="color: blue">
				<c:if test="${null != message}">
					<div class="alert alert-success" style="border-radius: 0px">
						<strong>Berhasil! Pembelian voucher ${provider} dengan
							nomor ${nomor} sebesar Rp. ${nominal} telah dilakukan. Token
							${token }.</strong>
					</div>
				</c:if>
				<form:form action="voucher/add" cssClass="form-horizontal"
					method="post" modelAttribute="voucher">
					<form:hidden path="id_nasabah" value="1" />
					<div class="form-group">
						<label class="control-label col-sm-2" for="provider">Provider:</label>
						<div class="col-sm-10">
							<form:select path="provider_voucher" cssClass="form-control"
								id="provider">
								<form:option value="XL">XL</form:option>
								<form:option value="Telkomsel">Telkomsel</form:option>
								<form:option value="Indosat">Indosat Ooredoo</form:option>
							</form:select>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="nomor_telepon">Nomor
							Telepon:</label>
						<div class="col-sm-10">
							<form:input type="text" cssClass="form-control"
								id="nomor_telepon" placeholder="08xxxxxxxxxx"
								path="nomor_telepon" onkeypress="return isNumberKey(event)"/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="token_1">Challenge
							Token:</label>
						<div class="col-sm-10">
							<input style="float: left; width: 50px;" type="number"
								id="token_1" disabled> <input type="number" id="token_2"
								disabled>
							<form:hidden cssClass="form-control" path="token_voucher" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="nominal">Nominal
							:</label>
						<div class="col-sm-10">
							<form:select path="nominal_voucher" cssClass="form-control"
								id="nominal">
								<form:option value="10000">Rp 10.000</form:option>
								<form:option value="25000">Rp 25.000</form:option>
								<form:option value="50000">Rp 50.000</form:option>
								<form:option value="100000">Rp 100.000</form:option>
							</form:select>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="button" class="btn btn-success btn-flat"
								data-toggle="modal" data-target="#myModal">Masukkan</button>

						</div>
					</div>
					<!-- Modal -->
					<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog">
							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Modal Header</h4>
								</div>
								<div class="modal-body">
									<div class="form-group">
										<label class="control-label col-sm-2" for="token">Token:</label>
										<div class="col-sm-10">
											<input type="number" class="form-control" id="token"
												placeholder="Enter your token" name="token" required>
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<button type="submit" class="btn btn-success btn-flat">Save</button>
								</div>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>

	</div>
	<script type="text/javascript">
			$(document).ready(function() {
				document.getElementById('token_1').value = Math.floor(Math.random() * 90 + 10);
			});
			$("#nomor_telepon").on('keyup change', function(){
				var token_1 = document.getElementById('token_1').value;
				var nomor_telepon = document.getElementById('nomor_telepon').value;
				if(nomor_telepon.length>=6){
					var last_six = nomor_telepon.substr(nomor_telepon.length - 6);
				}else{
					var last_six = nomor_telepon;
				}
				
				 
				document.getElementById('token_2').value =last_six;
				document.getElementById('token_voucher').value = token_1.concat(last_six);
				});
			
			function isNumberKey(evt)
		    {
		       var charCode = (evt.which) ? evt.which : event.keyCode
		       if (charCode > 31 && (charCode < 48 || charCode > 57))
		          return false;

		       return true;
		    }
	</script>
</body>
</html>