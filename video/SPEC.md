# SPEC — Robert De la Cruz · Reel "Cyber Corporate"

GOAL:    En 30 s el espectador sabe quién es Robert, qué hace (sistemas + datos) y se queda con "Transformando datos en decisiones."
OUTPUT:  HyperFrames, 1920 x 1080, 30 fps
TIME:    30 s x 30 = 900 frames. Música: "ice (slowed)", 107.3 BPM, 1 beat = 0.5593 s = 16.8 frames.
         La pista arranca en 1.97 s (data-media-start) → la batería entra en v=7.00 s, el drop de bajo en v=14.83 s.
         Rejilla: beat(n) = 7.00 + 0.5593·n (n negativo en la intro). Cambios de plano en n ≡ 2 (mod 4).

LOOK (pedido explícito del cliente — anula el BANNED por defecto de "vacío oscuro / neón / glass"):
  ground   #04070D, rejilla de 80 px a 4% de opacidad, viñeta 35%
  ink      #E8F3FF (lectura), dim #7C93B5 (secundario)
  accent   azul neón #2F7BFF (estructura, barras) + cian #19E6FF (una palabra/elemento foco por plano)
  glass    paneles rgba(14,26,48,0.62), borde 1 px rgba(120,190,255,0.22), radio 18 px, sombra 0 30px 80px rgba(0,0,0,.55)
  type     display Outfit 800–900, -2% tracking; roles Outfit 600, +12% tracking; código JetBrains Mono 26–30 px
  glow     solo en cian: text-shadow 0 0 24px rgba(25,230,255,.55); nunca en texto largo

OBJECTS: terminal (prompt, líneas de boot), editor de código Python/Pandas y SQL con sintaxis coloreada,
         grafo de pipeline (fuentes → limpieza → validación → warehouse) con pulsos de datos,
         dashboard estilo BI: cabecera con filtros, 4 KPIs, barras, línea, donut.

MOTION:  llegadas expo.out / power4.out; cámara power2.inOut; zoom-through y salidas power3.in.
         Tipeo con ease steps(nº caracteres). Títulos aterrizados quedan quietos.
         Exits 40–50% más cortos que entradas. Stagger palabras 0.07 s, barras 0.05 s.

SHOTS:
  0.00–1.41  Encendido CRT (línea → pantalla) + terminal bootea 3 líneas.
  1.41 (n-10) ROBERT DE LA CRUZ golpea (escala 1.35→1, blur 14→0, letras 0.02 s).
  2.53 (n-8)  INGENIERO DE SISTEMAS: barrido de máscara izquierda→derecha.
  3.64 (n-6)  ANALISTA DE DATOS: palabras con blur-in.
  5.88–7.00  Push-in atravesando el nombre (escala 1→14, power3.in) → destello cian.
  7.00 (n0)   Editor Python/Pandas tipeando rápido, dolly lateral.
  8.12 (n2)   Match cut: mismo marco, ahora SQL. 9.24 (n4) la cámara se abre: 3 paneles en 3D.
  10.36 (n6)  Grafo de pipeline: nodos aparecen, líneas se dibujan, pulsos viajan; contador de filas limpiadas.
  12.59 (n10) Plano amplio 3D: paneles + columnas de números convergen al núcleo.
  14.27–14.83 Implosión al núcleo.
  14.83 (n14) DROP: explosión de dígitos → el dashboard se ensambla desde la profundidad.
  15.95 (n16) Barras crecen; KPIs ruedan.  17.07 (n18) Línea luminosa se dibuja.
  18.19 (n20) Donut se llena. 19.31 (n22) Órbita a primer plano de línea+KPI, resto desenfocado (DOF).
  21.54 (n26) Órbita al otro lado sobre las barras. 22.66 (n28) Pull-back amplio.
  23.55–23.78 Whip pan a la izquierda.
  23.78 (n30) Fondo limpio; "Transformando datos en decisiones." palabra por palabra; destello en "decisiones" (n32).
  26.02 (n34) "Robert De la Cruz — Analista de Datos" + iconos LinkedIn / Email.
  28.70–29.97 Fundido a negro; la música se desvanece en los últimos 2 s.

BANNED:  títulos que se mueven tras aterrizar; todo entrando a la vez; fade+slide-up genérico;
         bordes/esquinas HUD decorativas; logo en una esquina; partículas flotando sin causa.
QA:      1.6 (nombre legible), 4.5 (tres líneas), 6.6 (push-in), 8.5 (SQL), 11.5 (grafo), 13.5 (convergencia),
         15.2 (explosión), 18.5 (dashboard completo), 20.5 (DOF), 24.8 (tagline), 27.5 (cierre), 29.9 (negro).
