<?php
$title = "Edit Item - ZK PREMIUM COFFEE";
include('../middleware/admin_middleware.php');
include('inc/header.php');
?>

<div class="container-fluid px-4">
    <h1 class="mt-4">Edit Users</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item active">Users</li>
        <li class="breadcrumb-item">Edit Users</li>
    </ol>
    <div class="row mt-3">
        <div class="col-lg-12">
            <?php
            if (isset($_GET['id'])) {

                $id = $_GET['id']; // fetch item with id.
                $tbl_users = getByIdUser("tbl_users", $id);

                if (mysqli_num_rows($tbl_users) > 0) {

                    $data = mysqli_fetch_array($tbl_users);
            ?>
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit item Form</h4>
                        </div>
                        <div class="card-body">
                            <form action="code.php" method="POST" enctype="multipart/form-data">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="mb-3">

                                            <input type="hidden" name="tbl_users_id" value="<?= $data['id'] ?>">
                                            <label class="form-label">Name</label>
                                            <input type="text" name="name" value="<?= $data['name'] ?>" class="form-control" placeholder="Enter Item Name">

                                            <label class="form-label pt-1">Phone</label>
                                            <input type="text" name="phone" value="<?= $data['phone'] ?>" class="form-control" placeholder="Enter Phone">

                                            <label class="form-label pt-1">Email</label>
                                            <input type="text" name="email" value="<?= $data['email'] ?>" class="form-control" placeholder="Enter Email">

                                            <label class="form-label pt-1">Role As</label>
                                            <input type="text" name="role_as" value="<?= $data['role_as'] ?>" class="form-control" placeholder="Enter Role As">
                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-12 d-flex justify-content-end">
                                    <button type="submit" class="btn btn-primary" name="update_user_btn">Update</button>
                                </div>
                            </form>

                        </div>
                    </div>
            <?php
                } else {
                    redirect("menu.php", "Item Not Found");
                }
            } else {
                redirect("menu.php", "ID Missing from URL");
            }
            ?>
        </div>
    </div>
</div>
<?php
include('inc/footer.php');
?>