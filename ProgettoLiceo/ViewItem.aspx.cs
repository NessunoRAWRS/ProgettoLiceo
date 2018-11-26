using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProgettoLiceo
{
    public partial class ViewItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Se non viene passato nessun ID del parametri reindirizzo a pagina iniziale
            if (string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                Response.Redirect("Catalog.aspx");
            }
            else
            {
                var productId = Request.QueryString["id"];
                List<int> id = new List<int>();
                List<string> name = new List<string>();
                List<decimal> price = new List<decimal>();
                List<int> stock = new List<int>();
                List<string> image = new List<string>();
                List<string> description = new List<string>();
                List<string> techDescription = new List<string>();

                // Leggo file dei prodotti
                using (var reader = new StreamReader(@"C:\Visual Studio\ProgettoLiceo\ProgettoLiceo\data.csv"))
                {
                    while (!reader.EndOfStream)
                    {
                        var line = reader.ReadLine();
                        var values = line.Split(';');

                        // Aggiungo ogni tipo di dato del prodotto all'interno di una lista
                        id.Add(int.Parse(values[0]));
                        name.Add(values[1]);
                        price.Add(decimal.Parse(values[2]));
                        stock.Add(int.Parse(values[3]));
                        image.Add(values[4]);
                        description.Add(values[5]); // Descrizione corta
                        techDescription.Add(values[6]); // Descrizione lunga
                    }
                }

                if (id.Contains(int.Parse(productId)))
                {
                    int index = 0;

                    // Cerco il prodotto corrispondente all'id passato come parametro
                    // Se viene trovato, salvo la riga corrisponde del prodotto
                    for (int i = 0; i < id.ToArray().Length; i++)
                    {
                        var productIdString = int.Parse(productId);
                        if (id[i] == productIdString)
                        {
                            index = i;
                        }
                    }

                    // Avendo l'indice posso recuperare tutti i dati del prodotto
                    TitleProductName.Text = name[index];
                    ProductName.InnerText = name[index];
                    ProductImage.ImageUrl = image[index];
                    ProductDescription.Text = description[index];
                    ProductTechDescription.Text = techDescription[index];
                }
            }
        }
    }
}