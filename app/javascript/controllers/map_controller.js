import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

export default class extends Controller {
  static targets = ["mapPartial"]
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    console.log(this.element);
  }
  loadMap() {
    console.log(this.element);
    console.log(this.mapPartialTarget);
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })
    this.addMarkersToMap();
    this.fitMapToMarkers();
  }

  showMap() {
    this.mapPartialTarget.classList.remove('d-none');
    this.loadMap();
  }

  addMarkersToMap() {
    this.markersValue.forEach((markerData) => {
      new mapboxgl.Marker()
        .setLngLat([ markerData.lng, markerData.lat ])
        .addTo(this.map)
    })
  }

  createMarker(markerData) {
    let element = document.createElement('div');
    new mapboxgl.Marker(element)
      .setLngLat([ markerData.lng, markerData.lat ])
      .addTo(this.map)
  }

  fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
