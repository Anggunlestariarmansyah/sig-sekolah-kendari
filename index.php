<?php include 'lib/head.php' ?>
<?php
session_start();
if (!isset($_SESSION['username'])) {
    header('location:login.php');
    exit;
}
?>
<?php include 'lib/navbar.php' ?>

<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="card ">
                <div class="card-header ">
                    Maps
                </div>
                <div class="card-body ">
                    <form action="" method="post">
                        <div class="input-group no-border">
                            <input type="text" name="keyword" class="form-control" placeholder="Search...">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <button type="submit" class="btn btn-primary" name="cari"><i class="nc-icon nc-zoom-split"></i></button>
                                    <a href="coba.php" class="btn btn-secondary"><i class="nc-icon nc-refresh-69"></i></a>
                                </div>
                            </div>
                        </div>
                    </form>
                    <div id="map" class="map"></div>
                    <div class="col-12">
                            <br>
                        <!-- <div id="map" class="text-center"></div> -->
                        <div class="col-12">
                            <div class="Data">
                                <form action="tambah.php" method="post" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <label for="latlng">Latitude, Longitude</label>
                                        <input type="text" class="form-control" id="latlng" name="latlng" required placeholder="Tekan pada peta lokasinya">
                                    </div>
                                    <div class="form-group">
                                        <label for="nama_lokasi">Nama Tempat</label>
                                        <input type="text" class="form-control" id="nama_lokasi" name="nama_lokasi" required placeholder="Masukkan nama tempat">
                                    </div>
                                    <div class="form-group">
                                        <label for="gambar">Gambar</label>
                                        <input type="file" class="form-control" id="gambar" name="gambar" autocomplete="off" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="kategori">Kategori</label>
                                        <select class="form-control" id="kategori" name="kategori" required>
                                            <option value="" class="text-center">===Pilih Kategori===</option>
                                            <option value="SD">SD</option>
                                            <option value="SMP">SMP</option>
                                            <option value="SMA">SMA</option>
                                            <option value="SMK">SMK</option>
                                        </select>
                                    </div>
                                    <div class="form-group mb-3 mt-3">
                                        <button type="submit" class="btn btn-success form-control" name="btnTambah" value="tambah">Tambah Data</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include 'lib/footer.php' ?>

<script>
    var map = L.map('map').setView([-3.9918064606988537, 122.51800582396032], 13);

    // tileLayer
    var tileLayer = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
        attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
    });

    // Google map layer
    var Googlemap = googleStreets = L.tileLayer('http://{s}.google.com/vt?lyrs=m&x={x}&y={y}&z={z}', {
        maxZoom: 20,
        subdomains: ['mt0', 'mt1', 'mt2', 'mt3']
    }).addTo(map);

    // Hybrid
    var Hybrid = googleHybrid = L.tileLayer('http://{s}.google.com/vt?lyrs=s,h&x={x}&y={y}&z={z}', {
        maxZoom: 20,
        subdomains: ['mt0', 'mt1', 'mt2', 'mt3']
    });

    // Terrain
    var Terrain = googleTerrain = L.tileLayer('http://{s}.google.com/vt?lyrs=p&x={x}&y={y}&z={z}', {
        maxZoom: 20,
        subdomains: ['mt0', 'mt1', 'mt2', 'mt3']
    });

    // Layer Control
    var baseLayers = {
        "TileLayer": tileLayer,
        "GoogleStreets": Googlemap,
        "Hybrid": Hybrid,
        "Terrain": Terrain
    };

    var overlays = {
        // "Marker": Googlemap
    };

    L.control.layers(baseLayers, overlays).addTo(map);


    var popup = L.popup();

    function onMapClick(e) {
        var latlng = e.latlng;
        var lat = latlng.lat.toFixed(6);
        var lng = latlng.lng.toFixed(6);
        var latlng_format = lat + ', ' + lng;

        console.log('Latlng: ' + latlng_format); // Add this line to debug
        document.getElementById('latlng').value = latlng_format;

        popup
            .setLatLng(e.latlng)
            .setContent("Titik Koordinat nya adalah <br> " + e.latlng.toString())
            .openOn(map);
    }

    map.on('click', onMapClick);


    <?php
    if (isset($_POST['cari'])) {
        $keyword = $_POST['keyword'];
        $tampilkan = mysqli_query($konek, "SELECT * FROM tb_lokasi WHERE nama_lokasi LIKE '%$keyword%'OR kategori LIKE '%$keyword%'");
    } else {
        $tampilkan = mysqli_query($konek, "SELECT * FROM tb_lokasi");
    }

    while ($data = mysqli_fetch_array($tampilkan)) { ?>
        var redIcon = new L.Icon({
            iconUrl: 'https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-black.png',
            shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png',
            iconSize: [25, 41],
            iconAnchor: [12, 41],
            popupAnchor: [1, -34],
            shadowSize: [41, 41]
        });
        var marker = L.marker([<?php echo $data["latlng"] ?>], {
            icon: redIcon
        }).addTo(map);
        marker.bindPopup("<b><?php echo $data["nama_lokasi"] ?></b><br><b><?php echo $data["kategori"] ?></b><br><img src='gambar/<?php echo $data['gambar'] ?>' alt='gambar' width='160px'>");

    <?php } ?>
</script>

</body>

</html>