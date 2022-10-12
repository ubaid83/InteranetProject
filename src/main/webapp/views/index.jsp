<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Panel</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" />
  <link rel="stylesheet" href="css/main.css">
</head>

<body>
  <div class="main">
    <div class="navbar-side">
      <h6>
        <span class="icon"><i class="fas fa-code"></i></span>
        <span class="link-text">Admin </span>
      </h6>
      <ul>
        <li><a href="#" class="link-active" title="Dashboard">
            <span class="icon"><i class="fas fa-chart-bar"></i></span>
            <span class="link-text">Dashboard</span>
          </a></li>
        <li>
          <a href="#" class="myBtn" data-toggle="collapse" data-target="#my-sub" title="Post" aria-expanded="false">
            <span class="icon"><i class="fas fa-list"></i></span>
            <span class="link-text">Departments</span>
            <span class="ml-auto myCaret"></span>
          </a>
          <div id="my-sub" class="collapse bg-secondary">
            <a href="#" title="All Post">
              <span class="icon"><i class="fas fa-copy"></i></span>
              <span class="link-text"> Create Departments</span>
            </a>
            <a href="#" title="Add Post">
              <span class="icon"><i class="fas fa-pen-fancy"></i></span>
              <span class="link-text">*</span>
            </a>
          </div>
        </li>
        <li><a href="#" title="Category">
            <span class="icon"><i class="fas fa-list-alt"></i></span>
            <span class="link-text">Announcement</span>
          </a></li>
        <li><a href="#" title="Comment">
            <span class="icon"><i class="fas fa-comment"></i></span>
            <span class="link-text">Create Announcement</span>
          </a></li>
        <li><a href="#" title="Tags">
            <span class="icon"><i class="fas fa-tags"></i></span>
            <span class="link-text">Email Notification</span>
          </a></li>


        <li><a href="#" title="Sign Out">
            <span class="icon"><i class="fas fa-sign-out-alt"></i></span>
            <span class="link-text">Sign Out</span>
          </a></li>
      </ul>
    </div>
    <div class="content">
      <nav class="navbar navbar-dark bg-dark py-1">

        <a href="#" id="navBtn">
          <span id="changeIcon" class="fa fa-bars text-light"></span>
        </a>

        <div class="d-flex">
          <a class="nav-link text-light px-2" href="#"><i class="fas fa-search"></i></a>
          <a class="nav-link text-light px-2" href="#"><i class="fas fa-bell"></i></a>
          <a class="nav-link text-light px-2" href="#"><i class="fas fa-sign-out-alt"></i></a>
        </div>

      </nav>
      <div class="container-fluid mt-5">


        <div class="row">
          <div class="col-md-4">
           <a href="/createDepertement">
            <div class="card text-center">
              <img class="profile-thumbnail small-thumbnail rounded mx-auto mt-4" src="image/department.png"
                alt="Christopher Portrait">
              <div class="card-body">
                <h3 class="h5 card-title">Create Depertement</h3>
              </div>
            </div>
           </a>
          </div>

          <div class="col-md-4">
            <a href="/createAnnouncement">
            <div class="card text-center">
              <img class="profile-thumbnail small-thumbnail rounded mx-auto mt-4" src="image/announcement.png"
                alt="Christopher Portrait">
              <div class="card-body">
                <h3 class="h5 card-title">Create Announcement</h3>
              </div>
            </div>
            </a>
          </div>




          <div class="col-md-4">
            <a href="/createDepertementform">
            <div class="card text-center">
              <img class="profile-thumbnail small-thumbnail rounded mx-auto mt-4" src="image/user.png"
                alt="Christopher Portrait">
              <div class="card-body">
                <h3 class="h5 card-title">Create Admin</h3>
              </div>
            </div>
            </a>
          </div>
          
          
           <div class="col-md-4">
            <a href="/createOrganizationform">
            <div class="card text-center">
              <img class="profile-thumbnail small-thumbnail rounded mx-auto mt-4" src="image/organization.png"
                alt="Christopher Portrait">
              <div class="card-body">
                <h3 class="h5 card-title">Create Organization</h3>
              </div>
            </div>
            </a>
          </div>
          

          <div class="col-md-4">
            <a href="/changePassword">
            <div class="card text-center">
              <img class="profile-thumbnail small-thumbnail rounded mx-auto mt-4" src="image/password.png"
                alt="Christopher Portrait">
              <div class="card-body">
                <h3 class="h5 card-title">Change Password</h3>
              </div>
            </div>
          </div>







      


      </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="js/script.js"></script>
</body>

</html>