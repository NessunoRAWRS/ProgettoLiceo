<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProgettoLiceo.admin.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>MaCri - Administration</title>
    <link rel="stylesheet" href="../css/style.css" />
</head>
<body>
    <header>
        <h1 class="left"><a href="../Default.aspx">MaCri Progetto Liceo</a></h1>
        <div class="right">
            <a href="../Default.aspx">Home</a>
        </div>
    </header>

    <div class="wrapper">
        <h2>Administration</h2>
        <form runat="server">
            <asp:GridView ID="ProductsGrid" class="admin-products" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ID" />
                    <asp:BoundField DataField="ProductName" HeaderText="Nome" />
                    <asp:BoundField DataField="ProductPrice" HeaderText="Prezzo" />
                    <asp:BoundField DataField="ProductStock" HeaderText="Quantità" />
                    <asp:TemplateField HeaderText="Descrizione">
                        <ItemTemplate>
                            <asp:TextBox ID="ProductDescription" runat="server" Text='<%# Eval("ProductDescription") %>'  placeholder="Descrizione" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <asp:Button runat="server" Text="Salva" CssClass="button" /> <a href="../Default.aspx" class="button">Indietro</a>
        </form>
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
