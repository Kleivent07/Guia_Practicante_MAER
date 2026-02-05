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

#text(16pt, weight: "bold", fill: rgb("#003366"))[¿Como usar el Active Directory/Centro de Administración de Active Directory?] \

El active directory es una herramienta fundamental para la gestión de usuarios, grupos y recursos en un entorno de red. En este módulo, aprenderás a utilizar el Centro de Administración de Active Directory para administrar tu infraestructura de TI de manera eficiente.

Como veras hay dos Active Directory, el primero es el Active Directory Users and Computers, que es la herramienta tradicional para gestionar usuarios y grupos. El segundo es el Centro de Administración de Active Directory, que es una interfaz más moderna y amigable para administrar tu entorno de Active Directory.

#figure(
  grid(
    columns: (1fr, 1fr),
    gutter: 10pt,       
    image("imagenes/aplicaciones/activeDirectory.png", width: 80%),
    image("imagenes/aplicaciones/activeDirectoryCentro.png", width: 80%),
  ),
  caption: [Aplicación de Usuarios y equipos de Active Directory (izq.) y\ Centro de Administración de Active Directory (der.).]
)

== Gestión de Identidades: ¿Qué herramienta usar?

Aunque ambas aplicaciones interactúan con la misma base de datos de usuarios, cumplen roles ligeramente distintos en el flujo de trabajo diario:

#v(1em)

#grid(
  columns: (1fr, 1fr),
  gutter: 15pt,
  rect(fill: luma(250), stroke: 0.5pt + luma(200), inset: 12pt, radius: 5pt)[
    *Usuarios y Equipos (ADUC)* \
    #v(0.5em)
    Es la herramienta "clásica". Úsala para:
    - Búsquedas rápidas de usuarios.
    - Mover objetos entre Unidades Organizativas (OUs).
    - Ver propiedades avanzadas de atributos.
  ],
  rect(fill: luma(250), stroke: 0.5pt + luma(200), inset: 12pt, radius: 5pt)[
    *Centro de Administración (ADAC)* \
    #v(0.5em)
    Interfaz moderna basada en PowerShell. Úsala para:
    - Papelera de reciclaje (recuperar usuarios borrados).
    - Gestión de directivas de contraseñas.
    - Consultar el historial de cambios recientes.
  ]
)

== Operaciones Frecuentes (Soporte Nivel 1)

Como practicante, estos son los tres procesos que más ejecutarás para resolver tickets de usuarios en *Mas Errázuriz*:

=== A. Reseteo de Contraseña
Cuando un usuario olvida su clave o esta expira:
1. Busca al usuario por su nombre o apellido.
2. Clic derecho sobre el nombre y selecciona *"Restablecer contraseña..."*.
3. *Check de seguridad:* Asegúrate de marcar la opción _"El usuario debe cambiar la contraseña en el siguiente inicio de sesión"_.

=== B. Desbloqueo de Cuenta
Ocurre frecuentemente tras varios intentos fallidos del usuario (especialmente tras cambiar la clave en un equipo y olvidar actualizarla en el celular).
- En la pestaña de *"Cuenta"*, busca el mensaje: _"Esta cuenta está bloqueada actualmente"_. 
- Simplemente marca el check de desbloqueo y presiona Aplicar.

=== C. Verificación de Grupos
Si un usuario no puede acceder a una carpeta compartida:
- Revisa la pestaña *"Miembro de"*. 
- Compara sus grupos con los de un compañero de su misma área para verificar qué permiso le falta.

#v(1.5em)

#rect(fill: rgb("#fff9c4"), stroke: rgb("#fbc02d"), inset: 15pt, radius: 8pt, width: 100%)[
  #grid(
    columns: (30pt, 1fr),
    gutter: 10pt,
    align: horizon,
    text(size: 20pt)[🚩],
    [
      *Consulta con el Supervisor:* \
      La creación de *usuarios nuevos* y la *eliminación de cuentas* son procesos críticos que requieren validación. Antes de crear o borrar a alguien, confirma siempre con tu supervisor si el usuario ya tiene asignada una licencia de Office 365 y a qué sede (Chile o Perú) pertenece para evitar conflictos de dominio.
    ]
  )
]

