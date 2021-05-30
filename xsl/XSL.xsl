<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">

    <html>
      <header>
        <h1>Instituto Tecnológico Edix</h1>
        <link rel="stylesheet" type="text/css" href="css/style2.css" />
      </header>

      <body>
        <!-- Tabla 1  -->
        <div id="tabla1">
          <h2>Formación</h2>

          <table class="tabla1">
            <tr>
              <th>Nombre</th>
              <th>Grado</th>
              <th>Decreto Título</th>
            </tr>
            <xsl:for-each select="ite/ciclos/ciclo">

              <tr>
                <td>
                  <xsl:value-of select="nombre" />
                </td>
                <td>
                  <xsl:value-of select="grado" />
                </td>
                <td>
                  <xsl:value-of select="decretoTitulo/@año" />
                </td>
              </tr>

            </xsl:for-each>
          </table>
        </div>


        <!-- Tabla 2 -->
        <div id="tabla2">
          <h2>Profesores</h2>

          <table class="tabla2">
            <tr>
              <th>ID</th>
              <th>Nombre</th>
            </tr>
            <xsl:for-each select="ite/profesores/profesor">

              <tr>
                <td>
                  <xsl:value-of select="id" />
                </td>
                <td>
                  <xsl:value-of select="nombre" />
                </td>
              </tr>
            </xsl:for-each>
          </table>
        </div>

          <div id="empty"></div>
          <div class="dir">
            <fieldset>
              <legend> Direccion</legend>
            <ol>
              <li>Director</li>
              <ul>
                <li>Nombre: Chon</li>
                <li>Despacho: Numero 31, 3ª Planta, Edificio A</li>
              </ul>

              <li>Jefe de estudios</li>
              <ul>
                <li>Nombre: Dani</li>
                <li>Numero 27, 2ª Planta, Edificio B</li>
              </ul>
            </ol>
            </fieldset>

            
          </div>


          <!-- Formulario  -->
          <form>
            <fieldset>
              <legend>Contacta con nosotros</legend>
              <label for="Nombre"> Nombre</label>
              <input type="text" name="nombre"></input>
              <label for="apellidos">Apellidos</label>
              <input type="text" name="apellidos" id="apellidos"></input>
              <label for="telefono">Teléfono</label>
              <input type="tel" name="telefono" id="telefono"></input>
              <label for="email">Email</label>
              <input type="email" name="email" id="email"></input>
              <select name="grado" id="grado">
                <option>Selecciona tu grado</option>
                <option>Administración de Sistemas Informáticos en Red</option>
                <option>Desarrollo de Aplicaciones Web</option>
                <option>Desarrollo de Aplicaciones Multiplataforma</option>
              </select>
            </fieldset>
          </form>

          
          
        
       
       
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>