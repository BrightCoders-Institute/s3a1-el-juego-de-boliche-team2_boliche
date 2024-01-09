![BrightCoders Logo](img/logo.png)

# El juego de boliche

> [Ver instrucciones antes de iniciar](./instructions.md)

This README would normally document whatever steps are necessary to get the application up and running.

Things you may want to cover:

- Title or Project Name
- Table of contents
- Description. A brief description of what the project is about
- How to Install and Run the Project.
- How to Use the Project.
- Credits
- Badges

JuegoBolos Class:

initialize: Inicializa la instancia del juego, y crea una instancia de TableroBolos.
lanzar(pins): Permite realizar lanzamientos en el juego, delegando esta responsabilidad al tablero.
calcular_puntuacion: Calcula la puntuación total del juego, delegando esta responsabilidad al tablero.
mostrar_tablero_grafico: Muestra el tablero gráfico, delegando esta responsabilidad al tablero.


TableroBolos Class:

initialize: Inicializa la instancia del tablero con un array de puntuaciones y un array de lanzamientos.
lanzar(pins): Registra los lanzamientos en el tablero.
calcular_puntuacion: Calcula la puntuación total del juego, teniendo en cuenta las reglas específicas de bolos.
mostrar_tablero_grafico: Muestra el tablero gráfico con la representación visual de las puntuaciones.