<?php
session_start();

//Membuat koneksi ke database
$koneksi=mysqli_connect("localhost","root","","db_barang");

//Menambah barang baru
if (isset($_POST['addnewbarang'])) {
	$namabarang = $_POST['namabarang'];
	$deskripsi = $_POST['deskripsi'];
	$stock = $_POST['stock'];
	$satuan=$_POST['satuan'];

	$addtotable = mysqli_query($koneksi, "insert into stock (namabarang, deskripsi, stock, satuan) values('$namabarang', '$deskripsi', '$stock', '$satuan')");
	if ($addtotable) {
		header('Location:index.php');
	} else{
		echo "Gagal memasukkan data barang";
		header('Location:index.php');
	}
};


//Menambah barang masuk
if (isset($_POST['barangmasuk'])) {
	$barangnya = $_POST['barangnya'];
	$penerima = $_POST['penerima'];
	$qty = $_POST['qty'];

	$cekstocksekarang = mysqli_query($koneksi, "SELECT * from stock where idbarang='$barangnya'");
	$ambildatanya = mysqli_fetch_array($cekstocksekarang);

	$stocksekarang = $ambildatanya['stock'];
	$tambahkanstocksekarangdenganquantity = $stocksekarang+$qty;

	$addtomasuk = mysqli_query($koneksi, "insert into masuk (idbarang, keterangan, qty) values ('$barangnya', '$penerima', '$qty')");
	$updatestockmasuk = mysqli_query($koneksi, "update stock set stock= '$tambahkanstocksekarangdenganquantity' where idbarang='$barangnya'");
	if($addtomasuk&&$updatestockmasuk){
		header('Location:masuk.php');
	} else{
		echo "Gagal memasukkan data barang";
		header('Location:masuk.php');
	}
}

//Menambah barang keluar
if (isset($_POST['addbarangkeluar'])) {
	$barangnya = $_POST['barangnya'];
	$penerima = $_POST['penerima'];
	$qty = $_POST['qty'];

	$cekstocksekarang = mysqli_query($koneksi, "SELECT * from stock where idbarang='$barangnya'");
	$ambildatanya = mysqli_fetch_array($cekstocksekarang);

	$stocksekarang = $ambildatanya['stock'];
	
	if($stocksekarang >= $qty){
		//kalau barangnya cukup
		$tambahkanstocksekarangdenganquantity = $stocksekarang-$qty;

		$addtokeluar = mysqli_query($koneksi, "insert into keluar (idbarang, penerima, qty) values ('$barangnya', '$penerima', '$qty')");
		$updatestockmasuk = mysqli_query($koneksi, "update stock set stock= '$tambahkanstocksekarangdenganquantity' where idbarang='$barangnya'");
		if($addtomasuk&&$updatestockmasuk){
			header('Location:keluar.php');
		} else{
			echo "Gagal memasukkan data barang";
			header('Location:keluar.php');
		}
	} else{
		//kalau barangnya gak cukup
		echo '
		<script>
			alert("Stock saat ini tidak mencukupi");
			window.Location.href="keluar.php";
		</script>
		';
	}	
}

//Update input barang
if (isset($_POST['updatebarang'])) {
	$idb=$_POST['idb'];
	$namabarang=$_POST['namabarang'];
	$deskripsi=$_POST['deskripsi'];
	$satuan=$_POST['satuan'];

	$update = mysqli_query($koneksi, "update stock set namabarang='$namabarang', Deskripsi='$deskripsi', satuan='$satuan' where idbarang='$idb'");
	if ($update) {
		header('Location:index.php');
	} else{
		echo "Gagal edit data barang";
		header('Location:index.php');
	}
}

//Menghapus barang dari stock
if (isset($_POST['hapusbarang'])) {
	$idb=$_POST['idb'];

	$hapus=mysqli_query($koneksi, "delete from stock where idbarang='$idb'");
	if ($hapus) {
		header('Location:index.php');
	} else{
		echo "Gagal hapus data barang";
		header('Location:index.php');
	}
}

?>
