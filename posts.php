<?php include 'inc/header.php'; ?>
<?php
$categoryid = mysqli_real_escape_string($db->link, $_GET['category']);
if (!isset($categoryid) || $categoryid == NULL) {
    header("Location: 404.php");
} else {
    $category = $categoryid;
}
?>

<div class="contentsection contemplete clear">
    <div class="maincontent clear">
        <?php
        $query = "select * from tbl_post where cat=$category order by id desc";
        $post = $db->select($query);
        if ($post) {
            while ($result = $post->fetch_assoc()) {

        ?>
        <div class="samepost clear">
            <h2><a href="post.php?id=<?php echo $result['id']; ?>"><?php echo $result['title']; ?></a></h2>
            <h4><?php echo $fm->formatDate($result['date']); ?>, By <a
                    href="page.php?pageid=1"><?php echo $result['author']; ?></a></h4>
            <a href="#"><img src="admin/<?php echo $result['image']; ?>" alt="post image" /></a>
            <?php echo $fm->textShorten($result['body']); ?>
            <div class="readmore clear">
                <a href="post.php?id=<?php echo $result['id']; ?>">Read More</a>
            </div>
        </div>
        <?php }
        } else { ?>
        <h3>No Post Available In This Category</h3>
        <?php } ?>
    </div>

    <?php include "inc/sidebar.php"; ?>
    <?php include "inc/footer.php"; ?>