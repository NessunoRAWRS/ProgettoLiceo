<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="ProgettoLiceo.Contacts" %>

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
        <h2>Contatti</h2>
        <p>Telefono: +39 0332 999999</p>
        <p>Fax: +39 0332 999999</p>
        <p>Email: <a href="mailto:buy@macri.com" style="color: #0096ff;">buy@macri.com</a></p>
        <br />
        <p>Per acquistare è necessaria la compilazione della form qui sotto:</p>
        <form action="/" method="post">
            <label for="test">Nome</label>
            <input type="text" name="test" value="" />
        </form>
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
