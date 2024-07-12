<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Google Map Review Search</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center">Google Map Review Search</h1>
    <?php
    require 'config.php';

    if (isset($_GET['dataku'])) {
        $dataid = $_GET['dataku'];
        $api_key = '28631dd982fd40c01eac0bfe5b600ae7653360d85434bd1c1d1d800418169e0d'; // Ganti dengan API key Anda
        $url = "https://serpapi.com/search.json?engine=google_maps_reviews&data_id=".$dataid."&api_key=".$api_key;

        echo $url;
       
        $pagination = true;
        while ($pagination) {
            $response = file_get_contents($url);
            $results = json_decode($response, true);
            if (isset($results['reviews'])) {
                echo '<div class="mt-5">';
                echo '<h2>Search Results:</h2>';
                echo '<table class="table table-bordered">';
                echo '<thead>';
                echo '<tr>';
                if (isset($results['place_info'])) {
                    echo '<th>Title</th>';
                    echo '<th>Rating</th>';
                    echo '<th>Reviews Count</th>';
                    echo '<th>Address</th>';
                }
                echo '<th>Review Text</th>';
                echo '</tr>';
                echo '</thead>';
                echo '<tbody>';
                
                foreach ($results['reviews'] as $review) {
                    $title = $results['place_info']['title'];
                    $rating = $results['place_info']['rating'];
                    $reviews_count = $results['place_info']['reviews'];
                    $address = $results['place_info']['address'];
                    $review_text = $review['snippet'];
    
                    // Menyimpan ke database
                    // $stmt = $conn->prepare("INSERT INTO reviews (title, rating, reviews_count, address, review_text) VALUES (?, ?, ?, ?, ?)");
                    // $stmt->bind_param("sdsis", $title, $rating, $reviews_count, $address, $review_text);
                    // $stmt->execute();
                    // $stmt->close();
    
                    echo '<tr>';
                    echo "<td>$title</td>";
                    echo "<td>$rating</td>";
                    echo "<td>$reviews_count</td>";
                    echo "<td>$address</td>";
                    echo "<td>$review_text</td>";
                    echo '</tr>';
                }
    
                echo '</tbody>';
                echo '</table>';
                echo '</div>';
            } else {
                echo '<div class="mt-5">';
                echo '<p>No results found.</p>';
                echo '</div>';
            }
            if (isset($results['serpapi_pagination']) && isset($results['serpapi_pagination']['next'])) {
                $url = $results['serpapi_pagination']['next'];
                echo $url;
            } else {
                $pagination = false;
            }
        }
        
    }
    ?>

    <div class="mt-5">
        <h2>Saved Reviews:</h2>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Rating</th>
                <th>Reviews Count</th>
                <th>Address</th>
                <th>Review Text</th>
                <th>Created At</th>
            </tr>
            </thead>
            <tbody>
            <?php
            $sql = "SELECT * FROM reviews";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo '<tr>';
                    echo '<td>' . $row["id"] . '</td>';
                    echo '<td>' . $row["title"] . '</td>';
                    echo '<td>' . $row["rating"] . '</td>';
                    echo '<td>' . $row["reviews_count"] . '</td>';
                    echo '<td>' . $row["address"] . '</td>';
                    echo '<td>' . $row["review_text"] . '</td>';
                    echo '<td>' . $row["created_at"] . '</td>';
                    echo '</tr>';
                }
            } else {
                echo '<tr><td colspan="7">No reviews found.</td></tr>';
            }
            ?>
            </tbody>
        </table>
    </div>

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
