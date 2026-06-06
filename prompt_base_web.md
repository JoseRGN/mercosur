# Prompt Base para Desarrollo Web Premium

Este documento contiene un *prompt* maestro (instrucción base) que puedes utilizar con cualquier Inteligencia Artificial (como yo) para asegurar que el desarrollo de tus futuras páginas web mantenga un alto estándar de calidad, diseño y estructura.

---

## 📋 Copia y pega el siguiente texto:

```text
Actúa como un Desarrollador Web Frontend Senior y Diseñador UI/UX experto. Tu objetivo es desarrollar una página web / Landing Page con un diseño premium, moderno y altamente persuasivo para [INSERTA AQUÍ EL TEMA O NOMBRE DE TU NEGOCIO/PROYECTO].

### 🛠️ Stack Tecnológico
* **Estructura:** HTML5 Semántico.
* **Estilos:** CSS3 (Vanilla). Debe estar separado en un archivo `style.css`.
* **Interactividad:** JavaScript (Vanilla). Debe estar separado en un archivo `script.js` (si se requiere).
* NO uses frameworks (como Tailwind o Bootstrap) a menos que te lo pida explícitamente.

### 🎨 Principios de Diseño (UI/UX)
* **Estética Premium:** Utiliza un diseño de nivel empresarial que cause un efecto "WOW" al instante, evitando diseños genéricos o aburridos.
* **Colores y Tipografía:** Selecciona una paleta de colores armoniosa que transmita profesionalismo. Usa fuentes modernas de Google Fonts (ej. Inter, Roboto, Outfit, o Poppins).
* **Efectos Modernos:** Incorpora diseño *Glassmorphism* (efecto cristal/fondos difuminados), sombras suaves para dar profundidad, y gradientes elegantes donde sea apropiado.
* **Dinamismo:** Agrega micro-interacciones. Todos los botones y enlaces deben tener efectos *hover* suaves. Añade transiciones CSS agradables para mejorar la experiencia de usuario.
* **Responsividad:** El diseño debe ser 100% *Mobile-First*, asegurando que la alineación, los márgenes y la estructura se vean perfectos tanto en dispositivos móviles, como en tablets y pantallas grandes.

### 📐 Secciones Requeridas
1. **Navegación (Header):**
   * Menú *sticky* (fijo en la parte superior) transparente que cambie de fondo o agregue sombra al hacer scroll.
   * Menú claro, con un botón de menú hamburguesa completamente funcional para la versión móvil.
2. **Sección Hero (Principal):**
   * Debe ser de alto impacto visual (ej. imagen de fondo a pantalla completa, o un diseño oscuro elegante).
   * Título principal (H1) persuasivo, un subtítulo descriptivo, y un botón de "Llamada a la Acción" (CTA) prominente que, al hacer clic, lleve mediante scroll suave a la sección principal de conversión (ej. formulario o productos).
3. **Sección de Contenido / Productos / Servicios:**
   * Diseño basado en tarjetas (cards) limpias con iconos o imágenes.
   * [OPCIONAL] Incluir un carrusel o slider interactivo de imágenes si hay galería de productos.
4. **Formulario de Contacto / Conversión:**
   * Un formulario estilizado, moderno y fácil de usar (campos amplios, bordes redondeados, botón destacado).
5. **Footer (Pie de página):**
   * Diseño limpio con enlaces útiles, redes sociales, información de contacto y derechos de autor.

### ⚙️ Requisitos Técnicos y SEO
* **SEO On-Page:** Incluye meta etiquetas esenciales (`title`, `description`, `charset UTF-8`, `viewport`). Usa una jerarquía de encabezados lógica y estricta (solo un H1 por página, seguido de H2, H3).
* **Código Limpio:** Agrupa las variables CSS (colores, fuentes) en `:root` al inicio de la hoja de estilos. No uses estilos en línea (`style="..."`) en el HTML.
* **Imágenes:** Usa marcadores de posición (`<img src="https://via.placeholder.com/..." alt="...">`) pero asegúrate de incluir textos descriptivos en el atributo `alt` para SEO y accesibilidad.

**Por favor, comienza generando la estructura base en HTML, el archivo CSS inicial con las variables de diseño. Confirma si necesitas más contexto sobre el contenido específico antes de continuar.**
```

---

## 💡 Consejos adicionales para usar este Prompt:

1. **Personalización:** No olvides reemplazar el texto entre corchetes `[INSERTA AQUÍ...]` por los detalles de tu nuevo proyecto (ej. "una clínica dental", "una agencia de marketing", "una tienda online de ropa").
2. **Secciones Adicionales:** Si tu proyecto necesita secciones como "Testimonios", "Preguntas Frecuentes (FAQ)", o "Tabla de Precios", simplemente añádelo en la lista de "Secciones Requeridas" del prompt.
3. **Iteración:** Las Inteligencias Artificiales trabajan mejor por pasos. Una vez que te dé el código base inicial, pruébalo y pídele ajustes específicos como:
   * *"Haz los botones más grandes y redondeados."*
   * *"Cambia la paleta de colores para que use tonos azul marino y dorado."*
   * *"Agrega una animación de entrada (fade-in) a las tarjetas de servicio."*
