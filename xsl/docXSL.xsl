<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="iso-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
        <title>Instituto Tecnológico Edix</title>
      </head>
      <body>
      <div class="contenedorGeneral">
        <div class="header">
        <header>
          <h1>
            <xsl:variable name="assets">/assets</xsl:variable>
            <a href="https://institutotecnologico.edix.com" target="_blank">
              <img src="{$assets}/logo_edix.svg" />
            </a>
          </h1>
        </header>
        </div>
        <div class="menu">
          <nav class="barraNav">
              <a href="#formacion">Formación</a>
              <a href="#profesores">Quienes somos</a>
              <a href="#direccion">Personal de dirección</a>
              <a href="#formularioContacto">Contacto</a>
          </nav>
        </div>
        <!-- Tabla 1  -->
        <div class="box-tabla1">
          <div id="titulo-tabla1">
            <h2>Formación</h2>
          </div>
          <table id="formacion">
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
              <td>
                <xsl:value-of select="nombre"/>
              </td>
              <td>
                <xsl:value-of select="grado" />
              </td>
              <td>
                <xsl:value-of select="decretoTitulo/@año" />
              </td>
            </tr>
          </tbody>
          </xsl:for-each>
          </table>
        </div>
      <!-- Tabla 2 -->
      <div class="box-tabla2">
        <div id="titulo-tabla2">
          <h2>Profesores</h2>
        </div>
        <table id="profesores">
          <thead>
          <tr>
            <th>ID</th>
            <th>Nombre</th>
          </tr>
        </thead>
          <xsl:for-each select="ite/profesores/profesor">
          <tbody>
          <tr>
            <td>
              <xsl:value-of select="id" />
            </td>
            <td>
              <xsl:value-of select="nombre" />
            </td>
          </tr>
          </tbody>
          </xsl:for-each>
        </table>
      </div>
      <!-- Lista  -->
      <div class="lista">
        <div id="titulo-lista">
          <h2>Dirección del centro</h2>
        </div>
          <ol id="lista-ordenada">
            <li class="elem-ord">Director</li>
              <ul>
                <li>Nombre: Chon</li>
                <li>Despacho: Numero 31, 3ª Planta, Edificio A</li>
              </ul>
            <li class="elem-ord">Jefe de estudios</li>
              <ul>
                <li>Nombre: Dani</li>
                <li>Numero 27, 2ª Planta, Edificio B</li>
              </ul>
          </ol>
        </div>
        <!-- Formulario  -->
        <div class="formulario">
          <div id="titulo-formulario">
            <h2>Información sin compromiso</h2>
          </div>
          <form id="formularioContacto">
            <fieldset>
              <p>
                <label for="nombre">Nombre</label>
                <input type="text" name="nombre" id="nombre"></input>
              </p>
              <p>
                <label for="apellidos">Apellidos</label>
                <input type="text" name="apellidos" id="apellidos"></input>
              </p>
              <p>
                <label for="telefono">Teléfono</label>
                <input type="tel" name="telefono" id="telefono"></input>
              </p>
              <p>
                <label for="email">Email</label>
                <input type="email" name="email" id="email"></input>
              </p>
              <p>
                <select name="grado" id="grado">
                  <option>Selecciona tu grado</option>
                  <option>Administración de Sistemas Informáticos en Red</option>
                  <option>Desarrollo de Aplicaciones Web</option>
                  <option>Desarrollo de Aplicaciones Multiplataforma</option>
                </select>
              </p>
              <div class="button"> 
                <p>
                  <button type="button" id="boton">Enviar</button>
                </p>
              </div>
            </fieldset>
          </form>
        </div>
        <div class="footer">
          <footer>
          </footer>
        </div>
      </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>