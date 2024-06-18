

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

        <link rel="canonical" href="tables-bootstrap.html" />

        <title>Online Shopping System</title>

        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&amp;display=swap" rel="stylesheet">
        <link class="js-stylesheet" href="css/light.css" rel="stylesheet">
        <script src="js/settings.js"></script>
        <style>body {
                opacity: 0;
            }
        </style>
        <!-- END SETTINGS -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-120946860-10"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());

            gtag('config', 'UA-120946860-10', {'anonymize_ip': true});
        </script>
    </head>
    <body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-layout="default">

        <!-- Create User Modal -->
        <div class="modal fade" id="createUserModal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Create New User</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal Body -->
                    <div class="modal-body">
                        <form id="createUserForm">
                            <div class="form-group">
                                <label for="name">Name*</label>
                                <input type="text" class="form-control" id="name" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email*</label>
                                <input type="email" class="form-control" id="email" required>
                            </div>
                            <div class="form-group">
                                <label for="role">Role:</label>
                                <select class="form-control" id="role" required>
                                    <option value="admin">Sale Staff</option>
                                    <option value="user" selected>User</option>
                                    <option value="guest">Ware House Staff</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="status">Status:</label>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="status" id="active" value="active" required checked>
                                    <label class="form-check-label" for="active">Active</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="status" id="inactive" value="inactive" required>
                                    <label class="form-check-label" for="inactive">Inactive</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="status" id="unverified" value="unverified" required>
                                    <label class="form-check-label" for="unverified">Unverified</label>
                                </div>
                            </div>
                        </form>
                    </div>

                    <!-- Modal Footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Submit</button>
                    </div>

                </div>
            </div>
        </div>

        <!-- Edit User Modal -->
        <!-- Edit User Modal -->
        <div class="modal fade" id="editUserModal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Edit User</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal Body -->
                    <div class="modal-body">
                        <form id="editUserForm">
                            <div class="form-group">
                                <label for="editAvatar">Avatar</label>
                                <input type="file" class="form-control-file" id="editAvatar" accept="image/*">
                            </div>
                            <div class="form-group">
                                <label for="editName">Name*</label>
                                <input type="text" class="form-control" id="editName" required>
                            </div>
                            <div class="form-group">
                                <label for="editEmail">Email*</label>
                                <input type="email" class="form-control" id="editEmail" required>
                            </div>
                            <div class="form-group">
                                <label for="editPhoneNumber">Phone Number</label>
                                <input type="text" class="form-control" id="editPhoneNumber">
                            </div>
                            <div class="form-group">
                                <label for="editRole">Role:</label>
                                <select class="form-control" id="editRole" required>
                                    <option value="admin">Sale Staff</option>
                                    <option value="user">User</option>
                                    <option value="guest">Ware House Staff</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="editStatus">Status:</label>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="editStatus" id="editActive" value="active" required>
                                    <label class="form-check-label" for="editActive">Active</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="editStatus" id="editInactive" value="inactive" required>
                                    <label class="form-check-label" for="editInactive">Inactive</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="editStatus" id="editUnverified" value="unverified" required>
                                    <label class="form-check-label" for="editUnverified">Unverified</label>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- Modal Footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Save Changes</button>
                    </div>
                </div>
            </div>
        </div>


        <div class="wrapper">
            <%@include file="nav-bar.jsp" %>
            <div class="main">
                <%@include file="header2.jsp" %>
                <main class="content">
                    <div class="container-fluid p-0">
                        <h1 class="h3 mb-3">Manage Account</h1>
                        <div class="row">
                            <div class="card">
                                <div class="card-header">
                                    <form class="d-inline-block">
                                        <div class="input-group input-group-navbar">
                                            <select class="form-control" id="filterRole">
                                                <option value="">All Role</option>
                                                <option value="admin">Sale staff</option>
                                                <option value="user">User</option>
                                                <option value="guest">Guest</option>
                                            </select>
                                        </div>
                                    </form>
                                    <form class="d-inline-block">
                                        <div class="input-group input-group-navbar">
                                            <select class="form-control" id="filterStatus">
                                                <option value="">All Status</option>
                                                <option value="active">Active</option>
                                                <option value="inactive">Inactive</option>
                                            </select>
                                        </div>
                                    </form>
                                    <form class="d-inline-block">
                                        <div class="input-group input-group-navbar">
                                            <input type="text" class="form-control" placeholder="Search…" aria-label="Search" id="searchInput">
                                            <button class="btn" type="button" id="searchButton">
                                                <i class="align-middle" data-feather="search"></i>
                                            </button>
                                        </div>
                                    </form>
                                    <button type="button" class="btn btn-square btn-success" data-toggle="modal" data-target="#createUserModal">
                                        New Account
                                    </button>
                                </div>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            <th>Status</th>
                                            <th>Role</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Vanessa Tucker</td>
                                            <td>vanser@gmail.com</td>
                                            <td>012345678</td>
                                            <th>Active</th>
                                            <th>WareHouse Staff</th>
                                            <td class="table-action">
                                                <a href="#" data-toggle="modal" data-target="#editUserModal" data-id="1" data-name="Vanessa Tucker" data-email="vanser@gmail.com" data-role="guest" data-status="active"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <div class="custom-control custom-switch">
                                                    <input type="checkbox" class="custom-control-input" id="customSwitch1" checked>
                                                    <label class="custom-control-label" for="customSwitch1"></label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>William Harris</td>
                                            <td>william@gmail.com</td>
                                            <td>012345678</td>
                                            <th>Inactive</th>
                                            <th>User</th>
                                            <td class="table-action">
                                                <a href="#" data-toggle="modal" data-target="#editUserModal" data-id="2" data-name="William Harris" data-email="william@gmail.com" data-role="user" data-status="inactive"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <div class="custom-control custom-switch">
                                                    <input type="checkbox" class="custom-control-input" id="customSwitch2">
                                                    <label class="custom-control-label" for="customSwitch2"></label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Sharon Lessman</td>
                                            <td>sharon@gmail.com</td>
                                            <td>012345678</td>
                                            <th>Active</th>
                                            <th>User</th>
                                            <td class="table-action">
                                                <a href="#" data-toggle="modal" data-target="#editUserModal" data-id="3" data-name="Sharon Lessman" data-email="sharon@gmail.com" data-role="user" data-status="active"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <div class="custom-control custom-switch">
                                                    <input type="checkbox" class="custom-control-input" id="customSwitch3" checked>
                                                    <label class="custom-control-label" for="customSwitch3"></label>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <%@include file="footer2.jsp" %>
            </div>
        </div>

        <script src="js/app.js"></script>
        <script>
            document.addEventListener("DOMContentLoaded", function (event) {
                setTimeout(function () {
                    if (localStorage.getItem('popState') !== 'shown') {
                        window.notyf.open({
                            type: "success",
                            message: "Get access to all 500+ components and 45+ pages with AdminKit PRO. <u><a class=\"text-white\" href=\"https://adminkit.io/pricing\" target=\"_blank\">More info</a></u> 🚀",
                            duration: 10000,
                            ripple: true,
                            dismissible: false,
                            position: {
                                x: "left",
                                y: "bottom"
                            }
                        });

                        localStorage.setItem('popState', 'shown');
                    }
                }, 15000);
            });

            // Populate Edit User Modal with user data
            $('#editUserModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget); // Button that triggered the modal
                var id = button.data('id');
                var name = button.data('name');
                var email = button.data('email');
                var role = button.data('role');
                var status = button.data('status');

                var modal = $(this);
                modal.find('#editName').val(name);
                modal.find('#editEmail').val(email);
                modal.find('#editRole').val(role);
                modal.find('input[name="editStatus"][value="' + status + '"]').prop('checked', true);
            });
        </script>
    </body>
</html>
