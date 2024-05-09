<?php
    $title = "Users - ZK PREMIUM COFFEE";
    include('../middleware/admin_middleware.php');
    include('inc/header.php');
    include('./modal.php');
?>

<div class="container-fluid px-4">
    <h1 class="mt-4">Users</h1>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header">
                 Users List
                </div>

                <div class="card-body" id="users_table">
                    <div class="table table-wrapper-scroll-y my-custom-scrollbar">
                        <table class="table table-bordered table-striped mb-0">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <!-- <th>Image</th>
                                    <th>Status</th> -->
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $users = getAllUsers("tbl_users");
                                    if (mysqli_num_rows($users) > 0) {
                                        foreach ($users as $item) {
                                            ?>
                                                <tr>
                                                    <td><?= $item['id']; ?></td>
                                                    <td><?= $item['name']; ?></td>
                                                    <!-- <td>
                                                        <img style="width: 50px; height: 50px; border-radius: 50%;" src="../uploaded/<?= $item['image']; ?>" alt="<?= $item['name']; ?>">
                                                    </td> -->
                                                    <!-- <td><?= $item['status'] == '0' ? "Visible" : "Hidden" ?></td> -->
                                                    <td class="">
                                                        <div class="row">
                                                            <div class="col-2">
                                                                <a href="edit_user.php?id=<?= $item['id']; ?>" class="pb-2 btn btn-primary">    
                                                                   Edit
                                                                </a>
                                                            </div>
                                                            <div class="col-3">
                                                                <button type="button" value="<?= $item['id']; ?>" class="btn btn-danger delete_users_btn">Delete</button>
                                                            </div>
                                                        </div>
                                                        
                                                    </td>
                                                </tr>
                                            <?php
                                        }
                                    }else{
                                        echo "No record found.";
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
             
            </div>
        </div>
    </div>
</div>
<?php
include('inc/footer.php');
?>
