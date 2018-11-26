<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" Inherits="ProgettoLiceo.Catalog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>MaCri</title>
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <header>
        <h1 class="left"><a href="Default.aspx">MaCri Progetto Liceo</a></h1>
        <div class="right">
            <a href="Catalog.aspx">Catalogo Prodotti</a>
            <a href="About.aspx">Chi siamo</a>
            <a href="Contacts.aspx">Contattaci</a>
        </div>
    </header>

    <div class="wrapper">
        <h2>Dashboard</h2>
        <nav class="catalog" id="catalog" runat="server">
            <%--<div class="item">
                <h3 class="item-title">
                    <a href="ViewItem.aspx?id=1">Xiaomi</a>
                    <span class="cheap">Offerta</span>
                </h3>
                <img src="img/xiaomi.jpg" alt="" />
                <p class="item-description">
                    Questo prodotto contiene Lorem ipsum, dolor sit amet consectetur adipisicing elit. Saepe magnam
                    dolore quae. Dignissimos in minima temporibus nam repudiandae repellendus ut molestias voluptatum
                    impedit quaerat, nulla doloribus tempora atque dicta ipsam?
                </p>
                <br />
                <span class="product-price">100€</span>

                <a href="ViewItem.aspx?id=1">Dettagli</a>
            </div>--%>
        </nav>
    </div>

    <footer>
        <div>
            <p>MaCri &copy; 2018</p>
            <ul>
                <li><a href="#" class="blue">Facebook</a></li>
                -
                <li><a href="#" class="light-blue">Twitter</a></li>
                -
                <li><a href="#" class="pink">Instagram</a></li>
                -
                <li><a href="#" class="red">Youtube</a></li>
            </ul>
        </div>
    </footer>
</body>
</html>
