# Mapa Interactivo con Leaflet

Este proyecto utiliza el paquete `leaflet` en R para crear un mapa interactivo que muestra múltiples marcadores en ubicaciones específicas. El objetivo es visualizar puntos de interés con información relevante.

## Descripción del Código

El código realiza las siguientes tareas:

1. **Carga de Bibliotecas**: Se importan las bibliotecas necesarias para crear mapas interactivos (`leaflet`) y manejar HTML (`htmltools`).

2. **Creación de Mapas**: 
   - Se crean varios mapas utilizando diferentes proveedores de tiles (OpenStreetMap y Esri World Imagery).
   - Se establece una vista centrada en coordenadas específicas con un nivel de zoom definido.

3. **Añadir Marcadores**: 
   - Se añaden múltiples marcadores en ubicaciones predefinidas, cada uno con etiquetas que muestran el nombre del lugar.

4. **Visualización de Datos desde un CSV**: 
   - Se simula la carga de un archivo CSV que contiene nombres y coordenadas de diferentes lugares.
   - Se crea un mapa utilizando estos datos y se añaden marcadores de manera automática.

5. **Añadir Cuadrícula**: Se incluye una cuadrícula simple para facilitar la visualización de las ubicaciones en el mapa.

## Requisitos

- R (versión 4.0 o superior)
- RStudio (opcional, pero recomendado)
- Paquete `leaflet`
- Paquete `htmltools`

## Instalación

1. Clona este repositorio en tu máquina local.
2. Abre R o RStudio.
3. Instala las bibliotecas necesarias si aún no lo has hecho:
   ```r
   install.packages("leaflet")
   install.packages("htmltools")
   ```
4. Ejecuta el código en el archivo.

## Resultados
El código generará un mapa interactivo que muestra los puntos de interés con sus respectivas etiquetas. Podrás hacer clic en los marcadores para obtener más información.

## Contribuciones
Si deseas contribuir a este proyecto, siéntete libre de hacer un fork del repositorio y enviar pull requests con mejoras o nuevas funcionalidades.

## Referencias
- [`leaflet` R package](https://cran.r-project.org/web/packages/leaflet/index.html)
- [`htmltools` R package](https://cran.r-project.org/web/packages/htmltools/index.html)
- [OpenStreetMap](https://www.openstreetmap.org)
- [Esri World Imagery](https://www.esri.com/en-us/home)
- [Diseño de los Senderos Interpretativos del Bosque en el Campus Dr. Víctor Levi Sasso, Universidad Tecnológica de Panamá](https://ridda2.utp.ac.pa/handle/123456789/17358)
