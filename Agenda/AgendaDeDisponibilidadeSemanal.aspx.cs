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
            btnEnviar.Click += new EventHandler(btnEnviar_Click);
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            lblMensagem.Text = "Dias selecionados: ";
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    lblMensagem.Text += item.Text + ", ";
                }
            }
            // Remove a última vírgula e espaço
            if (lblMensagem.Text.EndsWith(", "))
            {
                lblMensagem.Text = lblMensagem.Text.Substring(0, lblMensagem.Text.Length - 2);
            }
            lblMensagem.Text += ".";
        }
    }
}
 