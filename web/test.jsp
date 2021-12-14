<%-- 
    Document   : test
    Created on : Jun 24, 2021, 8:53:18 PM
    Author     : Nhat Anh PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <style>
            
            body{
                margin:auto;
                margin-bottom: 100px;
            }
            #itemslider h4{
                font-family: 'Josefin Sans', sans-serif;
                font-weight: 400;
                font-size: 12px;
                margin: 10px auto 3px;
            }
            #itemslider h5{
                font-family: 'Josefin Sans', sans-serif;
                font-weight: bold;
                font-size: 12px;
                margin: 3px auto 2px;
            }
            #itemslider h6{
                font-family: 'Josefin Sans', sans-serif;
                font-weight: 300;;
                font-size: 10px;
                margin: 2px auto 5px;
            }
            .badge {
                background: #b20c0c;
                position: absolute;
                height: 40px;
                width: 40px;
                border-radius: 50%;
                line-height: 31px;
                font-family: 'Josefin Sans', sans-serif;
                font-weight: 300;
                font-size: 14px;
                border: 2px solid #FFF;
                box-shadow: 0 0 0 1px #b20c0c;
                top: 5px;
                right: 25%;
            }
            #slider-control img{
                padding-top: 60%;
                margin: 0 auto;
            }
            @media screen and (max-width: 992px){
                #slider-control img {
                    padding-top: 70px;
                    margin: 0 auto;
                }
            }

            .carousel-showmanymoveone .carousel-control {
                width: 4%;
                background-image: none;
            }
            .carousel-showmanymoveone .carousel-control.left {
                margin-left: 5px;
            }
            .carousel-showmanymoveone .carousel-control.right {
                margin-right: 5px;
            }
            .carousel-showmanymoveone .cloneditem-1,
            .carousel-showmanymoveone .cloneditem-2,
            .carousel-showmanymoveone .cloneditem-3,
            .carousel-showmanymoveone .cloneditem-4,
            .carousel-showmanymoveone .cloneditem-5 {
                display: none;
            }
            @media all and (min-width: 768px) {
                .carousel-showmanymoveone .carousel-inner > .active.left,
                .carousel-showmanymoveone .carousel-inner > .prev {
                    left: -50%;
                }
                .carousel-showmanymoveone .carousel-inner > .active.right,
                .carousel-showmanymoveone .carousel-inner > .next {
                    left: 50%;
                }
                .carousel-showmanymoveone .carousel-inner > .left,
                .carousel-showmanymoveone .carousel-inner > .prev.right,
                .carousel-showmanymoveone .carousel-inner > .active {
                    left: 0;
                }
                .carousel-showmanymoveone .carousel-inner .cloneditem-1 {
                    display: block;
                }
            }
            @media all and (min-width: 768px) and (transform-3d), all and (min-width: 768px) and (-webkit-transform-3d) {
                .carousel-showmanymoveone .carousel-inner > .item.active.right,
                .carousel-showmanymoveone .carousel-inner > .item.next {
                    -webkit-transform: translate3d(50%, 0, 0);
                    transform: translate3d(50%, 0, 0);
                    left: 0;
                }
                .carousel-showmanymoveone .carousel-inner > .item.active.left,
                .carousel-showmanymoveone .carousel-inner > .item.prev {
                    -webkit-transform: translate3d(-50%, 0, 0);
                    transform: translate3d(-50%, 0, 0);
                    left: 0;
                }
                .carousel-showmanymoveone .carousel-inner > .item.left,
                .carousel-showmanymoveone .carousel-inner > .item.prev.right,
                .carousel-showmanymoveone .carousel-inner > .item.active {
                    -webkit-transform: translate3d(0, 0, 0);
                    transform: translate3d(0, 0, 0);
                    left: 0;
                }
            }
            @media all and (min-width: 992px) {
                .carousel-showmanymoveone .carousel-inner > .active.left,
                .carousel-showmanymoveone .carousel-inner > .prev {
                    left: -16.666%;
                }
                .carousel-showmanymoveone .carousel-inner > .active.right,
                .carousel-showmanymoveone .carousel-inner > .next {
                    left: 16.666%;
                }
                .carousel-showmanymoveone .carousel-inner > .left,
                .carousel-showmanymoveone .carousel-inner > .prev.right,
                .carousel-showmanymoveone .carousel-inner > .active {
                    left: 0;
                }
                .carousel-showmanymoveone .carousel-inner .cloneditem-2,
                .carousel-showmanymoveone .carousel-inner .cloneditem-3,
                .carousel-showmanymoveone .carousel-inner .cloneditem-4,
                .carousel-showmanymoveone .carousel-inner .cloneditem-5,
                .carousel-showmanymoveone .carousel-inner .cloneditem-6  {
                    display: block;
                }
            }
            @media all and (min-width: 992px) and (transform-3d), all and (min-width: 992px) and (-webkit-transform-3d) {
                .carousel-showmanymoveone .carousel-inner > .item.active.right,
                .carousel-showmanymoveone .carousel-inner > .item.next {
                    -webkit-transform: translate3d(16.666%, 0, 0);
                    transform: translate3d(16.666%, 0, 0);
                    left: 0;
                }
                .carousel-showmanymoveone .carousel-inner > .item.active.left,
                .carousel-showmanymoveone .carousel-inner > .item.prev {
                    -webkit-transform: translate3d(-16.666%, 0, 0);
                    transform: translate3d(-16.666%, 0, 0);
                    left: 0;
                }
                .carousel-showmanymoveone .carousel-inner > .item.left,
                .carousel-showmanymoveone .carousel-inner > .item.prev.right,
                .carousel-showmanymoveone .carousel-inner > .item.active {
                    -webkit-transform: translate3d(0, 0, 0);
                    transform: translate3d(0, 0, 0);
                    left: 0;
                }
            }
           
        </style>

    </head>
    <body>
        <!-- Item slider-->
        <div class="container-fluid">
            <h1 style="color: white">Dao</h1>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="carousel carousel-showmanymoveone slide" id="itemslider">
                        <div class="carousel-inner">

                            <div class="item active">
                                <div class="col-xs-12 col-sm-6 col-md-2">
                                    <a href="#"><img src="PT/full/Knife/weapon_bayonet.515de291204d6d896724d9fbb6856fcc6054a787.png" class="img-responsive center-block"></a>
                                    
                                </div>
                            </div>

                            <div class="item">
                                <div class="col-xs-12 col-sm-6 col-md-2">
                                    <a href="#"><img src="PT/full/Knife/weapon_knife_butterfly.794147e84a4e9426202d45145910cbb007797ce5.png" class="img-responsive center-block"></a>
                                    
                                </div>
                            </div>

                            <div class="item">
                                <div class="col-xs-12 col-sm-6 col-md-2">
                                    <a href="#"><img src="PT/full/Knife/weapon_knife_canis.ae03aed81864dc2ee1e1118bb973418f910098ac.png" class="img-responsive center-block"></a>
                                    
                                </div>
                            </div>

                            <div class="item">
                                <div class="col-xs-12 col-sm-6 col-md-2">
                                    <a href="#"><img src="PT/full/Knife/weapon_knife_cord.073b5fa991a256ec2264b1c1c581401631eb51cb.png" class="img-responsive center-block"></a>
                                    
                                </div>
                            </div>

                            <div class="item">
                                <div class="col-xs-12 col-sm-6 col-md-2">
                                    <a href="#"><img src="PT/full/Knife/weapon_knife_css.0b33071c28c02e6f19e363dc9a838566c6557389.png" class="img-responsive center-block"></a>
                                    
                                </div>
                            </div>

                            <div class="item">
                                <div class="col-xs-12 col-sm-6 col-md-2">
                                    <a href="#"><img src="PT/full/Knife/weapon_knife_flip.ebfc00735792b1e2947b30a321a07215dae8ceed.png" class="img-responsive center-block"></a>
                                    
                                </div>
                            </div>

                        </div>
                        <!-- left,right control -->
                        <div id="slider-control">
                            <a class="left carousel-control" href="#itemslider" data-slide="prev"><img src="PT/arrow_left.png" alt="Left" class="img-responsive"></a>
                            <a class="right carousel-control" href="#itemslider" data-slide="next"><img src="PT/arrow_right.png" alt="Right" class="img-responsive"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Item slider end-->
        <script type="text/javascript">
            $(document).ready(function () {

                $('#itemslider').carousel({interval: 3000});

                $('.carousel-showmanymoveone .item').each(function () {
                    var itemToClone = $(this);

                    for (var i = 1; i < 6; i++) {
                        itemToClone = itemToClone.next();

                        if (!itemToClone.length) {
                            itemToClone = $(this).siblings(':first');
                        }

                        itemToClone.children(':first-child').clone()
                                .addClass("cloneditem-" + (i))
                                .appendTo($(this));
                    }
                });
            });

        </script>
    </body>
</html>
