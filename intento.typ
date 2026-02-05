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
  #text(13pt, fill: gray)[Guía de Operaciones y Mesa de Ayuda] \
  #v(3em)
  #rect(stroke: 1.5pt + rgb("#003366"), inset: 20pt, radius: 10pt, fill: rgb("#f0f8ff"))[
    #set align(left)
    #text(size: 12pt, weight: "bold")[Contenido del Módulo:] \
    #v(0.5em)
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