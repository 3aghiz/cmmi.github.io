<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Berita</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
         body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #224abe;
            margin: 0;
            padding: 0;
        }

        header {
            background-image: linear-gradient(180deg, #2b3640 35%, #224abe 100%);
            padding: 20px 0;
            color: white;
            text-align: center;
            height: 100px;
        }

        .news-container {
            margin: 100px;
        }

        .news-card {
            border: 1px solid #dee2e6;
            border-radius: 10px;
            margin-bottom: 20px;
            overflow: hidden;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }

        .news-card:hover {
            transform: scale(1.05);
        }

        .news-card img {
            width: 100%;
            height: 250px;
            object-fit: cover;
        }

        .news-card-body {
            padding: 20px;
            background-color: #fff;
        }

        .news-title {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 10px;
            color: #343a40;
        }

        .news-category {
            font-size: 14px;
            color: #6c757d;
            margin-bottom: 15px;
            text-transform: uppercase;
        }

        .news-summary {
            font-size: 18px;
            margin-bottom: 15px;
            color: #495057;
        }

        .news-date {
            font-size: 14px;
            color: #6c757d;
        }
        
        header h1 {
            margin-top: 40px;
            text-shadow: 0px 4px 8px;
            
        }

    </style>
</head>
<body>

    <header>
        <section>
            <h1>DAFTAR CERAMAH</h1>
        
        </section>
        
    </header>

    <div class="container news-container">
        <div class="row">
            <div class="col-md-4">
                <div class="news-card">
                    <img src="https://via.placeholder.com/400x250" alt="Berita 1">
                    <div class="news-card-body">
                        <p class="news-category">Kategori Berita</p>
                        <h2 class="news-title">Judul Berita Pertama yang Lebih Panjang</h2>
                        <p class="news-summary">Ringkasan berita pertama. Deskripsi singkat mengenai konten berita yang menarik.</p>
                        <p class="news-date">12 Desember 2023</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="news-card">
                    <img src="https://via.placeholder.com/400x250" alt="Berita 2">
                    <div class="news-card-body">
                        <p class="news-category">Kategori Berita</p>
                        <h2 class="news-title">Judul Berita Kedua yang Lebih Panjang</h2>
                        <p class="news-summary">Ringkasan berita kedua. Deskripsi singkat mengenai konten berita yang menarik.</p>
                        <p class="news-date">13 Desember 2023</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="news-card">
                    <img src="https://via.placeholder.com/400x250" alt="Berita 3">
                    <div class="news-card-body">
                        <p class="news-category">Kategori Berita</p>
                        <h2 class="news-title">Judul Berita Ketiga yang Lebih Panjang</h2>
                        <p class="news-summary">Ringkasan berita ketiga. Deskripsi singkat mengenai konten berita yang menarik.</p>
                        <p class="news-date">14 Desember 2023</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
