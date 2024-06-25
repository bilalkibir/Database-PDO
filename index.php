<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" 
    rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
     crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
     integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" 
     crossorigin="anonymous"></script>
</head>

<body class="bg-black text-white">

    <div class="container text-center">
        <h1 class="mb-2">Welkom op het netland beheerderspaneel</h1>
        <div class="row justify-content-center">
            <div class="col-5">
                <div class="card bg-dark mb-4">
                    <h2>Series/movies</h2>
                    <table class="table text-white table-dark">
                        <tr>
                            <th>Titel</th>
                            <th>Type</th>
                            <th>Details</th>
                            <th>Edit</th>
                            
                        </tr>
                        <?php
                        $servername = "localhost";
                        $username = "bit_academy";
                        $password = "Jarvis123@";
                        $pdo = new PDO("mysql:host=$servername;dbname=netland", $username, $password);
                        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                        $stmt = $pdo->query('SELECT * FROM media ORDER BY rating DESC');
                        while ($row = $stmt->fetch()) {
                            echo "<td>" . $row['title'] . "</td>";
                            echo "<td>" . $row['type'] . "</td>";
                            echo '<td><a href="detail.php?id=' . $row['id'] . '">bekijk details</a></td>';
                            echo '<td><a href="edit.php?id=' . $row['id'] . '">edit pagina</a></td>';
                            echo "</tr>";
                        }
                        ?>
                    </table>
                </div>

                
                <br> <a href="insert.php">Voeg nieuwe serie / film toe</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
