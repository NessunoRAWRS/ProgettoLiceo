using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProgettoLiceo
{
    public partial class Catalog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool firstItem = true;

            // Leggo i dati dei prodotti dal file
            using (StreamReader sr = new StreamReader(@"C:\Visual Studio\ProgettoLiceo\ProgettoLiceo\data.csv"))
            {
                while (!sr.EndOfStream)
                {
                    var productData = sr.ReadLine();
                    var productValues = productData.Split(';');

                    // Generazione procedurale dell'oggetto prodotto
                    var html = 
                        @"<div class=""item"">
                            <h3 class=""item-title"">
                                <a href='ViewItem.aspx?id=" + productValues[0] + @"'>" + productValues[1] + @"</a>
                            </h3>
                            <img src='" + productValues[4] + @"' />
                            <p class=""item-description"">
                                 " + productValues[5] + @"
                            </p>
                            <br />
                            <span class=""product-price"">" + productValues[2] + @"€</span>
                            <a href='ViewItem.aspx?id=" + productValues[0] + @"'>Dettagli</a>
                           </div>";

                    // Controllo che sia il primo prodotto, in questo caso creo per la prima volta l'innerHtml di catalog
                    if (firstItem)
                    {
                        catalog.InnerHtml = html;
                        firstItem = false;
                    }
                    else
                    {
                        catalog.InnerHtml += html;
                    }
                }
            }
        }
    }
}