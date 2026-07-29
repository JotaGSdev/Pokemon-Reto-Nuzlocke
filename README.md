# Pokémon Nuzlocke Challenge

<div align="center">

![Pokémon Nuzlocke Banner](https://img.shields.io/badge/Pokémon-Rojo%20Fuego%20Nuzlocke-d32f2f?style=for-the-badge&logo=pokemon&logoColor=white)
![Status](https://img.shields.io/badge/Status-Online-brightgreen?style=for-the-badge)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![PokéAPI](https://img.shields.io/badge/PokéAPI-v2-FFCB05?style=for-the-badge&logo=pokemon&logoColor=blue)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

<p align="center">
  <b>Una experiencia web interactiva, adictiva y táctica estilo GBA retro para revivir el clásico desafío Pokémon Nuzlocke en Kanto.</b><br>
  <i>Juega directamente en tu navegador, sin emuladores, sin descargas.</i>
</p>

### 🎮 [¡JUEGA AHORA EN LÍNEA!](https://jotagsdev.github.io/Pokemon-Reto-Nuzlocke/)

</div>

---

## 🌟 Destacados del Juego

- 🏅 **Medallas Oficiales de PokéAPI**: Visualiza las 8 medallas auténticas de Kanto (Roca, Cascada, Trueno, Arcoíris, Alma, Pantano, Volcán y Tierra) que se iluminan al derrotar a cada Líder de Gimnasio.
- 🏷️ **Cápsulas de Tipo Estilo GBA**: Badges de tipo auténticos (`FUEGO`, `AGUA`, `PLANTA`, `ELÉCTRICO`, `HIELO`, etc.) con degradados brillantes, bordes retro y tipografía pixel-art.
- ⚔️ **Calculadora de Daño y Porcentajes en Vivo**: Previsualiza la efectividad elemental (`Super Eficaz x1.6`, `Poco Eficaz x0.6`) y la probabilidad exacta de victoria antes de cada ataque.
- ✨ **Sprites Shinies Auténticos & Sin Filtros Artificiales**: Sprites 100% limpios extraídos directamente de PokéAPI, con la estrella de distinción `✨` en el nombre y en la caja del PC.
- 👑 **Hall of Fame & Cementerio de Caídos**: Pantalla de resumen final con el equipo Campeón en el Salón de la Fama o las tarjetas conmemorativas de los últimos 6 héroes caídos.
- 🎵 **Motor de Audio Chiptune 8-Bit**: Música de combate y efectos de sonido (SFX) sintetizados en tiempo real mediante Web Audio API.

---

## 📜 Reglas Nuzlocke Implementadas

| Regla | Descripción |
| :--- | :--- |
| 💀 **Muerte Permanente** | Si un Pokémon llega a 0 HP en combate, perece permanentemente y es enviado al **Cementerio**. |
| 📍 **Primer Encuentro por Ruta** | Solo puedes capturar el primer Pokémon que aparezca en cada ruta o zona de Kanto. |
| 🏷️ **Mote Obligatorio** | Es obligatorio asignar un apodo a cada compañero capturado. |
| 🔄 **Cláusula de Duplicados** | Si ya posees la especie en tu equipo o PC, el juego re-sortea automáticamente el encuentro. |
| ✨ **Cláusula Shiny** | Los Pokémon Shiny ignoran la restricción de ruta y siempre se pueden capturar. |
| 🦕 **Captura de Legendarios** | Tras vencer a un Legendario (Articuno, Zapdos, Moltres, Mewtwo), tienes la oportunidad de capturarlo. |
| 🧢 **Level Caps Equilibrados** | El nivel de los Pokémon salvajes y entrenadores se ajusta al límite de cada gimnasio. |

---

## 🕹️ Mecánicas de Juego

1. **Configuración de Partida**: Elige tu nombre, el nombre de tu rival y tu Pokémon Inicial de Kanto (**Bulbasaur**, **Charmander**, **Squirtle**, **Pikachu** o **Eevee**).
2. **Navegación por Rutas y Gimnasios**: Atraviesa Kanto en orden de la historia original hasta la Liga Pokémon.
3. **Combates Tácticos**: Evalúa los tipos de tu Pokémon frente al rival y presiona **Atacar** aprovechando las ventajas de tipo.
4. **Sistema de Almacenamiento PC**: Organiza tu equipo activo de 6 integrantes e intercambia Pokémon desde las Cajas.
5. **Encuentros con el Alto Mando**: Enfréntate a Lorelei, Bruno, Agatha, Lance y a tu Rival por el título de Campeón de Kanto.

---

## 🛠️ Tecnologías

- **HTML5 & CSS3 Vanilla**: Interfaz responsiva con componentes estilizados retro, sombras 3D y layout inspirado en la consola Game Boy Advance.
- **JavaScript ES6+**: Motor de juego modular orientada a objetos con control de estado, combate, probabilidades y gestión de inventario/PC.
- **PokéAPI v2**: Consumo dinámico de sprites animados (GIFs), tipos elementales, estadísticas base y medallas oficiales.
- **Web Audio API**: Generación sintética de ondas cuadradas y triangulares para la banda sonora chiptune de 8 bits.

---

## 👤 Autor & Licencia

Desarrollado con pasión por **[JotaGSdev](https://github.com/JotaGSdev)**.

- **Pokémon** y sus marcas registradas pertenecen a *Nintendo*, *Creatures* y *Game Freak*.
- Sprites y datos otorgados por la comunidad de **[PokéAPI](https://pokeapi.co/)**.
- Este proyecto es de código abierto bajo la licencia [MIT](LICENSE).
