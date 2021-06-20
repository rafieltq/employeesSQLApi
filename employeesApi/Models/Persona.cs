using System;
using System.Collections.Generic;

#nullable disable

namespace employeesApi.Models
{
    public partial class Persona
    {
        public decimal Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Telefono { get; set; }
        public string Direccion { get; set; }
        public string Correo { get; set; }
        public string Comentario { get; set; }
    }
}
