#import "@preview/fontawesome:0.5.0": *

// --- 🛠️ CONFIGURACIÓN GLOBAL ---

#set text(font: "Arial", size: 11pt, lang: "es")
#set par(justify: true, leading: 0.65em, spacing: 1.2em) 

// Estilo de títulos
#show heading.where(level: 1): it => block(width: 100%, below: 1.5em, above: 2em)[
  #text(fill: rgb("#003366"), size: 18pt, weight: "bold")[#it.body]
  #v(-0.5em)
  #line(length: 100%, stroke: 1pt + rgb("#003366"))
]

#show heading: set block(above: 1.8em, below: 1em)
#show figure: set block(spacing: 1.5em) 
#show link: set text(fill: blue)

// --- 📄 PORTADA ---

#align(center + horizon)[
  #text(28pt, weight: "bold", fill: rgb("#003366"))[¡Bienvenido al Equipo! 👋] \
  #v(1em)
  #text(18pt)[Manual de Inducción TI - *Mas Errázuriz*] \
  #text(13pt, fill: gray)[Guía de Operaciones y Mesa de Ayuda\ 2026] \
  #v(3em)
  #rect(stroke: 1.5pt + rgb("#003366"), inset: 20pt, radius: 10pt, fill: rgb("#f0f8ff"))[
    #set align(left)
    #text(size: 12pt, weight: "bold")[Contenido del Módulo:] \
    #v(0.5em)
    - Administración de Active Directory (AD) \
    - Gestión de Usuarios y Equipos \
    - Protocolos de Soporte Nivel 1
  ]
]

#pagebreak()
// --- ÍNDICE AUTOMÁTICO ---
#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  strong(it)
}

#outline(
  title: [Índice],
  indent: 1.5em,
  depth: 3
)
#pagebreak()

// CAMBIO AQUÍ: Usamos '=' para que el índice lo reconozca
= ¿Cómo usar Active Directory / Centro de Administración?

El *Active Directory (AD)* es el corazón de nuestra red. Es donde gestionamos quién tiene acceso a qué. Como practicante, lo usarás principalmente para dar soporte a usuarios que no pueden iniciar sesión o que han cambiado de departamento.

#v(1em)

#figure(
  grid(
    columns: (1fr, 1fr),
    gutter: 10pt,       
    image("imagenes/aplicaciones/activeDirectory.png", width: 80%),
    image("imagenes/aplicaciones/activeDirectoryCentro.png", width: 80%),
  ),
  caption: [Herramientas de Administración de AD en Mas Errázuriz.]
)

== Gestión de Identidades: Comparativa

Aunque ambas herramientas editan la misma base de datos, tienen enfoques distintos:

#grid(
  columns: (1fr, 1fr),
  gutter: 15pt,
  rect(fill: luma(250), stroke: 0.5pt + luma(200), inset: 12pt, radius: 5pt)[
    *Usuarios y Equipos (ADUC)* \
    #v(0.5em)
    Es la herramienta clásica y rápida. Úsala para:
    - *Desbloqueo rápido* de cuentas.
    - Cambios de grupo de seguridad.
    - Ubicar en qué "OU" (Unidad Organizativa) está un equipo.
  ],
  rect(fill: luma(250), stroke: 0.5pt + luma(200), inset: 12pt, radius: 5pt)[
    *Centro de Administración (ADAC)* \
    #v(0.5em)
    Interfaz moderna con funciones extendidas:
    - *Papelera de reciclaje:* Si borras un usuario por error, aquí se recupera.
    - *Directivas de contraseñas:* Ver cuándo expira una clave.
    - *Búsqueda global:* Más potente para encontrar usuarios en todo el dominio.
  ]
)
#pagebreak()
= Operaciones de Soporte Frecuentes

== Proceso de Restablecimiento de Contraseña 🔑

El ticket más común en mesa de ayuda es el olvido de credenciales. Sigue este flujo utilizando la herramienta clásica de *Usuarios y Equipos de Active Directory*:
#rect(fill: rgb("#e8f5e9"), stroke: rgb("#4caf50"), inset: 12pt, radius: 4pt, width: 100%)[
  *​👀​OJO‼️:* Antes de hacer un cambio de contraseña, *asegúrate de que el usuario este informado de la nueva contraseña *que se le asignará.
]


==== Paso 1: Localización del Usuario
Para no navegar por todas las carpetas (OUs), utiliza la función de búsqueda.

#figure(
  grid(
    columns: (1fr, 1.2fr),
    gutter: 10pt,
    image("imagenes/Active Directory/InicioADUC.png", width: 100%),
    image("imagenes/Active Directory/BusquedaADUC.png", width: 100%),
  ),
  caption: [Haz clic en el icono de la lupa (izq.) e ingresa el nombre del usuario (der.).]
)

1. En la barra de herramientas superior, haz clic en el icono de la *Lupa* (Buscar).
2. En el cuadro de búsqueda, escribe el nombre o apellido del usuario y presiona *"Buscar ahora"*.
#pagebreak()
==== Paso 2: Ejecución del Cambio
Una vez localizado el usuario en los resultados, debemos abrir el menú de gestión.

#figure(
  image("imagenes/Active Directory/RestablecerADUC.png", width: 70%),
  caption: [Menú contextual para el manejo de cuentas.]
)

1. Haz clic derecho sobre el nombre del usuario correcto.
2. Selecciona la opción *"Restablecer contraseña..."*.
#pagebreak()
==== Paso 3: Configuración de Seguridad
Este es el paso más crítico para cumplir con las normas de seguridad de la empresa.

#figure(
  grid(
    columns: (1.2fr, 1fr),
    gutter: 10pt,
    image("imagenes/Active Directory/RestablecercontrasenaADUC.png", width: 100%),
    image("imagenes/Active Directory/RestablecerListoADUC.png", width: 100%),
  ),
  caption: [Ingreso de nueva clave (izq.) y confirmación de éxito (der.).]
)

1. *Ingresa la nueva contraseña* según las indicaciones del usuario o realiza una generica que son las tres primeras letras de su nombre de usuario, luego dos de su apellido, siguiendolo con un punto, el año que estamos actualmente y un \"\*\" (Por ejemplo: Juan Gonzalez, *Juago.2026\**) .
2. *Desbloqueo:* Si el usuario intentó entrar muchas veces, asegúrate de que la casilla _"Desbloquear la cuenta del usuario"_ esté marcada. Aunque de igual manera es recomendable seleccionarla siempre esa opción.
3. Presiona *Aceptar*. Si todo es correcto, verás el mensaje de confirmación final.

#rect(fill: rgb("#e8f5e9"), stroke: rgb("#4caf50"), inset: 12pt, radius: 4pt, width: 100%)[
  *💡​Tips:* Antes de cerrar el ticket de solicitud de cambio de cuenta recuerda responder el ticket con la nueva contraseña asignada al usuario para dejar en constancia de que se ha completado la operación.
]
#rect(fill: rgb("#f5e8e8"), stroke: rgb("#af4c4c"), inset: 12pt, radius: 4pt, width: 100%)[
  *​​👀​OJO‼️:* Si te pasa que el nombre es de 3 siglas como "JOS", "PIA", el sistema no lo aceptará. En ese caso, usa una contraseña generica que sea más corta, solo usando las dos letras de su nombre. Por ejemplo: Pia Silva, *Pisi.2026\**.
]

#pagebreak()

== 2. Desbloqueo de Cuenta (Locked Out)
A veces el usuario sabe su clave, pero el sistema lo bloqueó por muchos intentos fallidos (común después de vacaciones).
- Ve a la pestaña de *"Cuenta"* del usuario.
- Verás un aviso que dice "La cuenta está bloqueada".
- Marca el check de desbloqueo y dale a "Aplicar".
#pagebreak()
== Gestión de Grupos: Accesos a Carpetas y AX 📂

La asignación de grupos es el mecanismo que usamos en *Mas Errázuriz* para otorgar permisos de red. Sin el grupo correcto, el usuario no podrá ver las carpetas de su obra ni utilizar aplicativos específicos como *Dynamics AX*.

==== Paso 1: Localización y Propiedades
Una vez que hayas encontrado al usuario mediante la búsqueda (como vimos en el proceso anterior):

1. Haz doble clic sobre el nombre del usuario o clic derecho y selecciona *"Propiedades"*.
2. Dirígete a la pestaña superior llamada *"Miembro de"*.

#figure(
  image("imagenes/Active Directory/usuarioseleccionadoMiembroADUC.png", width: 80%),
  caption: [Acceso a la pestaña de gestión de grupos del usuario.]
)

==== Paso 2: Agregar nuevo grupo
Para dar un nuevo acceso (por ejemplo, a una carpeta de Obra o al AX):

1. En la pestaña "Miembro de", haz clic en el botón *"Agregar..."*.
2. Se abrirá una ventana emergente llamada "Seleccionar Grupos".
3. Escribe el nombre del grupo solicitado (ejemplo: `grupo Andes Norte` o grupos específicos de AX).
4. Haz clic en *"Comprobar nombres"* para que el sistema valide que el grupo existe.
5. Presiona *"Aceptar"*.

#figure(
  grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    image("imagenes/Active Directory/AgregarMiembroADUC.png", width: 100%),
    image("imagenes/Active Directory/AgregarMiembrogrupoADUC.png", width: 100%),
  ),
  caption: [Apertura del buscador de grupos (izq.) e ingreso del nombre del grupo (der.).]
)

==== Paso 3: Validación y Aplicación

#figure(
  image("imagenes/Active Directory/AgregadoMiembroADUC.png", width: 80%),
  caption: [Confirmación del grupo añadido en la lista.]
)

6. *¡Muy importante!*: Verifica que el grupo aparezca en la lista y presiona el botón *"Aplicar"* en la esquina inferior derecha para guardar los cambios.

#v(1em)

#rect(fill: rgb("#e3f2fd"), stroke: rgb("#2196f3"), inset: 15pt, radius: 8pt, width: 100%)[
  #grid(
    columns: (30pt, 1fr),
    gutter: 10pt,
    align: horizon,
    text(size: 20pt)[💡],
    [
      *Dato clave para Soporte:* \
      - Para que los cambios de carpetas o permisos de AX tengan efecto, el usuario debe esperar 30 minutos aproximadamente para que se logre mandar los nuevos permisos a la nube.
      - Si el acceso es para una obra en *Perú*, recuerda verificar que el grupo corresponda a la estructura de dicha sede.
    ]
  )
]
#v(2em)
#pagebreak()
== 📖 Diccionario de Grupos y Accesos 

Para mantener el orden en el Active Directory, los grupos no se crean con nombres al azar. Siguen una estructura lógica que permite identificar la *Sede*, el *Área* y el *Tipo de Permiso*.

=== Estructura de Nombres de Grupos
Generalmente, verás los grupos escritos con prefijos. Aquí te explico qué significan:

#box(stroke: 1pt + red, inset: 15pt, radius: 8pt, fill: rgb("#fff5f5"))[
  #grid(
    columns: (30pt, 1fr),
    gutter: 10pt,
    align: horizon,
    text(size: 20pt)[⚠️],
    [
      *¡Cuidado con los grupos Heredados!* \
      Si un usuario se cambia de obra, recuerda que *debes quitarlo* de los grupos de la obra anterior antes de agregarlo a la nueva. Mantener grupos viejos es un riesgo de seguridad de la información. 
    ]
  )
]
#v(1em)
#table(
  columns: (0.8fr, 1.4fr, 1.3fr),
  inset: 10pt,
  align: horizon,
  // Diseño limpio: Azul oscuro para el encabezado y filas alternas grises
  fill: (x, y) => 
    if y == 0 { rgb("#b4bbff") } 
    else if calc.even(y) { rgb("#f8f9fa") } 
    else { white },
  
  // Encabezados con texto blanco
  [*Prefijo*], [*Significado*], [*Ejemplo*],
  
  // Contenido con la información completa
  [*Grupo...*], 
  [Son los grupos de donde pertenece cada persona.], 
  [#text(font: "Courier New", size: 9.5pt)[`Los usuarios de Andes nortes es: 'Grupo Andes Norte' `]],

  [*grp_VPNGTD*], 
  [Son las personas que tienen acceso a la obra VPN.], 
  [--],

  [*grp_SG_ADN\_...*], 
  [Son las personas de *Andes Norte* que desean tener acceso a ciertas carpetas de la Obra y pueden tanto tener acceso para lectura como escritura.], 
  [#text(font: "Courier New", size: 9pt)[`Ejemplo: grp_SG_ADN_01_R (Lectura) y grp_SG_ADN_01_RW (Escritura)`]],

  [*grp_SG_ATM\_...*], 
  [Son las personas de *Antamina (Perú)* que desean tener acceso a ciertas carpetas de la Obra y pueden tanto tener acceso para lectura como escritura.], 
  [#text(font: "Courier New", size: 9pt)[`Ejemplo: grp_SG_ATM_01_R (Lectura) y grp_SG_ATM_01_RW (Escritura)`]],

  [*grp_SG_ARQ\_...*], 
  [Son las personas de *Arqueros* que desean tener acceso a ciertas carpetas de la Obra y pueden tanto tener acceso para lectura como escritura.], 
  [#text(font: "Courier New", size: 9pt)[`Ejemplo: grp_SG_ARQ_01_R (Lectura) y grp_SG_ARQ_01_RW (Escritura)`]],

  [*grp_SG_CCR\_...*], 
  [Son las personas de *Cerro Corona (Perú)* que desean tener acceso a ciertas carpetas de la Obra y pueden tanto tener acceso para lectura como escritura.], 
  [#text(font: "Courier New", size: 9pt)[`Ejemplo: grp_SG_CCR_01_R (Lectura) y grp_SG_CCR_01_RW (Escritura)`]],

  [*grp_SG_CLO\_...*], 
  [Son las personas de *Coloso* que desean tener acceso a ciertas carpetas de la Obra y pueden tanto tener acceso para lectura como escritura.], 
  [#text(font: "Courier New", size: 9pt)[`Ejemplo: grp_SG_CLO_01_R (Lectura) y grp_SG_CLO_01_RW (Escritura)`]],

  [*grp_SG_PHL1\_...*], 
  [Son las personas de *PHL5 Unidad 1* que desean tener acceso a ciertas carpetas de la Obra y pueden tanto tener acceso para lectura como escritura.], 
  [#text(font: "Courier New", size: 9pt)[`Ejemplo: grp_SG_PHL1_01_R (Lectura) y grp_SG_PHL1_01_RW (Escritura)`]],

  [*grp_SG_RRA\_...*], 
  [Son las personas de *Raura (Perú)* que desean tener acceso a ciertas carpetas de la Obra y pueden tanto tener acceso para lectura como escritura.], 
  [#text(font: "Courier New", size: 9pt)[`Ejemplo: grp_SG_RRA_01_R (Lectura) y grp_SG_RRA_01_RW (Escritura)`]],

  [*grp_SG_SGB\_...*], 
  [Son las personas de *San Gabriel (Perú)* que desean tener acceso a ciertas carpetas de la Obra y pueden tanto tener acceso para lectura como escritura.], 
  [#text(font: "Courier New", size: 9pt)[`Ejemplo: grp_SG_SGB_01_R (Lectura) y grp_SG_SGB_01_RW (Escritura)`]],

  [*grp_SG_SPC\_...*], 
  [Son las personas de *Spence* que desean tener acceso a ciertas carpetas de la Obra y pueden tanto tener acceso para lectura como escritura.], 
  [#text(font: "Courier New", size: 9pt)[`Ejemplo: grp_SG_SPC_01_R (Lectura) y grp_SG_SPC_01_RW (Escritura)`]],

  [*GLB\_...*], 
  [Son acceso a ciertas rutas de carpetas de Mas Errazuriz.], 
  [#text(font: "Courier New", size: 9pt)[`Ejemplo: GLB_InformesPsicolaborales_Lectura \ Ruta: \\SRVFS\InformesPsicolaborales$`]],
)


#pagebreak()
#rect(fill: rgb("#fff9c4"), stroke: rgb("#fbc02d"), inset: 15pt, radius: 8pt, width: 100%)[
  #grid(
    columns: (30pt, 1fr),
    gutter: 10pt,
    align: horizon,
    text(size: 20pt)[🚩],
    [
      *Importante - Diferencias Regionales:* \
      Recuerda que los dominios de *Chile* y *Perú* pueden tener estructuras de nombres distintas. Antes de modificar una cuenta de Perú, consulta a tu supervisor si hay alguna política de seguridad específica que debas seguir, ya que los permisos de carpetas suelen ser más estrictos allá.
    ]
  )
]