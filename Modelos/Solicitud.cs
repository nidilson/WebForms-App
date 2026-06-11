using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebForms_App.Modelos
{
	public class Solicitud
	{
		public string Id { get; set; }
		public string Nombre { get; set; }
		public string Email { get; set; }
		public string Titulo { get; set; }
		public string Categoria { get; set; }
		public string CategoriaPersonalizada { get; set; }
		public string Descripcion { get; set; }
		public string Prioridad { get; set; }

		public Solicitud(string id, string nombre, string email, string titulo, string categoria, string categoriaPersonalizada, string descripcion, string prioridad)
		{
			Id = id;
			Nombre = nombre;
			Email = email;
			Titulo = titulo;
			Categoria = categoria;
			CategoriaPersonalizada = categoriaPersonalizada;
			Descripcion = descripcion;
			Prioridad = prioridad;
		}
	}
}