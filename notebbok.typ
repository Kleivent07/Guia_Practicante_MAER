#import "@preview/fontawesome:0.5.0": *

// --- 🛠️ CONFIGURACIÓN GLOBAL ---
#set text(font: "Arial", size: 10pt, lang: "es") 
#set par(justify: true, leading: 0.6em, spacing: 1em) 

#show heading.where(level: 1): it => block(width: 100%, below: 1em, above: 1.5em)[
  #text(fill: rgb("#003366"), size: 16pt, weight: "bold")[#it.body]
  #v(-0.5em)
  #line(length: 100%, stroke: 1pt + rgb("#003366"))
]

#show heading: set block(above: 1.5em, below: 1em)
#show figure: set block(spacing: 1.5em) 

// --- 📄 PORTADA ---

// 1. El Título se mantiene centrado en el medio de la hoja
#align(center + horizon)[
  #text(24pt, weight: "bold", fill: rgb("#003366"))[Configuración Integral de Notebooks 💻] \
  #v(1em)
  #text(14pt)[Procedimiento Estándar: Restablecimiento y Configuración] \
  #v(2em)
  #rect(stroke: 1.5pt + rgb("#003366"), inset: 15pt, radius: 10pt, fill: rgb("#f0f8ff"))[
    #set align(left)
    #text(size: 10pt)[
      *Alcance:* Guía paso a paso desde el borrado del equipo (Wipe) hasta la entrega final con software corporativo.
    ]
  ]
]

// 2. La Advertencia se va al pie de página automáticamente
#place(bottom)[
  #rect(
    fill: rgb("#fde3e3"), // Fondo rojo suave
    stroke: 1pt + rgb("#ff0800"), // Borde rojo fuerte
    inset: 12pt, 
    radius: 6pt, 
    width: 100%
  )[
    #grid(
      columns: (30pt, 1fr),
      gutter: 10pt,
      align: horizon,
      text(size: 18pt)[ℹ️], // Icono de información
      [
        *Nota Aclaratoria:* \
        Existen múltiples formas técnicas de realizar esta configuración. Sin embargo, en este manual *mostraremos únicamente la forma más fácil y estándar* para evitar complicaciones innecesarias.
      ]
    )
  ]
]

#pagebreak()

// --- FASE 1: RESTABLECIMIENTO ---
= Fase 1: Restablecimiento de Fábrica (Wipe) ♻️

Si el *Notebook* es reutilizado, es obligatorio borrarlo completamente antes de configurarlo.
Para ello, debes iniciar sesión en el equipo (idealmente con la cuenta `Soporte.local`).\
#text(size: 9pt, style: "italic")[Nota: Si no conoces la contraseña, solicítala a tu supervisor o a personal autorizado.]\
Una vez dentro, dirígete a:\
*Configuración > Sistema > Recuperación > Restablecer este PC*.

== Paso 1: Tipo de Borrado
Selecciona *"Quitar todo"*. Esto elimina archivos personales, cuentas y configuraciones para dejar el equipo limpio.

#figure(
  image("imagenes/configNB/restablecerEquipo1.png", width: 70%),
  caption: [Selección de la opción "Quitar todo".]
)

== Paso 2: Fuente de Instalación
Selecciona *"Descarga de la nube"*.
*¿Por qué?* Descarga la versión más reciente y limpia de Windows, evitando errores del sistema anterior.

#figure(
  image("imagenes/configNB/restablecerEquipo2.png", width: 70%),
  caption: [Selección de "Descarga de la nube".]
)

#pagebreak()
== Paso 3: Confirmación y Ejecución
Revisa la configuración adicional y haz clic en *"Siguiente"*. Finalmente, verás la pantalla de resumen. Presiona *"Restablecer"* para iniciar.

#grid(
  columns: (1fr, 1fr), gutter: 10pt,
  figure(image("imagenes/configNB/restablecerEquipo3.png"), caption: [Confirmar configuración.]),
  figure(image("imagenes/configNB/restablecerEquipo4.png"), caption: [Iniciar restablecimiento.])
)

#pagebreak()

// --- FASE 2: OOBE Y CUENTA LOCAL ---
= Fase 2: Configuración Inicial (OOBE) ⚙️

Al iniciar el equipo limpio, configuraremos la región, la red y crearemos el usuario local de administración.

== A. Configuración Regional y Red
1. *Región:* Chile.
2. *Teclado:* Latinoamericano (Omitir segunda distribución).
3. *Red Wi-Fi:* Conéctate a la red de soporte.
   - *SSID:* `ME-GTD`
   - *Contraseña:* `MasErrazuriz9`

#figure(
  image("imagenes/configNB/Multimedia (1).jpg", width: 70%),
  caption: [⚠️ Importante: Cuando pida asignar un nombre al equipo, selecciona *"Omitir por ahora"*. Lo renombraremos después usando el serial.]
)
#pagebreak()
== B. Creación de Usuario Local (Evitar Cuenta Microsoft)
Para evitar vincular el equipo a un correo personal, usaremos el siguiente flujo para forzar la creación de una cuenta local.

1. Selecciona *"Configurar para uso profesional o educativo"*.
2. En inicio de sesión, elige *"Opciones de inicio de sesión"*.
3. Selecciona *"Unirse a un dominio en su lugar"*.

#figure(
  grid(
    // Diseño: 2 columnas arriba, 1 centrada abajo
    columns: (1fr, 1fr), 
    gutter: 15pt,
    row-gutter: 20pt,
    align: top + center,

    // --- PASO 1 (Arriba Izquierda) ---
    stack(
      dir: ttb, spacing: 8pt,
      text(weight: "bold")[1. Selecciona uso profesional],
      image("imagenes/configNB/Multimedia (3).jpg", width: 100%)
    ),

    // --- PASO 2 (Arriba Derecha) ---
    stack(
      dir: ttb, spacing: 8pt,
      text(weight: "bold")[2. Ve a opciones de inicio],
      image("imagenes/configNB/Multimedia (4).jpg", width: 100%)
    ),

    // --- PASO 3 (Abajo, ancho completo) ---
    grid.cell(colspan: 2)[
      #stack(
        dir: ttb, spacing: 8pt,
        text(weight: "bold")[3. Elige "Unirse a un dominio"],
        image("imagenes/configNB/Multimedia (5).jpg", width: 60%) 
      )
    ]
  ),
  caption: [Secuencia para saltar la cuenta Microsoft (Pasos 1, 2 y 3).]
)
#pagebreak()
== C. Credenciales del Equipo
Windows ahora te permitirá crear un usuario "sin conexión". Usa los siguientes datos estandarizados:

#rect(fill: rgb("#e3f2fd"), stroke: 1pt + rgb("#2196f3"), inset: 15pt, radius: 5pt, width: 100%)[
  *Datos de la Cuenta de Soporte:*
  - *Nombre de usuario:* `Soporte`
  - *Contraseña:* `Maer.2026*`
  - *Preguntas de seguridad (todas):* `MAER`
]

#figure(
  image("imagenes/configNB/Multimedia (6).jpg", width: 60%),
  caption: [Ingreso de credenciales locales.]
)

*Finalización:*
Una vez creada la cuenta, el sistema ofrecerá configuraciones de privacidad y servicios adicionales.
- Selecciona *"No"* u *"Omitir"* en todas las ofertas promocionales.
- Acepta los términos y condiciones hasta llegar al Escritorio de Windows.

#pagebreak()

// --- FASE 3: LIMPIEZA Y PREPARACIÓN ---
= Fase 3: Preparación del Entorno
Con el usuario MAER en el escritorio:

1. *⛔ LIMPIEZA CRÍTICA:* Ve a *Aplicaciones instaladas* y desinstala *McAfee / Norton / Avast*.
2. *Nombre del Equipo:* Cambia el nombre a `NB_[Nº Serie]`.
3. *Unión al Dominio:* Une el equipo a `maer.maserrazuriz.cl` con credenciales de `Soporte.local`.

#figure(
  image("imagenes/configNB/config.png", width: 80%),
  caption: [Ruta para poder configurar el nombre del equipo y dominio.]
)
#figure(
  image("imagenes/configNB/config.png", width: 80%),
  caption: [Asignación de nombre y credenciales de dominio.]
)
#figure(
  image("imagenes/configNB/dominio2.png", width: 80%),
  caption: [Asignación de nombre y credenciales de dominio.]
)

#pagebreak()

// --- FASE 4: DRIVERS (LENOVO) ---
= Fase 4: Actualización de Drivers (Lenovo Vantage)
Abre *Lenovo Commercial Vantage* para actualizar el hardware.

#figure(
  grid(
    columns: (1fr, 1fr), gutter: 10pt,
    image("imagenes/configNB/lenovoV-1.png"), 
    image("imagenes/configNB/lenovoV-2.png")
  ),
  caption: [Búsqueda de actualizaciones.]
)

*Obligatorio:* Instala las actualizaciones marcadas como *BIOS* y *Firmware*.

#figure(
  image("imagenes/configNB/lenovoV-4.png", width: 80%),
  caption: [Selección de controladores críticos.]
)

#pagebreak()

// --- FASE 5: SOFTWARE (THOR) ---
= Fase 5: Instalación de Software (Thor)
Instalación automatizada de aplicaciones básicas.

1. Ejecuta `Win + R` y escribe `\\thor`.
2. Ve a `Install > InstaladoresBasicos`.
3. Ejecuta `BASICOS22.bat` como *Administrador*.

#figure(
  grid(
    columns: (1fr, 1fr), gutter: 10pt,
    image("imagenes/configNB/thor.png"), 
    image("imagenes/configNB/installthor2.png")
  ),
  caption: [Acceso al servidor y ejecución del script.]
)

Espera a que la ventana de comandos termine el proceso automáticamente.

#figure(
  image("imagenes/configNB/installthor4.png", width: 80%),
  caption: [Progreso de instalación en CMD.]
)