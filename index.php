<html>
    <body>
        <?php
            // connection params
            $config = parse_ini_file ("config.ini");
            $server = $config ["servername"];
            $username = $config ["username"];
            $password = $config ["password"];
            $database = "nturner3_DB";
            // connect to db
            $cn = mysqli_connect($server, $username, $password, $database);
            // check connection
            if (!$cn) {
            die(" Connection failed:" . mysqli_connect_error());
            }

            $q = "SELECT * FROM podcast";
            $rs = mysqli_query ( $cn , $q );

            if ( mysqli_num_rows ( $rs ) > 0) 
            {
                echo "<p> <em > All Podcasts </em > </p >\n";
                echo "<ol >\n";
                while ( $row = mysqli_fetch_assoc ( $rs )) 
                { // fetch as associative array
                    echo "<li >" . $row ["podcast_id"] . " title: " . $row ["title"] . " description: " . $row ["p_description"] </li >\n";
                }
                echo " </ol >\n";
            }
            else 
            {
                echo "<b>No Countries </b >\n";
            }
            mysqli_close ( $cn );
        ?>
    </body>
</html>