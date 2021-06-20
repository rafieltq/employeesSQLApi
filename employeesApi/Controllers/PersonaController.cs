using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using employeesApi.Models;

namespace employeesApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PersonaController : ControllerBase
    {
        [HttpGet]
        public ActionResult Get()
        {
            using (Models.pruebaContext db=new Models.pruebaContext())
            {
                var lst = (from d in db.Personas
                           select d).ToList();

                return Ok(lst);
            }
        }

        [HttpPost]
        public ActionResult Post([FromBody] Models.Request.PersonaRequest model)
        {
            using (Models.pruebaContext db = new Models.pruebaContext())
            {
                Models.Persona oPersona = new Models.Persona();
                oPersona.Nombre = model.Nombre;
                oPersona.Apellido = model.Apellido;
                oPersona.Telefono = model.Telefono;
                oPersona.Direccion = model.Direccion;
                oPersona.Correo = model.Correo;
                oPersona.Comentario = model.Comentario;
                db.Personas.Add(oPersona);
                db.SaveChanges();

                return Ok();
            }
        }

        [HttpPut("{Id}")]
        public ActionResult Put([FromBody] Models.Request.PersonaEditRequest model)
        {
            using (Models.pruebaContext db = new Models.pruebaContext())
            {
                Models.Persona oPersona = db.Personas.Find(model.Id);
                oPersona.Nombre = model.Nombre;
                oPersona.Apellido = model.Apellido;
                oPersona.Telefono = model.Telefono;
                oPersona.Direccion = model.Direccion;
                oPersona.Correo = model.Correo;
                oPersona.Comentario = model.Comentario;
                db.Entry(oPersona).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                db.SaveChanges();

                return Ok();
            }
        }
        [HttpDelete("{Id}")]
        public ActionResult Delete([FromBody] Models.Request.PersonaEditRequest model)
        {
            using (Models.pruebaContext db = new Models.pruebaContext())
            {
                Models.Persona oPersona = db.Personas.Find(model.Id);
                db.Personas.Remove(oPersona);
                db.SaveChanges();

                return Ok();
            }
        }
    }
}