# Ejemplo marcador


library(leaflet)
library(htmltools)

m <- leaflet() %>%
  addTiles() %>%  # Añade por defecto los Tiles de  OpenStreetMap
  addMarkers(lng=-79.532722, lat=9.022963, popup="UTP")
m  # Imprime el mapa



m <- leaflet() %>%
  addProviderTiles(providers$Esri.WorldImagery)%>%  
  addMarkers(lng=-79.532722, lat=9.022963, popup="UTP")
m  # Imprime el mapa

m <- leaflet()%>% 
    addProviderTiles(providers$Esri.WorldImagery) %>% 
    setView(lng = -79.532722, lat = 9.022963, zoom = 16)
m %>% addTiles()


m <- leaflet()%>% 
    setView(lng = -79.532722, lat = 9.022963, zoom = 16)
m %>% 
    addTiles() %>%
    addMarkers(
        lng = -79.532712, lat = 9.024245,
        label = "El Cuipo",
        labelOptions = labelOptions(noHide = T))%>%
    addMarkers(
        lng = -79.533699, lat = 9.027096,
        label = "El Perezoso",
        labelOptions = labelOptions(noHide = T))%>%
    addMarkers(
        lng = -79.535211, lat = 9.026301,
        label = "El Carricillo",
        labelOptions = labelOptions(noHide = T))%>%
    addMarkers(
        lng = -79.536445, lat = 9.024998,
        label = "La Molienda Indígena",
        labelOptions = labelOptions(noHide = T))%>%
    addMarkers(
        lng = -79.537110, lat = 9.022688,
        label = "El Mono Tití",
        labelOptions = labelOptions(noHide = T))%>%
    addMarkers(
        lng = -79.532658, lat = 9.022910,
        label = "El Aljibe",
        labelOptions = labelOptions(noHide = T))%>%
    addMarkers(
        lng = -79.542641, lat = 9.026195,
        label = "La Palangana",
        labelOptions = labelOptions(noHide = T, direction = "bottom"))

# Ejemplo mapas base
library(leaflet)
m <- leaflet() %>% setView(lng = -79.532722, lat = 9.022963, zoom = 16)
m %>% addProviderTiles(providers$Stamen.Toner)


library(htmltools)

df <- read.csv(textConnection(
"Name,Lat,Long
El Cuipo,9.024245,-79.532712
El Perezoso,9.027096,-79.533699
La Molienda Ind?gena,9.026301,-79.535211
El Carricillo,9.024998,-79.536445
El Jaguar negro,9.022688,-79.537110"
))

leaflet(df) %>% addTiles() %>%
  addMarkers(~Long, ~Lat, label = ~htmlEscape(Name)) %>%
  addSimpleGraticule(
    showOriginLabel = F,
    hidden = F,
    zoomIntervals = list(
      list(start = 0, end = 20, interval = 0.005)))

