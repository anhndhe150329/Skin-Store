<%-- 
    Document   : HomePage
    Created on : Jun 21, 2021, 10:13:10 PM
    Author     : Nhat Anh PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

        <style>
            body{
                background: url(PT/fullback.png);
                width: 100%;
            }
            .contains{

                background: url(PT/background1.png);
                border:1px solid black;     
                border-radius: 5px;
                width: 80%;
                margin: auto;
            }
            .opt { 
                margin-top: 3px;
                margin-left: 90%;
            }
            .content{
                display: flex;
            }
            .left{
                width: 70%;
            }
            .right{
                font-family: 'Quicksand',sans-serif;
                width: 29%;
                margin: 5px;
            }
            .carousel-indicators li {
                border:1px solid black;  
                width: 80px;
                height: 10px;
                background-color: white;
            }
            .carousel-indicators li.active {
                background: orange;
            }
            .moneycard table {
                background-color: gold;
                border-radius: 5px;
            }
            th{
                text-align: center;
            }
            td{
                text-align: center;
            }
            .add-money a{
                border-radius: 3px;
                text-decoration: none;
                display: block;
                text-align: center;
                line-height: 65px;
                background: #fc4;
                font-size: 34px;
                font-weight: 600;
                color: #354745;
            }
            .news {

                border-top: 1px solid #268;
                padding: 13px 7px;
                text-overflow: ellipsis;
                overflow: hidden;
                white-space: nowrap;
                text-align: center;
            }
            .news a{
                color: whitesmoke;
                font-size: 20px;
                text-decoration: none;
            }
            #shop{
                margin-left: 100px;
            }
        </style>
    </head>
    <body>
        <div class="contains">

            <jsp:include page="Header.jsp" flush="true"></jsp:include>
                <div class="content">
                    <div class="left">
                        <div id="myCarousel" class="carousel carousel-fade slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner" >
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="PT/knife.jpg" alt="Knife" style="height: 400px;">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="PT/awp.jpg" alt="AWP"style="height: 400px;">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="PT/rifle.jpg" alt="Rifle"style="height: 400px;">
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only"></span>
                            </a>
                            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only"></span>
                            </a>
                        </div>

                    </div>
                    <div class="right">
                        <div class="moneycard">
                            <table class="table table-striped table-borderless" >
                                <thead>
                                    <tr>
                                        <th style="width: 33%;">Viettel</th>
                                        <th style="width: 33%;">Vina</th>
                                        <th style="width: 33%;">Garena</th>

                                    </tr>

                                </thead>
                                <tbody>
                                    <tr>
                                        <td>24%</td>
                                        <td>30%</td>
                                        <td>25%</td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="add-money">
                                <a href="HomeControl?name=naptien">NẠP TIỀN NGAY</a>
                            </div>

                        </div>
                        <div class="hot-news">
                            <div class="news">
                                <a target="_blank" href="">Vòng quay may mắn</a>
                            </div>
                            <div class="news">
                                <a target="_blank" href="HomeControl?name=huongdan">Hướng dẫn nạp tiền</a>                          
                            </div>
                            <div class="news">
                                <a target="_blank" href="HomeControl?name=huongdan">Hướng dẫn mua hàng</a>                          
                            </div>
                            <div class="news">
                                <a target="_blank" href="HomeControl?name=huongdan">Hướng dẫn bán hàng</a>                         
                            </div>
                        </div>
                    </div>
                </div>
                
                <h1 style="color: white">New Arrival</h1>
                <div class= "row d-inline-flex" id="shop">
                    <!-- Gallery Item 1 -->
                    <div class ="col-12 col-sm-6 col-md-4 p-2">
                        <div class="d-flex flex-column text-center border height100">
                            <div>
                                <a href="#"><img style="width: 150px ;height: 150px" src="PT/full/Knife/weapon_knife_butterfly.794147e84a4e9426202d45145910cbb007797ce5.png"/></a>
                            </div>
                            <h2>Butterfly</h2>
                            
                        </div>
                    </div>
                    <!-- Gallery Item 2 -->
                    <div class ="col-12 col-sm-6 col-md-4 p-2">
                        <div class="d-flex flex-column text-center border height100">
                            <div>
                                <a href="#"><img style="width: 150px ;height: 150px" src="PT/full/Knife/weapon_knife_cord.073b5fa991a256ec2264b1c1c581401631eb51cb.png"/></a>
                            </div>
                            <h2>Paracord</h2>
                        </div>
                    </div>
                    <!-- Gallery Item 3 -->
                    <div class ="col-12 col-sm-6 col-md-4 p-2">
                        <div class="d-flex flex-column text-center border height100">
                            <div>
                                <a href="#"><img style="width: 150px;height: 150px" src="PT/full/Knife/weapon_knife_canis.ae03aed81864dc2ee1e1118bb973418f910098ac.png"/></a>
                            </div>
                            <h2>Survival</h2>
                        </div>
                    </div>
                    <!-- Gallery Item 4 -->
                    <div class ="col-12 col-sm-6 col-md-4 p-2">
                        <div class="d-flex flex-column text-center border height100">
                            <div>
                                <a href="#"><img style="width: 150px;height: 150px" src="PT/full/Rifle/weapon_ak47_cu_ak_neon_rider_light_large.9209192b514c4ec98146b4747dec8ce407a977c8.png"/></a>
                            </div>
                            <h2>AK47:Neon Revolution</h2>
                        </div>
                    </div>
                    <!-- Gallery Item 5 -->
                    <div class ="col-12 col-sm-6 col-md-4 p-2">
                        <div class="d-flex flex-column text-center border height100">
                            <div>
                                <a href="#"><img style="width: 150px;height: 150px" src="PT/full/Rifle/weapon_ak47_cu_ak_xray_light_large.a16215bb471dac8cc257c13dbc03e24514a7f018.png"/></a>
                            </div>
                            <h2>AK47:X-ray</h2>
                        </div>
                    </div>
                    <!-- Gallery Item 6 -->
                    <div class ="col-12 col-sm-6 col-md-4 p-2">
                        <div class="d-flex flex-column text-center border height100">
                            <div>
                                <a href="#"><img style="width: 150px;height: 150px" src="PT/full/Rifle/weapon_m4a1_cu_m4a1_howling_light_large.c64a9fc9fa04b5d10d4b1e200135e59285c8a77c.png"/></a>
                            </div>
                            <h2>M4:howl</h2>
                        </div>
                    </div>
                </div>
            
            <jsp:include page="footer.jsp" flush="true"></jsp:include>
        </div>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </body>
</html>
