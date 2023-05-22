<?php include('header.php'); ?>


<?php

//Display all the cateories that are active
//Sql Query
$sql = "SELECT * FROM category ";

//Execute the Query
$res = mysqli_query($conn, $sql);

//Count Rows
$count = mysqli_num_rows($res);

//CHeck whether categories available or not
if ($count > 0) {
    //CAtegories Available
    while ($row = mysqli_fetch_assoc($res)) {
        //Get the Values
        $id = $row['id'];
        $vocab = $row['vocab'];
        $eng_mean = $row['engmean'];
        $tam_mean = $row['tammean'];
        $sql1 = "SeLECT * FROM sub_category WHERE cgry_id=$id";
        $res1 = mysqli_query($conn, $sql1);
        $count1 = mysqli_num_rows($res);
        ?>


        <div class="word">
            <div class="root">
                <h1>
                    <?php echo $vocab ?>
                </h1>
                <p>
                    <?php echo $eng_mean ?>
                </p>
            </div>
            <div class="container">
                <div class="card">
                    <?php
                    if ($count1 > 0) {
                        while ($row1 = mysqli_fetch_assoc($res1)) {
                            $word = $row1['words'];
                            $engmean = $row1['eng_mean'];
                            $thangmean = $row1['thang_mean'];
                            ?>
                            <div class="face face1">
                                <div class="content">
                                    <div class="leaf_word">
                                        <h3>
                                            <?php echo $word ?>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                            <div class="face face2">
                                <div class="content">
                                    <p> <b>English Meaning: </b>
                                        <?php echo $engmean ?><br><b>Tamil Meaning: </b>
                                        <?php echo $thangmean ?>
                                    </p>
                                </div>
                            </div>

                            <?php
                        }
                        ?>
                    </div>
                </div>
                <?php
                    }
                    ?>



        </div>

    <?PHP } ?>



    <?php

} else {
    //CAtegories Not Available
    echo "<div class='error'>Category not found.</div>";
}

?>


//empty




<!-- 
<div class="word">
    <div class="root">
        <h1>Root word</h1>
        <p>This is where I network and build my professional protfolio.This is where I network and build my
            professional pro</p>
    </div>
    <div class="container">
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <div class="leaf_word">
                        <h3>
                            leaf word
                        </h3>
                    </div>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p> <b>Tamil Meaning: </b>This is where I network and build my professional protfolio.This is
                        where I network and build
                        my professional protfolio.<br><b>English Meaning: </b>This is where I network and build my
                        professional protfolio.This
                        is where I network and build my professional protfolio.</p>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <div class="leaf_word">
                        <h3>
                            leaf word
                        </h3>
                    </div>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p> <b>Tamil Meaning: </b>This is where I network and build my professional protfolio.This is
                        where I network and build
                        my professional protfolio.<br><b>English Meaning: </b>This is where I network and build my
                        professional protfolio.This
                        is where I network and build my professional protfolio.</p>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <div class="leaf_word">
                        <h3>
                            leaf word
                        </h3>
                    </div>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p> <b>Tamil Meaning: </b>This is where I network and build my professional protfolio.This is
                        where I network and build
                        my professional protfolio.<br><b>English Meaning: </b>This is where I network and build my
                        professional protfolio.This
                        is where I network and build my professional protfolio.</p>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <div class="leaf_word">
                        <h3>
                            leaf word
                        </h3>
                    </div>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p> <b>Tamil Meaning: </b>This is where I network and build my professional protfolio.This is
                        where I network and build
                        my professional protfolio.<br><b>English Meaning: </b>This is where I network and build my
                        professional protfolio.This
                        is where I network and build my professional protfolio.</p>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <div class="leaf_word">
                        <h3>
                            leaf word
                        </h3>
                    </div>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p> <b>Tamil Meaning: </b>This is where I network and build my professional protfolio.This is
                        where I network and build
                        my professional protfolio.<br><b>English Meaning: </b>This is where I network and build my
                        professional protfolio.This
                        is where I network and build my professional protfolio.</p>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <div class="leaf_word">
                        <h3>
                            leaf word
                        </h3>
                    </div>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p> <b>Tamil Meaning: </b>This is where I network and build my professional protfolio.This is
                        where I network and build
                        my professional protfolio.<br><b>English Meaning: </b>This is where I network and build my
                        professional protfolio.This
                        is where I network and build my professional protfolio.</p>
                </div>
            </div>
        </div>



    </div>
</div>
<div class="word">
    <div class="root">
        <h1>Root word</h1>
        <p>This is where I network and build my professional protfolio.This is where I network and build my
            professional pro</p>
    </div>
    <div class="container">
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <div class="leaf_word">
                        <h3>
                            leaf word
                        </h3>
                    </div>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p> <b>Tamil Meaning: </b>This is where I network and build my professional protfolio.This is
                        where I network and build
                        my professional protfolio.<br><b>English Meaning: </b>This is where I network and build my
                        professional protfolio.This
                        is where I network and build my professional protfolio.</p>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <div class="leaf_word">
                        <h3>
                            leaf word
                        </h3>
                    </div>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p> <b>Tamil Meaning: </b>This is where I network and build my professional protfolio.This is
                        where I network and build
                        my professional protfolio.<br><b>English Meaning: </b>This is where I network and build my
                        professional protfolio.This
                        is where I network and build my professional protfolio.</p>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <div class="leaf_word">
                        <h3>
                            leaf word
                        </h3>
                    </div>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p> <b>Tamil Meaning: </b>This is where I network and build my professional protfolio.This is
                        where I network and build
                        my professional protfolio.<br><b>English Meaning: </b>This is where I network and build my
                        professional protfolio.This
                        is where I network and build my professional protfolio.</p>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <div class="leaf_word">
                        <h3>
                            leaf word
                        </h3>
                    </div>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p> <b>Tamil Meaning: </b>This is where I network and build my professional protfolio.This is
                        where I network and build
                        my professional protfolio.<br><b>English Meaning: </b>This is where I network and build my
                        professional protfolio.This
                        is where I network and build my professional protfolio.</p>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <div class="leaf_word">
                        <h3>
                            leaf word
                        </h3>
                    </div>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p> <b>Tamil Meaning: </b>This is where I network and build my professional protfolio.This is
                        where I network and build
                        my professional protfolio.<br><b>English Meaning: </b>This is where I network and build my
                        professional protfolio.This
                        is where I network and build my professional protfolio.</p>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <div class="leaf_word">
                        <h3>
                            leaf word
                        </h3>
                    </div>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p> <b>Tamil Meaning: </b>This is where I network and build my professional protfolio.This is
                        where I network and build
                        my professional protfolio.<br><b>English Meaning: </b>This is where I network and build my
                        professional protfolio.This
                        is where I network and build my professional protfolio.</p>
                </div>
            </div>
        </div>



    </div>
</div>
 -->

<?php include('footer.php'); ?>