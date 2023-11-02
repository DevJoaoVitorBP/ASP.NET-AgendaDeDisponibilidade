using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agenda
{
    public partial class AgendaDeDisponibilidadeSemanal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Click += new EventHandler(Button1_Click);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label2.Text = "Dias selecionados: ";
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    Label2.Text += item.Text + ", ";
                }
            }
            // Remove a última vírgula e espaço
            if (Label2.Text.EndsWith(", "))
            {
                Label2.Text = Label2.Text.Substring(0, Label2.Text.Length - 2);
            }
            Label2.Text += ".";
        }
    }
}
 