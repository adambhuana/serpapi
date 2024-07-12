<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Google Review Search</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center">Google Review Search</h1>
    <form method="GET" action="index.php">
        <div class="form-group">
            <input type="text" class="form-control" name="query" placeholder="Enter search query" required>
        </div>
        <button type="submit" class="btn btn-primary">Search</button>
    </form>

    <?php
    if (isset($_GET['query'])) {
        require 'config.php';

        // Menyiapkan pernyataan SQL untuk menghapus semua data dari tabel
        $sql = "DELETE FROM reviews";

        // Menjalankan pernyataan SQL
        if ($conn->query($sql) === TRUE) {
            echo "All records deleted successfully.";
        } else {
            echo "Error deleting records: " . $conn->error;
        }

        // Menutup koneksi
        $conn->close();
        $query = urlencode($_GET['query']);
        $api_key = '28631dd982fd40c01eac0bfe5b600ae7653360d85434bd1c1d1d800418169e0d'; // Ganti dengan API key Anda
        $url = "https://serpapi.com/search.json?engine=google_maps&q=".$query."&api_key=".$api_key;
        
        // echo $url;
        $response = file_get_contents($url);
        $results = json_decode($response, true);

        if (isset($results['local_results'])) {
            echo '<div class="mt-5">';
            echo '<h2>Search Results:</h2>';
            echo '<div class="list-group">';

            foreach ($results['local_results'] as $place) {
                echo '<div class="list-group-item">';
                echo '<a href="reviews.php?dataku='.$place['data_id'].'"><h3>' . $place['title'] . '</h3></a>';
                echo '<p>' . $place['rating'] . ' stars, ' . $place['reviews'] . ' reviews</p>';
                echo '<p>' . $place['address'] . '</p>';
                echo '</div>';
            }

            echo '</div>';
            echo '</div>';
        } else {
            echo '<div class="mt-5">';
            echo '<p>No results found.</p>';
            echo '</div>';
        }
    }
    ?>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
