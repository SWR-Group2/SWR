<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
        <meta name="author" content="AdminKit">
        <meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link rel="shortcut icon" href="img/icons/icon-48x48.png" />

        <link rel="canonical" href="pages-sign-in.html" />

        <title>Sign In</title>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&amp;display=swap" rel="stylesheet">

        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link class="js-stylesheet" href="css/light.css" rel="stylesheet">
        <script src="js/settings.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-layout="default">
        <main class="d-flex w-100 h-100">
            <div class="container d-flex flex-column">
                <div class="row">

                </div>
                <div class="row vh-100">
                    <div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
                        <div class="d-table-cell align-middle">

                            <div class="text-center mt-4">
                                <h1 class="h2">Sign In Now</h1>
                                <p class="lead">
                                    Sign Up Your Account <a href="signUp.jsp">Click here</a>
                                </p>
                                <p class="lead">
                                    <a href="homepage.jsp">Back to Homepage</a>
                                </p>

                            </div>

                            <div class="card mt-3">
                                <div class="card-body">
                                    <div class="m-sm-4">
                                        <form>
                                            <div class="mb-3">
                                                <label class="form-label">Email</label>
                                                <input class="form-control form-control-lg" placeholder="Your Email" type="email" name="email" />
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Password</label>
                                                <input class="form-control form-control-lg" placeholder="********" type="password" name="password" />
                                                <small>
                                                    <a href="#" data-toggle="modal" data-target="#passwordResetModal">Forgot password?</a>
                                                </small>
                                            </div>

                                            <div class="text-center mt-3">
                                                <a href="homepage.jsp" class="btn btn-lg btn-primary">Sign in</a>
                                                <!-- <button type="submit" class="btn btn-lg btn-primary">Sign in</button> -->
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </main>

        <!-- Password Reset Modal -->
        <div class="modal fade" id="passwordResetModal" tabindex="-1" role="dialog" aria-labelledby="passwordResetModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="passwordResetModalLabel">Send OTP</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form id="resetPasswordForm">
                            <div class="mb-3">
                                <label class="form-label d-flex justify-content-between">Your Email <a href="#" onclick="sendOTP()">Send OTP</a></label>
                                <input class="form-control form-control-lg" type="email" name="email" id="resetEmail" placeholder="Enter your email" required />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">OTP</label>
                                <input class="form-control form-control-lg" type="text" name="otp" id="otp" placeholder="Enter OTP" required />
                            </div>
                            <div class="text-end mt-3">
                                <a href="#" class="btn btn-lg btn-primary" onclick="showUpdatePasswordModal()">Reset Password</a>
                                <!-- <button type="submit" class="btn btn-lg btn-primary">Reset password</button> -->
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Update Password Modal -->
        <div class="modal fade" id="updatePasswordModal" tabindex="-1" role="dialog" aria-labelledby="updatePasswordModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="updatePasswordModalLabel">Update Password</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form id="updatePasswordForm">
                            <div class="mb-3">
                                <label class="form-label">New Password</label>
                                <input class="form-control form-control-lg" type="password" id="newPassword" name="newPassword" placeholder="Enter new password" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Password Confirmation</label>
                                <input class="form-control form-control-lg" type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm new password" required>
                            </div>
                            <div class="text-end mt-3">
                                <button type="button" class="btn btn-lg btn-primary" onclick="updatePassword()">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <script src="js/app.js"></script>

        <script>
                                    $(document).ready(function () {
                                        // Function to handle modal hiding
                                        $('#updatePasswordModal').on('hidden.bs.modal', function (e) {
                                            // Perform any cleanup or reset actions here if needed
                                        });
                                    });

                                    function sendOTP() {
                                        const email = document.getElementById('resetEmail').value;
                                        if (email) {
                                            // Logic to send OTP to the provided email
                                            console.log(`OTP sent to ${email}`);
                                            // You can replace the above console.log with an AJAX call to your server to send the OTP
                                        } else {
                                            alert('Please enter your email.');
                                        }
                                    }

                                    function showUpdatePasswordModal() {
                                        // Close the current modal
                                        $('#passwordResetModal').modal('hide');
                                        // Show the update password modal
                                        $('#updatePasswordModal').modal('show');
                                    }

                                    // Ensure the update password modal can be closed with the close button
                                    $('#updatePasswordModal').on('click', '[data-dismiss="modal"]', function () {
                                        $('#updatePasswordModal').modal('hide');
                                    });

                                    function updatePassword() {
                                        var newPassword = document.getElementById('newPassword').value;
                                        var confirmPassword = document.getElementById('confirmPassword').value;

                                        if (newPassword !== confirmPassword) {
                                            alert("Passwords do not match. Please check again.");
                                            return;
                                        }

                                        // Perform update password logic here
                                        console.log("New password: " + newPassword);
                                    }
        </script>

    </body>

</html>
