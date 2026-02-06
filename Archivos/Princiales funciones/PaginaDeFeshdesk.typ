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
    1. Acceso y Credenciales \
    2. Navegación en Freshdesk \
    3. Gestión de Tickets y Protocolos
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

= Introducción
Este documento servirá como tu brújula dentro de la Mesa de Ayuda de *Mas Errázuriz*. Aquí encontrarás los flujos de trabajo esenciales, la estructura de nuestro sistema de tickets en *Freshdesk* y los protocolos clave para una atención eficiente y segura.

== 1. Acceso al Portal 🚀
Tu herramienta principal de trabajo es el portal de *Freshdesk*. Este es nuestro centro de operaciones donde centralizamos todos los requerimientos de la compañía.

#v(1em) 

#align(center)[
  #link("https://maserrazuriz.freshdesk.com")[
    #rect(fill: rgb("#e3f2fd"), stroke: 2pt + rgb("#2196f3"), radius: 6pt, inset: 10pt)[
      #text(size: 11pt, weight: "bold", fill: rgb("#0d47a1"))[🔗 ACCESO DIRECTO: Portal de Tickets]
    ]
  ]
]

#figure(
  grid(
    columns: (1fr, 1fr), // Divide el espacio en dos columnas iguales
    gutter: 10pt,        // Espacio de separación entre las dos imágenes
    image("../../imagenes/IncioSesion.png", width: 80%),
    image("../../imagenes/IncioSesion2.png", width: 80%),
  ),
  caption: [Pantalla de inicio de sesión de usuario (izq.) y\ Pantalla de inicio de sesión de agente (der.).]
)

#v(1.5em)

#align(center)[
  #rect(
    fill: rgb("#f9fafb"), 
    stroke: 1pt + rgb("#e0e0e0"), 
    radius: 8pt, 
    inset: 20pt, 
    width: 90%
  )[
    #align(left)[
      #text(size: 13pt, weight: "bold", fill: rgb("#374151"))[🔐 Tus Credenciales:]
      #v(0.2cm)
      #grid(
        columns: (40pt, 1fr),
        gutter: 10pt,
        align: horizon,
        text(size: 20pt)[📧],
        [*Usuario:* \ Tu correo corporativo completo. \ #text(fill: gray, size: 9pt)[(ej: juan.perez\@maserrazuriz.cl)]]
      )
      #v(1em)
      #grid(
        columns: (40pt, 1fr),
        gutter: 10pt,
        align: horizon,
        text(size: 20pt)[🔑],
        [*Contraseña:* \ La asignada en tu correo de bienvenida. \ #text(fill: blue, size: 9pt)[*Nota:* Si la olvidas, usa la opción "¿Olvidó su contraseña?" del portal.]]
      )
    ]
  ]
]

#pagebreak()

= Interfaz y Navegación

== Panel de Control (Dashboard)
Al ingresar, visualizarás el resumen operativo. Este panel te permite monitorear la carga de trabajo actual y los tickets pendientes de atención inmediata.

#figure(
  image("../../imagenes/inicio de la pagina .png", width: 95%),
  caption: [Dashboard: Vista general de tickets y estadísticas.]
)

== Herramientas de Navegación
En la esquina superior derecha, encontrarás tu menú personal para acceder a tu perfil, configuraciones y notificaciones del sistema.

#figure(
  image("../../imagenes/iconos de la parte superior derecha.png", width: 60%),
  caption: [Menú de usuario y notificaciones.]
)

Tu barra lateral izquierda es tu herramienta de navegación diaria. Aquí se describen sus módulos principales:

#box(stroke: 0.5pt + luma(200), inset: 15pt, radius: 5pt)[
#grid(
  columns: (1fr, 80pt),
  align: horizon,
  gutter: 15pt,
  [
    1. *Inicio:* Resumen y métricas globales.
    2. *Tickets:* Gestión de incidentes y requerimientos.
    3. *Contactos:* Base de datos de usuarios y clientes.
    4. *Soluciones:* Base de conocimientos y manuales (FAQ).
    5. *Informes:* KPIs y métricas de rendimiento.
    6. *Administración:* Configuración del sistema (Acceso restringido).
  ],
  image("../../imagenes/iconos_del costado .png", width: 27%)
)
]

#pagebreak()

= Gestión Operativa

== 🎫 Bandeja de Tickets
Esta es la vista principal de trabajo. Aquí se listan todos los casos asignados al equipo, ordenados por fecha o prioridad.

#figure(
  image("../../imagenes/pagina de los tickets.png", width: 95%),
  caption: [Bandeja de entrada de tickets.]
)

#rect(fill: rgb("#fffde7"), stroke: rgb("#fbc02d"), inset: 10pt, radius: 4pt, width: 100%)[
  *Importante:* Utiliza siempre los filtros laterales. Asegúrate de tener marcados los estados *"Abierto"* y *"Pendiente"* para visualizar correctamente tus tareas pendientes.
]

== 📁 Módulos Complementarios
#grid(
  columns: (1fr, 1fr),
  gutter: 15pt,
  [
    === Contactos
    Permite gestionar la información de los usuarios. Útil para validar correos o cargos.
    #figure(image("../../imagenes/pagina de los contactos .png", width: 100%))
  ],
  [
    === Soluciones
    Biblioteca técnica. Antes de escalar un problema, busca si ya existe un artículo aquí.
    #figure(image("../../imagenes/pagina de conocimientos.png", width: 100%))
  ]
)

#pagebreak()

= Estrategia de Filtrado 🗺️

Para mantener el orden y la eficiencia, es vital saber filtrar la información. A continuación, se detalla la lógica de los filtros laterales:

#figure(
  grid(
    columns: (1fr, 1fr, 1fr), 
    gutter: 8pt,
    image("../../imagenes/tabla de filtros .png", width: 80%),
    image("../../imagenes/tabla de filtros 2.png", width: 80%),
    image("../../imagenes/tabla de filtros 3.png", width: 80%)
  ),
  caption: [Panel de filtros laterales.]
)

== 🧠 Guía de Uso de Filtros

// NIVEL 1
#rect(fill: rgb("#fff5f5"), stroke: rgb("#fc8181"), radius: 5pt, inset: 12pt, width: 100%)[
  #grid(columns: (30pt, 1fr), gutter: 10pt, text(size: 20pt)[🚨], [
    *Nivel 1: Configuración Crítica* \
    / Grupos: *Obligatorio.* Marca tu área (ej. *"Soporte TI"*). Si no lo haces, verás tickets de otras áreas como ERP o Mantención.
    / Estado: Selecciona *"Abierto"* y *"Pendiente"* para visualizar tu carga real.
  ])
]
#v(0.5em)
// NIVEL 2
#rect(fill: rgb("#ebf8ff"), stroke: rgb("#63b3ed"), radius: 5pt, inset: 12pt, width: 100%)[
  #grid(columns: (30pt, 1fr), gutter: 10pt, text(size: 20pt)[🔍], [
    *Nivel 2: Contexto y Origen* \
    / Tipo: Distingue entre *Incidencia* (Falla de servicio) y *Requerimiento* (Solicitud nueva).
    / Agente: Filtra por tu nombre para ver exclusivamente tus asignaciones.
  ])
]
#v(0.5em)
// NIVEL 3
#rect(fill: luma(245), stroke: luma(200), radius: 5pt, inset: 12pt, width: 100%)[
  #grid(columns: (30pt, 1fr), gutter: 10pt, text(size: 20pt)[⏱️], [
    *Nivel 3: Cumplimiento (SLA)* \
    / Plazo límite: Indica cuándo vence el compromiso de solución. Prioriza los que estén por vencer.
  ])
]

#pagebreak()

= Análisis y Resolución 🧬

Antes de trabajar en un ticket, analiza sus componentes clave para entender la magnitud del problema:

#figure(
  image("../../imagenes/vistaTicket.png", width: 95%),
  caption: [Detalle de un ticket en proceso.]
)

#align(center)[
  #grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    rect(fill: luma(250), inset: 10pt, radius: 4pt, width: 100%)[
      *🆔 Número:* ID único para seguimiento. \
      *📝 Asunto:* Resumen de la solicitud.
    ],
    rect(fill: luma(250), inset: 10pt, radius: 4pt, width: 100%)[
      *🚦 Estado:* Etapa actual del proceso. \
      *👤 Agente:* Responsable de la solución.
    ]
  )
]

== Ejemplo Práctico: Creación de Cuenta
Observando la imagen superior:
- *Solicitud:* Creación de usuario nuevo.
- *Prioridad:* Baja (No afecta la continuidad operativa crítica).
- *Estado:* Pendiente (En espera de ejecución por parte del agente).

#v(2em)

#pagebreak()

= Comunicación con el Usuario 💬
El cierre del ticket es tan importante como la solución técnica.

#figure(
  image("../../imagenes/vistaTicket2.png", width: 95%),
  caption: [Interfaz de respuesta.]
)

#rect(fill: rgb("#f0fdf4"), stroke: rgb("#bbf7d0"), radius: 8pt, inset: 15pt, width: 100%)[
  *Protocolo de Respuesta:*
  1. Presiona *"Responder"* para contactar al solicitante.
  2. Redacta un mensaje claro y cordial. *Ej:* "Hola, tu solicitud ha sido procesada. Adjuntamos los datos solicitados..."
  3. Adjunta evidencias (capturas o documentos) si corresponde.
  4. *Cierre:* Actualiza el Estado a *"Resuelto"* para finalizar el ciclo de tiempo.
]

#pagebreak()

// --- SECCIÓN: ADVERTENCIA REGIONAL ---
= 🚩 Protocolo Especial: Procedimientos Regionales

Es fundamental distinguir entre las solicitudes nacionales e internacionales, ya que los procedimientos técnicos varían significativamente.

#rect(
  fill: rgb("#fff8e1"), 
  stroke: 1.5pt + rgb("#ffc107"), 
  radius: 8pt, 
  inset: 18pt, 
  width: 100%
)[
  #grid(
    columns: (40pt, 1fr),
    gutter: 15pt,
    align: horizon,
    text(size: 28pt)[⚠️],
    [
      #text(size: 12pt, weight: "bold", fill: rgb("#795548"))[ADVERTENCIA: Diferencias Operativas (Chile vs. Perú)] \
      \
      Los procedimientos para configuración de equipos, accesos a red y dominios en la sede de *Perú* son distintos a los de Chile. Aplicar un procedimiento local en una cuenta extranjera puede ocasionar bloqueos o fallas de servicio.
      
      *Instrucción Obligatoria:*
      1. Verifica siempre la *Ubicación* del solicitante o el dominio de su correo.
      2. Si el ticket proviene de Perú, *DETÉN el proceso estándar*.
      3. *Consulta a tu supervisor o a un técnico senior* sobre el flujo específico para esa región antes de ejecutar cualquier cambio.
    ]
  )
]

#v(2em)
#align(center)[
  #text(fill: gray, style: "italic", size: 10pt)[- Fin del Manual de Inducción -]
]