<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<%@ page isELIgnored="false"%>
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
				<li><a href="logout"><span class="glyphicon glyphicon-log-out"></span>
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
				<li><a href="#pembelian" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle"><span
						class="glyphicon glyphicon-tags"></span> Pembelian<span
						class="glyphicon glyphicon-triangle-bottom pull-right"></span></a>
					<ul class="collapse list-unstyled" id="pembelian">
						<li><a href="voucher"><span
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
				<h3>Tagihan Kartu Kredit</h3>
				<hr style="color: blue">
				<c:if test="${null != message}">
					<div class="alert alert-success" style="border-radius: 0px">
						<strong>Berhasil! Total pembayaran anda saat ini sebesar
							Rp <fmt:formatNumber pattern="#,###,###,###" value="${nominal}" />.
						</strong>
					</div>
				</c:if>
				<form:form action="tagihan/save" cssClass="form-horizontal"
					method="post" modelAttribute="tagihan">
					<form:hidden path="id_nasabah" />
					<form:hidden path="id" />
					<div class="form-group">
						<label class="control-label col-sm-2" for="periode">Periode
							:</label>
						<div class="col-sm-10">
							<input type="text" style="border-style: none"
								class="form-control" id="periode" value="${periode}" readonly />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="total_tagihan">Total
							Tagihan :</label>
						<div class="col-sm-10">
							<input type="text" style="border-style: none"
								class="form-control" id="total_transaksi"
								value="<fmt:formatNumber pattern="#,###,###,###" value="${total_transaksi}" />"
								readonly /> <input type="hidden" id="total_transaksi_no_format"
								value="${total_transaksi}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="minimal">Minimal
							Bayar :</label>
						<div class="col-sm-10">
							<input type="text" style="border-style: none"
								class="form-control" id="minimal" value="50,000" readonly />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="tanggal_jatuh_tempo">Tanggal
							Jatuh Tempo :</label>
						<div class="col-sm-10">
							<input type="text" style="border-style: none"
								class="form-control" id="minimal" value="${jatuh_tempo}"
								readonly />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="total_tagihan_db">Telah
							Dibayar :</label>
						<div class="col-sm-10">
							<input type="text" style="border-style: none"
								class="form-control" id="total_tagihan_db"
								value=<fmt:formatNumber pattern="#,###,###,###" value="${tagihan.total_tagihan}" />
								readonly /> <input type="hidden" style="border-style: none"
								class="form-control" id="total_tagihan_db_no_format"
								value="${tagihan.total_tagihan}" readonly />
							<form:hidden path="total_tagihan"
								value="${tagihan.total_tagihan}" id="total_tagihan_input" />
						</div>
					</div>
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
										<td><fmt:formatNumber pattern="#,###,###,###"
												value="${transaksi.nominal_transaksi}" /></td>
										<td><fmt:formatDate
												value="${transaksi.tanggal_transaksi}" pattern="dd MMM YYYY" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</c:if>
					<div class="form-group">
						<label class="control-label col-sm-2" for="total_tagihan_jsp">Nominal
							Bayar :</label>
						<div class="col-sm-10">
							<input type="number" class="form-control" id="total_tagihan_jsp" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="button" class="btn btn-success btn-flat"
								data-toggle="modal" data-target="#myModal">Bayar</button>

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
									<button type="submit" class="btn btn-success btn-flat">Simpan</button>
								</div>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		//set max nominal bayar
		$(document)
				.ready(
						function() {
							var total_transaksi = parseInt(document
									.getElementById('total_transaksi_no_format').value);
							var total_tagihan_db_no_format = parseInt(document
									.getElementById('total_tagihan_db_no_format').value);

							var element = $("#total_tagihan_jsp");
							element.attr({
								"max" : total_transaksi
										- total_tagihan_db_no_format
							});
						});
		//set total tagihan by input + current total
		$("#total_tagihan_jsp")
				.on(
						'keyup change load',
						function() {
							var total_tagihan_jsp = parseInt(document
									.getElementById('total_tagihan_jsp').value);
							var total_tagihan_db_no_format = parseInt(document
									.getElementById('total_tagihan_db_no_format').value);

							document.getElementById('total_tagihan_input').value = total_tagihan_db_no_format
									+ total_tagihan_jsp;
						});
	</script>

</body>
</html>
