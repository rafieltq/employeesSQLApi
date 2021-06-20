# .NET CORE API with SQL Server
## Tecnologias utilizadas
- .NET 5.0
- SSMS (SQL SERVER MANAGEMENT STUDIO) 2019
### Clonar Repositorio
```bash
$ git clone https://github.com/rafieltq/employeesSQLApi.git
```
## Estableciendo el entorno de desarrollo
### Ejecutar Script de la Base de datos situado en la raiz del proyecto
- Este generará la base de datos y la tabla para que el api funcione.
### Abrir el proyecto en Visual studio
- Entrar a la carpeta Models y buscar el archivo **pruebaContext.cs**.
```bash
public virtual DbSet<Persona> Personas { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Server=DESKTOP-HKAVBPR\\SQLEXPRESS;Database=prueba;user=usuario;password=contraseña;");
            }
        }
```
- En este bloque de código colocar las credenciales de su Servidor de SQL Management Studio
## Importante Asegurarse de que el proyecto corra en el puerto 5001 para poder ejecutar junto al frontend
- link del frontend en netlify: https://crud-empleados.netlify.app/
- Si tiene algún bloqueador de anuncios debe desactivarlo, esto puede causar conflictos.
## Para cerciorar que el puerto sea el correcto verificar en **Properties>launchSettings.json**.
```bash
  "profiles": {
    "IIS Express": {
      "commandName": "IISExpress",
      "launchBrowser": true,
      "launchUrl": "api/Persona",
      "environmentVariables": {
        "ASPNETCORE_ENVIRONMENT": "Development"
      }
    },
    "employeesApi": {
      "commandName": "Project",
      "dotnetRunMessages": "true",
      "launchBrowser": true,
      "launchUrl": "api/Persona",
      "applicationUrl": "https://localhost:5001;http://localhost:5000",
      "environmentVariables": {
        "ASPNETCORE_ENVIRONMENT": "Development"
      }
    }
```
- Sea cual sea el perfil de ejecución que utilice, verificar ahi este el puerto correspondiente
