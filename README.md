# 🔴 Pokémon Rojo Fuego - Nuzlocke Kanto Edition 🐉

![Pokémon Nuzlocke Banner](https://img.shields.io/badge/Pokémon-Rojo%20Fuego%20Nuzlocke-d32f2f?style=for-the-badge&logo=pokemon)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![PokéAPI](https://img.shields.io/badge/PokéAPI-v2-FFCB05?style=for-the-badge&logo=pokemon&logoColor=blue)

Una experiencia web interactiva estilo **GBA retro** para jugar el desafío clásico **Pokémon Nuzlocke en Kanto**, directamente en tu navegador sin descargas ni emuladores.

---

## 🎮 ¡JUEGA AHORA EN LÍNEA!

Puedes jugar directamente desde tu navegador haciendo clic en el siguiente enlace:

### 🚀 [https://jotagsdev.github.io/Pokemon-Reto-Nuzlocke/](https://jotagsdev.github.io/Pokemon-Reto-Nuzlocke/)

---

## 📜 Reglas Nuzlocke Implementadas

1. **Muerte Permanente (Permadeath)** 💀: Si un Pokémon llega a 0 HP en combate, se considera "muerto" y es enviado permanentemente al **Cementerio de Héroes Caídos**.
2. **Primer Pokémon por Ruta** 📍: Solo puedes capturar el primer Pokémon que aparezca en cada zona o ruta única.
3. **Mote Obligatorio** 🏷️: Es obligatorio asignar un mote a cada Pokémon capturado para crear un vínculo afectivo.
4. **Cláusula de Duplicados (Dupes Clause)** 🔄: Si ya has capturado a esa especie previamente, el juego re-sortea automáticamente tu encuentro en la ruta.
5. **Cláusula Shiny** ✨: ¡Los Pokémon Shiny ignoran la restricción de ruta y siempre se pueden capturar!
6. **Level Caps por Medalla** 🧢: Los niveles de tu equipo se nivelan al límite (LevelCap) de cada líder de gimnasio para garantizar un reto equilibrado.

---

## ✨ Características Principales

- 🎨 **Sprites Animados & Shinies Auténticos**: Integración directa con **PokéAPI v2**, mostrando sprites oficiales animados (GIFs) y colores shiny reales.
- 🔊 **Motor de Audio Chiptune 8-bit**: Efectos de sonido (SFX) y música de fondo (BGM) sintetizados en tiempo real mediante **Web Audio API** sin archivos de audio externos.
- 🪦 **Cementerio de Héroes Caídos**: Modal dedicado para rendir homenaje a los Pokémon que perecieron durante la aventura.
- 💻 **Sistema de Almacenamiento PC**: Gestiona tu equipo activo (máximo 6 Pokémon) y deposita/retira Pokémon de las cajas del PC.
- ⚔️ **Calculadora de Daño y Tipos**: Sistema de combate que evalúa efectividades elementales (Agua > Fuego, Planta > Agua, etc.) y ventajas de nivel.
- 🏆 **Progreso Completo por Kanto**: Desde Pueblo Paleta hasta el Alto Mando y el Campeón final en el Salón de la Fama.

---

## 🛠️ Tecnologías Utilizadas

- **HTML5 & CSS3 Vanilla**: Interfaz responsiva inspirada en la consola Game Boy Advance con estética retro pixel-art.
- **JavaScript ES6+**: Lógica de juego orientada a objetos, estado de la partida y control de eventos.
- **PokéAPI v2**: Consumo dinámico de stats, tipos, evoluciones y sprites animados.
- **Web Audio API**: Generación sintética de ondas cuadradas/triangulares para chiptune retro.

---

## 👥 Créditos & Agradecimientos

- **Pokémon** es una marca registrada de Nintendo, Game Freak y Creatures.
- Sprites y datos del juego provienen de la increíble comunidad de [PokéAPI](https://pokeapi.co/).
- Desarrollado con pasión por [JotaGSdev](https://github.com/JotaGSdev).
