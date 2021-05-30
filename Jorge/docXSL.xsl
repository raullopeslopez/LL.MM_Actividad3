<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <head>
            <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <header>
        <h1>Instituto Tecnológico Edix</h1>
    </header> 
    <body>
    <!-- Tabla 1  -->
    <h2>Formación</h2>
     <div class ="bloque">
    <table class = "tabla">
    <thead>
     <tr>
      <th>Nombre</th>
      <th>Grado</th>
      <th>Decreto Título</th>
    </tr>
    </thead>
    <xsl:for-each select="ite/ciclos/ciclo">
    <tbody>
    <tr>
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="grado"/></td>
      <td><xsl:value-of select="decretoTitulo/@año"/></td>
    </tr>
    </tbody>
    </xsl:for-each>
    </table>
    </div>
    <!-- Tabla 2 -->
    <h2>Profesores</h2>
    <div class="bloque">
    <table class = "tabla">
    <thead>
     <tr>
      <th>ID</th>
      <th>Nombre</th>
     </tr>
     </thead>
    <xsl:for-each select="ite/profesores/profesor">
    <tbody>
    <tr>
      <td><xsl:value-of select="id"/></td>
      <td><xsl:value-of select="nombre"/></td>
    </tr>  
    </tbody>
    </xsl:for-each>
    </table>
    </div>
    <!-- Lista  -->
    <h2 id = "direc">Dirección</h2>
    <ol>
     <li>Director</li>
      <ol>
       <li>Nombre: Chon</li>
       <li>Despacho: Numero 31, 3ª Planta, Edificio A</li>
      </ol>
     <li>Jefe de estudios</li>
      <ol>
       <li>Nombre: Dani</li>
       <li>Numero 27, 2ª Planta, Edificio B</li>
      </ol>  
    </ol>
    <!-- Formulario  -->
    <form action="get">
    <fieldset>
        <legend>Rellena el formulario para saber más</legend>
        <p>
        <label for="nombre">Nombre</label>
        <input type="text" name="nombre" id="nombre" />
        <label for="apellidos">Apellidos</label>
        <input type="text" name="apellidos" id="apellidos" />
        </p>
        
        <p>
        <label for="nombre">Correo electrónico</label>
        <input type="text" name="correo" id="correo" />
        </p>
        
         <p>
                <select name="grado" id="grado">
                  <option>Selecciona tu grado</option>
                  <option>Administración de Sistemas Informáticos en Red</option>
                  <option>Desarrollo de Aplicaciones Web</option>
                  <option>Desarrollo de Aplicaciones Multiplataforma</option>
                </select>
              </p>
        </fieldset>
      </form>
    </body>    
    </html>
</xsl:template>
</xsl:stylesheet>