#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: align(right, text(8pt, gray)[Guía de Supervivencia TI - Mas Errázuriz]),
  footer: context [
    #set align(center)
    #set text(9pt)
    #counter(page).display()
  ]
)

#set text(
  font: "linux libertine",
  size: 11pt,
  lang: "es"
)

// --- Estilo de Títulos Amigables ---
#show heading.where(level: 1): it => [
  #set text(18pt, weight: "bold", fill: rgb("#283593"))
  #block(it.body)
  #v(0.8em)
]

#show heading.where(level: 2): it => [
  #set text(14pt, weight: "semibold", fill: rgb("#1565c0"))
  #it.body
  #v(0.5em)
]

// --- Portada ---
#align(center + horizon)[
  #text(26pt, weight: "bold")[¡Hola, colega! 👋] \
  #v(1em)
  #text(16pt)[Bienvenido al equipo de TI de *Mas Errázuriz*] \
  #text(12pt, fill: gray)[Esta es tu guía rápida para manejar la Mesa de Ayuda como un pro] \
  #v(2em)
  #rect(stroke: 1pt + blue, inset: 10pt, radius: 5pt)[
    #text(size: 10pt)[Manual de Traspaso y Procesos Operativos]
  ]
]
#pagebreak()

== 1. ¿Por dónde empezar? 🚀
Lo primero que harás cada mañana es entrar a nuestro portal de *Freshdesk*. Es donde ocurre la magia (y donde resolvemos los problemas).

* *El link que no puedes perder: #link("https://maserrazuriz.freshdesk.com")[Portal de Tickets Freshdesk]

== 2. Mapeo y Filtros de Búsqueda 🗺️
Para no perderte, usa el link con filtros configurados. Aquí te explico qué hace cada parte de la página:

#v(1em)
#figure(
  rect(width: 90%, height: 7cm, stroke: 0.5pt + gray, fill: luma(250))[
    #set align(center + horizon)
    [📸 Captura de pantalla de Freshdesk \ (Mapear con números: 1. Bandeja, 2. Filtros, 3. Asignación)]
  ],
  caption: [Mapeo de la interfaz de tickets y filtros activos.]
)

#v(1em)
*Mapeo de la página:*
- *Bandeja de Entrada:* Donde caen todos los requerimientos nuevos.
- *Panel de Filtros:* Configurado para ver Grupos específicos y tickets en estado `0` (Abiertos).
- *Barra de Herramientas:* Donde encontrarás la opción de asignar y responder.

== 3. Tu día a día en Help Desk 🛠️

=== Paso 1: Analizar y Tomar
Antes de lanzarte a resolver, lee la descripción. **Analiza el problema** y si estás seguro, **asígnatelo** para que el equipo sepa que ya está en manos de alguien.

=== Paso 2: La Regla de Oro (Consultar) 🚩
Si al analizar el ticket tienes dudas sobre el procedimiento o es algo que nunca has visto:
- **Consulta siempre a tu supervisor** o a un compañero con más años y experiencia en la empresa. 
- Es mejor preguntar que realizar un cambio que afecte a otros usuarios.

=== Paso 3: Tu Recordatorio (La Nota Interna) 📝
Cuando realices un avance o termines el trabajo, escribe una **Nota Interna**.
- *Función:* Sirve como un recordatorio personal de **qué hiciste exactamente**. 
- *Beneficio:* Si el problema vuelve mañana, sabrás paso a paso lo que intentaste hoy sin tener que hacer memoria.

#v(2em)
#box(fill: rgb("#fff9c4"), inset: 10pt, radius: 4pt)[
  *💡 Tip Pro:* Si el sistema te pide login y estás en casa, revisa que el **FortiClient** esté en verde. Sin VPN, Freshdesk no te dejará entrar a ciertas funciones internas.
]

== 4. El reporte del viernes 📊
Antes de irnos el viernes, dejamos la casa ordenada.
+ Revisa el filtro de "Tickets Abiertos".
+ Asegúrate de que no haya ninguno "olvidado".
+ Envía el resumen de pendientes al equipo.