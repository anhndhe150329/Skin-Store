<%-- 
    Document   : footer
    Created on : Jun 22, 2021, 9:26:55 PM
    Author     : Nhat Anh PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <style>
            body{
                font-family: 'Quicksand',sans-serif;
            }
            #footer {

                color: #ddd;
                z-index: 2;
                position: relative;
            }
            .footer-top {
                background-color: #354745;
                padding: 15px 0;
                border-top: 1px solid #268;
            }
            .container {
                padding-right: 15px;
                padding-left: 15px;
                margin-right: auto;
                margin-left: auto;
            }
            .flex {
                display: flex;
                align-items: center;
            }
            .footer-information-item-img {
                flex: none;
                margin-right: 20px;
            }
            .footer-information-item-content h3 {
                font-size: initial;
                margin: 0;
                line-height: 24px;
                color: #fc4;
            }
            .footer-information-space {
                flex: 1 1 auto;
                height: 65px;
                text-align: center;
            }
        </style>
    </head>   
    <body>
        <footer id="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="footer-imformation">
                        <div class="flex">
                            <div class="footer-imformation-item">
                                <div class="flex">
                                    <div class="footer-imformation-item-img">
                                        <img alt="Cam kết 100%" src="PT/icon-commitment.png" style>
                                    </div>
                                    <div class="footer-imformation-item-content">
                                        <h3> Cam kết 100%</h3>
                                        <span>Hàng tuyển chọn</span>
                                    </div>
                                </div>
                            </div>
                            <span class="footer-information-space"></span>
                            <div class="footer-imformation-item">
                                <div class="flex">
                                    <div class="footer-imformation-item-img">
                                        <img alt="Uy tín" src="PT/icon-global.png">
                                    </div>
                                    <div class="footer-imformation-item-content">
                                        <h3> Giao dịch nhanh</h3>
                                        <span>Đảm bảo uy tín</span>
                                    </div>
                                </div>    
                            </div>
                            <span class="footer-information-space"></span>
                            <div class="footer-imformation-item">
                                <div class="flex">
                                    <div class="footer-imformation-item-img">
                                        <img alt="Tư vấn,hỗ trợ" src="PT/icon-phone.png" style>
                                    </div>
                                    <div class="footer-imformation-item-content">
                                        <h3> Liên hệ hỗ trợ</h3>
                                        <span>Hotline: 09********</span>
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>                
        </footer>
    </body>
</html>
