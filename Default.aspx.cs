using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebForms_App.Modelos;


namespace WebForms_App
{
	public partial class _Default : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Enviar_Click(object sender, EventArgs e)
		{
			if (!Page.IsValid)
				return;
			string nombre = Nombre.Text;
			string email = Email.Text;
			string titulo = Titulo.Text;
			string categoria = Categoria.SelectedValue;
			string categoriaPersonalizada = "";
			if (Categoria.SelectedIndex == 3)
				categoriaPersonalizada = CategoriaPersonalizada.Text;
			string descripcion = Descripcion.Text;
			string prioridad = Prioridad.SelectedValue;

			string id = Guid.NewGuid().ToString().Substring(0, 6);

			Solicitud solicitud = new Solicitud(id, nombre, email, titulo, categoria, categoriaPersonalizada, descripcion, prioridad);
			string json = JsonConvert.SerializeObject(solicitud);

			Response.Cookies.Add(new HttpCookie("solicitud", Server.UrlEncode(JsonConvert.SerializeObject(solicitud))));
			Response.Redirect("/Confirmacion");
		}

		protected void Categoría_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (Categoria.SelectedIndex == 3)
			{
				CategoriaPersonalizada.Visible = true;
				CategoriaPersonalizadaLabel.Visible = true;
				CategoriaPersonalizadaValidator.Enabled = true;
			}
			else
			{
				CategoriaPersonalizada.Visible = false;
				CategoriaPersonalizadaLabel.Visible = false;
				CategoriaPersonalizadaValidator.Enabled = false;
			}
		}
	}
}