# REVIEW — Robert De la Cruz · Reel 30 s

## Decisiones creativas (v2 — música "Like That", guitar remix slowed + reverb)
- **Sincronía musical:** ~68.6 BPM (beat = 0.875 s, caja cada 1.75 s). La pista arranca en 89.545 s (`data-media-start`):
  el corte de bajo de la canción cae en v=11.45 (convergencia/implosión) y el drop en **0:14.83** (explosión → dashboard).
  Rejilla: `beat(n) = 14.83 + 0.875·n`. Escenas: intro 0–6.955, motor 6.955–14.83, dashboard 14.83–23.58, cierre 23.58–30.
- Intro: nombre en la caja de 1.705 s, roles en 2.58 y 3.455 s; push-in de 6.08 a 6.955 (caja).
- Motor: Python 6.955, corte a SQL 8.705, apertura 3D 9.58, pipeline 11.33, convergencia 13.08, drop 14.83.
- Dashboard: barras 15.705, línea 17.455, donut 18.33, DOF 19.205, órbita 20.955, pull-back 21.83, whip 23.25–23.58.
- Cierre: tagline 24.455, destello 25.33, firma 26.205, iconos 27.08, negro total 29.95; música fade-out 2 s.
- **Efectos (25, librería incluida de Pixabay, sin atribución obligatoria):** ping al encender, tecleo en terminal/código,
  golpe de bajo en el nombre y en el drop, whooshes en cortes/órbitas/whip, whoosh cinemático en el push-in, glitch al
  entrar al sistema, riser durante el corte de bajo que termina justo en el drop, pops en nodos/barras/iconos, ping en
  warehouse y donut, sparkle en la línea y en "decisiones.", click en el tooltip. Cada pico cae 1 frame después de su imagen.
- El estilo (modo oscuro, neón, glass, KPIs) lo pidió el cliente, así que anula los "BANNED por defecto" del skill.

## Medido vs. visto
- `hyperframes check`: 0 errores. Revisados los frames de cada beat, los tres cortes (6.8–7.2, 14.63–15.03, 23.58–23.98) y la vista de teléfono.
- El audio se **midió** (BPM, caja, banda de graves para el corte y el drop; mezcla final −10.3 LUFS, pico −1.1 dBTP, sin clipping; salto de 72→83 dB en el drop), no se escuchó.

## Advertencias mantenidas a propósito
- `first_frame_empty`: el frame 0 es negro porque el video empieza con un encendido de pantalla (pedido en el guion).
- `text_below_floor`: chips del encabezado y subtítulos de nodos quedan < 28 px por la perspectiva 3D; son textura, no lectura principal.
- `gsap_callback_dom_measurement`: los `onUpdate` solo escriben `textContent` de contadores (no miden layout).

## Datos de ejemplo (reemplazar)
- KPIs y gráficos (2.4M registros, 99.2 %, −72 %, +34 %, ventas Ene–Ago, 98 %) son **ilustrativos**.
- Los textos de contacto son "LinkedIn" / "Email": cambiar por el usuario real y correo en `compositions/outro.html`.

## Plano más débil / con más tiempo
- S1 (Python, 1.1 s) es muy corto para leer el código: funciona como ritmo, no como lectura.
- La mezcla está a −10.3 LUFS (fuerte, como la canción); para redes conviene −14 LUFS.
