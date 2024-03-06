﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Portfolio.index" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tazrian</title>

    <!-- Box icons -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <link rel ="stylesheet" href="style.css">
</head>
<body>
    <!--header design-->
    <header class="header">
       <a href="#" class="logo">H Tazrian</a>

       <i class='bx bx-menu' id="menu-icon"></i>
       
       <nav class="navbar">
            <a href="#home" style="--i:6;" class="btn1 active">Home</a>
            <a href="#about" style="--i:5;" class="btn1">About</a>
            <a href="#services" style="--i:4;" class="btn1">Services</a>
            <a href="#portfolio" style="--i:3;" class="btn1">Portfolio</a>
            <a href="#skills" style="--i:2;" class="btn1">Skills</a>
            <a href="#contact" style="--i:1;" class="btn1">Contact</a>
       </nav>
    </header>

    <!-- Home section description -->
    <section class="home" id="home">
        <div class="home-content">
            <h3>Hello, I am</h3>
            <h1>Hafsa Tazrian</h1>
            <h3><span class="multiple-text"></span></h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi dicta perferendis unde, beatae aliquam soluta dolor ex blanditiis ea odio, nam molestiae consectetur optio dolore numquam mollitia nulla quod aliquid.</p>
            <div class="social-media">
                <a href="#" style="--i:7;" ><i class='bx bxl-facebook' ></i></a>
                <a href="https://www.linkedin.com/in/hafsa-tazrian-8579292a7" style="--i:8;"><i class='bx bxl-linkedin-square' ></i></a>
                <a href="https://wa.me/qr/3UTWTYHSCRTQK1" style="--i:9;"><i class='bx bxl-whatsapp' ></i></a>
                <a href="https://www.github.com/HafsaTazrian" style="--i:10;"><i class='bx bxl-github' ></i></a>
                <a href="#" style="--i:11;"><i class='bx bxl-instagram' ></i></a>
            </div>
            <a href="#" class="btn">Download CV</a>
        </div>

        <div class="home-img">
            <img src="images/ProfilePic copy.jpg" alt="">
        </div>
    </section>

    <!-- About section design -->
    <section class="about" id="about">
        <div class="about-img">
            <img src="/images/about.jpg" alt="">
        </div>

        <div class="about-content">
            <h2 class="heading">About <span>Me</span></h2>
            <h3>Fullstack Developer</h3>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Esse odit distinctio commodi est, ut accusantium tempore natus? Magnam tenetur ipsa architecto numquam qui unde, ratione quidem doloribus! Rerum, cupiditate! Excepturi.</p>
            <a href="#" class="btn">Read More</a>
        </div>
    </section>

    <!-- Services section -->
    <section class="services" id="services">
        <h2 class="heading">My <span>Services</span></h2>
        <div class="services-container">
            <div class="services-box">
                <img src="images/desktop.png" alt="">
                <h3>Desktop Application Developement</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi maxime laborum officiis, nesciunt consectetur perferendis. Ea qui aperiam asperiores adipisci.</p>
                <a href="#" class="btn">Read More</a>
            </div>

            <div class="services-box">
                <!-- <a href="https://www.flaticon.com/free-icons/team" title="team icons">Team icons created by SBTS2018 - Flaticon</a> -->
                <img src="images/Webdevelopers.png" alt="">
                <h3>Web Developement</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi maxime laborum officiis, nesciunt consectetur perferendis. Ea qui aperiam asperiores adipisci.</p>
                <a href="#" class="btn">Read More</a>
            </div>

            <div class="services-box">
                <img src="images/android.png" alt="">
                <h3>Android Application Developement</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi maxime laborum officiis, nesciunt consectetur perferendis. Ea qui aperiam asperiores adipisci.</p>
                <a href="#" class="btn">Read More</a>
            </div>
            
            <div class="services-box">
                <img src="images/painting.png" alt="">
                <h3>Painting</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi maxime laborum officiis, nesciunt consectetur perferendis. Ea qui aperiam asperiores adipisci.</p>
                <a href="#" class="btn">Read More</a>
            </div>

            <div class="services-box">
                <img src="images/crocheting.jpeg" alt="">
                <h3>Crocheting</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi maxime laborum officiis, nesciunt consectetur perferendis. Ea qui aperiam asperiores adipisci.</p>
                <a href="#" class="btn">Read More</a>
            </div>
        </div>
    </section>

    <!-- Portfolio Section Design -->
    <section class="portfolio" id="portfolio">
    <h2 class="heading">Latest <span>Projects</span></h2>

    <div class="portfolio-container">
        <asp:Repeater ID="rptLatestProjects" runat="server">
            <ItemTemplate>
                <div class="portfolio-box">
                    <asp:Image runat="server" CssClass="img" ImageUrl='<%# ResolveUrl(Eval("ImagePath").ToString()) %>' AlternateText='<%# Eval("AltText") %>' />
                   
                    <div class="portfolio-layer">
                        <h4><%# Eval("Title") %></h4>
                        <p><%# Eval("Description") %></p>
                        <a href='<%# Eval("Link") %>'><i class='bx bx-link-external'></i></a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    </section>


    <section class="portfolio" id="portfolio">
    <h2 class="heading">Ongoing <span>Projects</span></h2>

    <div class="portfolio-container">
        <asp:Repeater ID="rptOngoingProjects" runat="server">
            <ItemTemplate>
                <div class="portfolio-box">
                    <img src='<%# Eval("ImagePath") %>' alt='<%# Eval("AltText") %>' />
                    <asp:Image runat="server" CssClass="img" ImageUrl='<%# ResolveUrl(Eval("ImagePath").ToString()) %>' AlternateText='<%# Eval("AltText") %>' />
                   
                    <div class="portfolio-layer">
                        <h4><%# Eval("Title") %></h4>
                        <p><%# Eval("Description") %></p>
                        <a href='<%# Eval("Link") %>'><i class='bx bx-link-external'></i></a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    </section>

    <!-- Contact section design -->
    <section class="contact" id="contact">

        <form id="form1" CssClass="form" runat="server">
        
            <h2 class="heading">Send a <span>Message</span></h2>

            <div class="input-box">
                <asp:TextBox ID="txtFullName" runat="server" placeholder="Full Name" CssClass="textarea"></asp:TextBox>
                <asp:TextBox ID="txtEmailAddress" runat="server" placeholder="Email Address" CssClass="textarea"></asp:TextBox>
            </div>
            
            <div class="input-box">
                <asp:TextBox ID="txtMobileNumber" runat="server" placeholder="Mobile Number" CssClass="textarea"></asp:TextBox>
                <asp:TextBox ID="txtEmailSubject" runat="server" placeholder="Email Subject" CssClass="textarea"></asp:TextBox>
            </div>
            
           
            
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="10" placeholder="Your Message" CssClass="textarea"></asp:TextBox>
            
            <asp:Button ID="btnSendMessage" runat="server" Text="Send Message" OnClick="btnSendMessage_Click" CssClass="btn" />
       
        </form>


        <div class="contact-info">
            <h1>Contact <span>Info:</span></h1>
            <div class="contactInfo-container">
                <div class="box">
                    <h2>Name:</h2>
                    <h3>Syeda Hafsa Tazrian</h3>
                </div>
                <div class="box">
                    <h2>Email: </h2>
                    <a href="">hafsa.tazrian@gmail.com</a><br>
                    <a href="">tazrian2007072@stud.kuet.ac.bd</a>      
                </div>
            </div>
            
        </div>
    </section>

    <!-- footer design -->
    <footer class="footer">
        <div class="footer-text">
            <p>Copyright &copy; 2024 by H Tazrian | All Rights Reserved.</p>
        </div>
        <div class="footer-iconTop">
            <a href="#home"><i class='bx bx-up-arrow-alt' ></i>Go To Home</a>
        </div>
    </footer>

    <!--Scroll reveal-->
    <script src="https://unpkg.com/scrollreveal"></script>

    <script src="https://unpkg.com/typed.js@2.1.0/dist/typed.umd.js"></script>
    <script src="script.js"></script>

</body>
</html>