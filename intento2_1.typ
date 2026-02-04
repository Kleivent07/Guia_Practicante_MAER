#import "@preview/fontawesome:0.5.0": *

// --- 🛠️ CONFIGURACIÓN GLOBAL (Aquí ocurre la magia) ---

// 1. Fuente y Texto General
#set text(font: "Arial", size: 11pt, lang: "es")
#set par(justify: true, leading: 0.65em, spacing: 1.2em) 
// 'spacing': Es el espacio automático entre párrafos de texto.

// 2. Espacio Automático para Títulos
#show heading: set block(above: 2em, below: 1em)
// 'above': Espacio antes del título. 'below': Espacio después.

// 3. Espacio Automático para Imágenes
// Usaremos #figure() en lugar de image() sola para que se centre y tenga espacio
#show figure: set block(spacing: 2em) 

// 4. Configuración de enlaces
#show link: set text(fill: blue)

// --- 📄 INICIO DEL DOCUMENTO ---

#align(center + horizon)[
  #text(26pt, weight: "bold", fill: rgb("#003366"))[¡Hola, colega! 👋] \
  #v(1em)
  #text(16pt)[Bienvenido al equipo de TI de *Mas Errázuriz*] \
  #text(12pt, fill: gray)[Esta es tu guía rápida para manejar la Mesa de Ayuda como un pro] \
  #v(2em)
  #rect(stroke: 1pt + rgb("#003366"), inset: 15pt, radius: 8pt, fill: rgb("#f0f8ff"))[
    #text(size: 11pt, weight: "bold")[Manual de Traspaso y Procesos Operativos]
  ]
]

#pagebreak()

= Introducción
Este documento es tu guía rápida para manejar la Mesa de Ayuda de *Mas Errázuriz*. Aquí encontrarás los pasos esenciales para comenzar, cómo navegar por nuestro sistema de tickets en *Freshdesk*, y las mejores prácticas para brindar soporte eficiente a nuestros usuarios.

== 1. ¿Por dónde empezar? 🚀
Lo primero que harás cada mañana es entrar a nuestro portal de *Freshdesk*. Es donde ocurre la magia (y donde resolvemos los problemas).

* *El link que no puedes perder:* #link("https://maserrazuriz.freshdesk.com")[Portal de Tickets Freshdesk] 👈*

=== Página de Inicio de Freshdesk
Al ingresar, verás el panel de información general con estadísticas rápidas sobre los tickets abiertos, pendientes y resueltos. 

// Usamos #figure para que aplique el espacio automático y centrado
#figure(
  image("imagenes/inicio de la pagina .png", width: 90%)
)

Además en la parte superior derecha, encontrarás tu perfil, para crear un nuevo ticket o contacto, búsqueda y notificaciones.

#figure(
  image("imagenes/iconos de la parte superior derecha.png", width: 80%)
)

Y en la parte izquierda, el menú de navegación principal:

#grid(
  columns: (1fr, auto), // Ajustado para que quede pegadito y bonito
  align: (left + horizon, center + horizon), 
  gutter: 20pt, 
  [
    + El primer icono que aparece es el de *Inicio*, donde está el panel de información.
    + El segundo icono es el de *Tickets*, donde verás todos los tickets asignados a ti.
    + El tercer icono es el de *Contactos*, donde están las empresas y clientes.
    + El cuarto icono es el de *Soluciones*, con la base de conocimiento y FAQ.
    + El quinto icono es el de *Informes*, para ver estadísticas detalladas.
    + El sexto icono es el de *Administración*, para ajustes del sistema.
  ],
  image("imagenes/iconos_del costado .png", width: 30%) 
)


=== Página de Tickets
Al ingresar, verás el tablero principal con todos los tickets asignados a ti y al equipo. Aquí es donde comenzarás tu jornada diaria.

#figure(
  image("imagenes/pagina de los tickets.png", width: 90%)
)

Como puedes ver en la imagen, en la parte derecha tienes varias opciones para filtrar y la parte superior para buscar los tickets. Asegúrate de usar los filtros adecuados para ver solo los tickets que necesitas atender.
Además podrás ver los estados de los tickets, como Abierto, Pendiente, Resuelto, etc. Y los agentes asignados a cada ticket.

#pagebreak()

=== Página de Contactos
En la sección de contactos, puedes gestionar toda la información de nuestros clientes y empresas. Aquí puedes agregar nuevos contactos, editar la información existente y buscar contactos específicos.

#figure(
  image("imagenes/pagina de los contactos .png", width: 90%)
)

=== Página de Soluciones
La sección de soluciones es donde almacenamos nuestra base de conocimientos y FAQ. Aquí puedes crear nuevos artículos, editar los existentes y organizar la información para que sea fácil de encontrar.

#figure(
  image("imagenes/pagina de conocimientos.png", width: 90%)
)
#pagebreak()

=== Página de Informes
En la sección de informes, puedes ver estadísticas detalladas sobre el rendimiento del equipo, tiempos de respuesta, satisfacción del cliente y más. Utiliza estos informes para identificar áreas de mejora y optimizar nuestros procesos.

#figure(
  image("imagenes/pagina de informes.png", width: 90%)
)

=== Página de Administración
La sección de administración es donde puedes configurar ajustes del sistema, gestionar usuarios, roles y permisos. Asegúrate de tener los permisos adecuados antes de realizar cambios en esta sección.
#figure(
  image("imagenes/pagina de configuraion.png", width: 90%)
)
#pagebreak()
=== Perfil de Usuario
Al clickear en tu perfil en la parte superior derecha, puedes acceder a la configuración de tu cuenta, cambiar tu foto de perfil, actualizar tu información personal y ajustar tus preferencias de notificación.

#figure(
  image("imagenes/configuracion de perfil.png", width: 90%)
)
#pagebreak()
== ¿Como navegar por Freshdesk? 🗺️
Para no perderte, usa el link con filtros configurados. Aquí te explico qué hace cada parte de la página:
#v(0.5em)


#figure(
  grid(
    columns: (1fr, 1fr, 1fr), 
    gutter: 10pt,             
    align: top,               
    image("imagenes/tabla de filtros .png", width: 100%),
    image("imagenes/tabla de filtros 2.png", width: 100%),
    image("imagenes/tabla de filtros 3.png", width: 100%)
  ),
  caption: [Estas son las opciones que verás al lado derecho. Úsalas para filtrar.]
)

// --- PEGAR ESTO DESPUÉS DEL TÍTULO Y EL GRID DE IMÁGENES ---

=== 🧠 Diccionario de Filtros: ¿Qué hace cada uno?
No te abrumes con tantas opciones. Aquí te explico para qué sirve cada grupo de filtros:

#v(1em)

// GRUPO 1: LOS VITALES (Fondo Rojo Suave para resaltar importancia)
#rect(fill: rgb("#fff5f5"), stroke: rgb("#fc8181"), radius: 5pt, inset: 15pt, width: 100%)[
  #grid(
    columns: (auto, 1fr),
    gutter: 15pt,
    text(size: 24pt)[🚨], 
    [
      *Nivel 1: Los Vitales (Úsalos diario)* \
      Estos definen tu trabajo del día a día.
      
      / El estado incluye: *¡El más importante!* Define si el ticket está abierto, pendiente o cerrado. Si no marcas nada, verás basura antigua.
      / Las prioridades incluyen: Úsalo para encontrar las "bombas" (Urgente/Alto) antes que exploten.
      / Los tipos incluyen: ¿Es una *Incidencia* (algo se rompió) o un *Requerimiento* (piden algo nuevo)? Ayuda a saber qué herramientas preparar.
    ]
  )
]

#v(1em)

// GRUPO 2: CONTEXTO (Fondo Azul Suave)
#rect(fill: rgb("#ebf8ff"), stroke: rgb("#63b3ed"), radius: 5pt, inset: 15pt, width: 100%)[
  #grid(
    columns: (auto, 1fr),
    gutter: 15pt,
    text(size: 24pt)[🔍], 
    [
      *Nivel 2: Contexto (¿Quién y Dónde?)* \
      Úsalos cuando necesites investigar el origen del problema.

      / Las empresas incluyen: Vital si se cayó la red en una faena específica. Filtras por la empresa/sede y ves si todos gritan por lo mismo.
      / Los contactos incluyen: Para ver si un usuario específico ("Juan Pérez") ha reportado esto antes.
      / Ubicación incluye: Filtra por sede física (ej. Oficina Central vs Faena Norte).
      / Categoria incluye: Filtra por área técnica (ej. Hardware, Redes, Software).
    ]
  )
]

#v(1em)

// GRUPO 3: TIEMPOS Y SLA (Fondo Gris)
#rect(fill: luma(245), stroke: luma(200), radius: 5pt, inset: 15pt, width: 100%)[
  #grid(
    columns: (auto, 1fr),
    gutter: 15pt,
    text(size: 24pt)[⏱️], 
    [
      *Nivel 3: Tiempos y Cumplimiento (SLA)* \
      Úsalos para reportes o para ver qué se está venciendo.

      / Plazo límite de resolución: Te avisa cuándo se vence el tiempo contractual para arreglar el problema.
      / Plazo límite para la primera respuesta: Te avisa si te estás tardando mucho en decir "Hola" al usuario.
      / Cerrado/Resuelto a la(s): Sirve para buscar en el pasado. Ej: "¿Qué tickets cerramos la semana pasada?".
    ]
  )
]

#v(1em)
*Otros filtros:*
- *Etiquetas:* Son "tags" extra que a veces usamos para proyectos especiales.
- *Las fuentes incluyen:* Te dice si el ticket llegó por correo, portal web o teléfono.

#line(length: 100%, stroke: 1pt + gray) // Una línea separadora elegante