using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebForms_App.Modelos;
using Newtonsoft.Json;

namespace WebForms_App
{
	public partial class Confirmacion : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			string cookie = Server.UrlDecode(Request.Cookies.Get("solicitud")?.Value);
			if (String.IsNullOrEmpty(cookie))
				return;
			Solicitud solicitud = JsonConvert.DeserializeObject<Solicitud>(cookie);

			IdConfirmacion.Text = $"Id: {solicitud.Id}";
			Nombre.Text = solicitud.Nombre;
			Email.Text = solicitud.Email;
			TituloProblema.Text = solicitud.Titulo;
			Categoria.Text = solicitud.Categoria.Equals("Otros") ? $"Otro: {solicitud.CategoriaPersonalizada}": solicitud.Categoria;
			Descripcion.Text = solicitud.Descripcion;
			Prioridad.Text = solicitud.Prioridad;
		}
	}
}