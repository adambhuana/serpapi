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

    function saveReview($conn, $user1, $review_text) {
        $stmt = $conn->prepare("INSERT INTO reviews(userku, review_text) VALUES (?, ?)");
        $stmt->bind_param("ss", $user1, $review_text);
        $stmt->execute();
        $stmt->close();
    }

    if (isset($_GET['dataku'])) {
        $dataid = $_GET['dataku'];
        $api_key = '28631dd982fd40c01eac0bfe5b600ae7653360d85434bd1c1d1d800418169e0d'; // Ganti dengan API key Anda
        $url = "https://serpapi.com/search.json?engine=google_maps_reviews&data_id=".$dataid."&api_key=".$api_key;

        $pagination = true;

        while ($pagination) {
            $response = file_get_contents($url);
            $results = json_decode($response, true);
            if (isset($results['reviews'])) {
                foreach ($results['reviews'] as $review) {
                    $user1 = $review['user']['name'];
                    if (isset($results['reviews'])) {
                        if (isset($review['snippet'])) {
                            $review_text = $review['snippet'];
                        }
                        else{
                            $review_text="Tidak ada Review";
                        }                           
                    }
                    else{
                        $review_text="Tidak ada Review";
                    }
                    //saveReview($conn, $user1, $review_text);
                    $stmt = $conn->prepare("INSERT INTO reviews(userku, review_text) VALUES (?, ?)");
                    $stmt->bind_param("ss", $user1, $review_text);
                    $stmt->execute();
                    $stmt->close();
                }
            }

            if (isset($results['serpapi_pagination']) && isset($results['serpapi_pagination']['next'])) {
                $url =$results['serpapi_pagination']['next']."&api_key=".$api_key;
            } else {
                $pagination = false;
            }
        }
        
        echo '<div class="mt-5">';
        echo '<h2>Search Results:</h2>';
        echo '<table class="table table-bordered">';
        echo '<thead>';
        echo '<tr>';
        echo '<th>User Name</th>';
        echo '<th>Review Text</th>';
        echo '</tr>';
        echo '</thead>';
        echo '<tbody>';

        $sql = "SELECT * FROM reviews";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo '<tr>';
               
                echo '<td>' . $row["userku"] . '</td>';
                echo '<td>' . $row["review_text"] . '</td>';
                echo '</tr>';
            }
        } else {
            echo '<tr><td colspan="5">No reviews found.</td></tr>';
        }

        echo '</tbody>';
        echo '</table>';
        echo '</div>';
    }
    ?>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
