<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
      <head>
        <meta charset="iso-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <title>Instituto Tecnológico Edix</title>
      </head>

  <body>

  <header>
    <h1>Instituto Tecnológico Edix</h1>
  </header>

  <!-- Tabla 1  -->

    <h2>Formación</h2>

      <table border= "1">
        <tr bgcolor= "#00b8ff">
          <th style="text-align:center">Nombre</th>
          <th style="text-align:center">Grado</th>
          <th style="text-align:center">Decreto Título</th>
        </tr>
          <xsl:for-each select="ite/ciclos/ciclo">

        <tr>
          <td>
            <xsl:value-of select="nombre"/>
          </td>
          <td>
            <xsl:value-of select="grado"/>
          </td>
          <td>
            <xsl:value-of select="decretoTitulo/@año"/>
          </td>
        </tr>

        </xsl:for-each>
      </table>

  <!-- Tabla 2 -->

    <h2>Profesores</h2>

      <table border= "1">
        <tr bgcolor= "#00b8ff">
          <th style="text-align:center">ID</th>
          <th style="text-align:center">Nombre</th>
        </tr>
          <xsl:for-each select="ite/profesores/profesor">

        <tr>
          <td>
            <xsl:value-of select="id"/>
          </td>
          <td>
            <xsl:value-of select="nombre"/>
          </td>
        </tr>
          </xsl:for-each>
      </table>

  <!-- Lista  -->

      <h2>Dirección</h2>
        <ol>
          <li>Director</li>
          <ul>
            <li>Nombre: Chon</li>
            <li>Despacho: Número 31, 3ª Planta, Edificio A</li>
          </ul>

          <li>Jefe de estudios</li>
          <ul>
            <li>Nombre: Dani</li>
            <li>Número 27, 2ª Planta, Edificio B</li>
          </ul>
        </ol>

      <h2>Formulario de contacto</h2>
      <p> Servicio de atención telefónica en el: xx-xxx-xx-xx (disponible de lunes a viernes de 09:00h a
      19:00 h). </p>

  <!-- "mailto": Email donde se va a enviar, "method post": para enviar datos, "enctype": encoding -->

    <form action="mailto:direccion@email" method="post" enctype="text/plain">

      <!-- "input": parte del formulario donde interactuar-->

      <label for="nombre"> Nombre: </label>
      <input name="nombre" id="nombre" type="text" />

      <label for="apellido-1"> Primer apellido: </label>
      <input name="apellido-1" id="apellido-1" type="text" />

      <label for="apellido-2"> Segundo apellido: </label>
      <input name="apellido-2" id="apellido-2" type="text" />

      <label for="telefono-contacto"> Teléfono de contacto: </label>
      <input tfn="telefono-contacto" id="telefono-contacto" type="number" />

      <label for="email"> Email </label>
      <input email="email" id="email" type="email" />

      <!-- "submit": Botón de enviar. "Value": Texto que aparece en el mensaje.-->
    
      <input type="submit" id="boton-enviar" value="Enviar" />
    </form>
  </body>

  <footer>
    EDIX EDUCACIÓN S.A. (en adelante, Edix), tratará los datos de carácter
    personal que nos has proporcionado con la finalidad de atender a tu
    solicitud de información acerca de los productos y servicios ofrecidos por
    Edix, por vía telefónica o electrónica. Podrás revocar el consentimiento
    otorgado, así como ejercitar los derechos reconocidos en los artículos 15 a
    22 del Reglamento (UE) 2016/679, mediante solicitud dirigida a c/ Aravaca 12,
    28040, Madrid, España, o a la siguiente dirección de correo electrónico:
    rgpd@edix.com, adjuntando copia de su DNI o documentación acreditativa de su
    identidad. Si lo deseas puede consultar información adicional y detallada
    sobre la ley de Protección de Datos pinchando <a target="_blank" 
    href="https://www.boe.es/buscar/act.php?id=BOE-A-2018-16673"> aquí </a>.
  </footer>
      
    </html>
  </xsl:template>
</xsl:stylesheet>