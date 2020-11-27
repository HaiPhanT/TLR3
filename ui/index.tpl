<!DOCTYPE html>
<html lang="en">

<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>Cryptocurrencies</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="../images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!-- body -->

<body class="main-layout">
    <!-- loader  -->
    <div class="loader_bg">
        <div class="loader"><img src="images/loading.gif" alt="#" /></div>
    </div>
    <!-- end loader -->
    <header>
        <div class="head-top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                        <div class="email"> <a href="#">Email : demo@gmail.com</a> </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                        <div class="icon"> <i> <a href="#"><img src="icon/facebook.png"></a></i> <i> <a href="#"><img src="icon/Twitter.png"></a></i> <i> <a href="#"><img src="icon/linkedin.png"></a></i> <i> <a href="#"><img src="icon/google+.png"></a></i> </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                        <div class="contact"> <a href="#">Contact : +71 78908540</a> </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                    <div class="full">
                        <div class="center-desk">
                            <div class="logo"> <a href="index.php"><img src="images/logo.jpg" alt="#"></a> </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                    <div class="menu-area">
                        <div class="limit-box">
                            <nav class="main-menu">
                                <ul class="menu-area-main">
                                    <li class="active"> <a href="index.php">Home</a> </li>
                                    <li> <a href="index.php?page=aboutus">About</a> </li>
                                    <li> <a href="index.php?page=currency"> Currency</a> </li>
                                    <li> <a href="index.php?page=contact">Contact us</a> </li>
                                    <li> <a href="#"><img src="images/search_icon.png" alt="#" /></a> </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <section>
        <table class="table text-center">
            <thead>
                <tr>
                    <th scope="col">#Id</th>
                    <th scope="col">Ten</th>
                    <th scope="col">Gia</th>
                    <th scope="col">Thay doi 24h</th>
                </tr>
            </thead>
            <tbody>
                {{CURRENCY_DATA}}
            </tbody>
        </table>
    </section>
    <form method="POST" action="">
        <div class="form-group">
            <label for="exampleFormControlSelect1">Select Currency</label>
            <select class="form-control" id="exampleFormControlSelect1">
                <option>BITCOIN</option>
            </select>
        </div>
        <input type="number" name="gia_moi">
        <button type="Submit">Submit</button>
    </form>
    <!-- footer -->
    <footer>
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                        <div class="Contact">
                            <h3>Contact Us</h3>
                            <ul class="contant_icon">
                                <li> <a href="#"><img src="icon/location.png"></a></li>
                                <li> <a href="#"><img src="icon/tellephone.png"></a></li>
                                <li> <a href="#"><img src="icon/email.png"></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                        <div class="Social">
                            <h3>Social links</h3>
                            <ul class="socil_link">
                                <li><a href="#"><img src="icon/fb.png"></a></li>
                                <li><a href="#"><img src="icon/Tw.png"></a></li>
                                <li> <a href="#"><img src="icon/lin.png"></a></li>
                                <li> <a href="#"><img src="icon/insta.png"></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-5 col-md-5 col-sm-12">
                        <div class="newsletter">
                            <h3>newsletter</h3>
                            <input class="new" placeholder="Enter your email" type="Enter your email">
                            <button class="subscribe">subscribe</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <p>Copyright 2019 All Right Reserved By <a href="http://html.design">Free html Templates</a></p>
            </div>
        </div>
    </footer>
    <!-- end footer -->
    <!-- Javascript files-->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script src="js/plugin.js"></script>
    <!-- sidebar -->
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>