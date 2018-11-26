using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProgettoLiceo.admin
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            dt.Columns.Add("ProductID");
            dt.Columns.Add("ProductName");
            dt.Columns.Add("ProductPrice");
            dt.Columns.Add("ProductStock");
            dt.Columns.Add("ProductDescription");

            using (var reader = new StreamReader(@"C:\Visual Studio\ProgettoLiceo\ProgettoLiceo\data.csv"))
            {
                while (!reader.EndOfStream)
                {
                    var line = reader.ReadLine();
                    var values = line.Split(';');
                    
                    DataRow row = dt.NewRow();
                    row["ProductID"] = values[0];
                    row["ProductName"] = values[1];
                    row["ProductPrice"] = values[2] + " €";
                    row["ProductStock"] = values[3];
                    row["ProductDescription"] = values[5];

                    dt.Rows.Add(row);
                }
            }

            ProductsGrid.DataSource = dt;
            ProductsGrid.DataBind();
        }
    }
}