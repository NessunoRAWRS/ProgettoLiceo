<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewItem.aspx.cs" Inherits="ProgettoLiceo.ViewItem" %>

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
        <h1 class="left"><a href="Default.aspx">MaCri Progetto Liceo -
            <asp:Literal runat="server" ID="TitleProductName"></asp:Literal></a></h1>
        <div class="right">
            <a href="Catalog.aspx">Catalogo Prodotti</a>
            <a href="About.aspx">Chi siamo</a>
            <a href="Contacts.aspx">Contattaci</a>
        </div>
    </header>

    <div class="wrapper">
        <h1 id="ProductName" runat="server">Prodotto</h1>
        <asp:Image ID="ProductImage" CssClass="product-image" runat="server" />
        <p class="product-description">
            <asp:Literal ID="ProductDescription" runat="server">
                Descrizione prodotto
            </asp:Literal>
        </p>
        <p class="product-tech-description">
            <asp:Literal ID="ProductTechDescription" runat="server">
                Specifiche tecniche
            </asp:Literal>
        </p>

        <a href="Catalog.aspx" class="button">Indietro</a>
    </div>

    <footer>
        <div>
            <p>Ma.Cri &copy; 2018</p>
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
