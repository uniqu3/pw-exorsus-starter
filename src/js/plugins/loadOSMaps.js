import L from 'leaflet';

export default function plugin(API) {
    API.loadOSMap = () => {
        let map = {};

        return {
            createMap: (selector, options) => {
                let mapOptions = {
                    scrollWheelZoom: false,
                    zoom: 15,
                };

                mapOptions = Object.assign({}, mapOptions, options);
                map = new L.map(selector, mapOptions);

                L.tileLayer(
                    'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                    {
                        attribution:
                            '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
                    }
                ).addTo(map);

                //map.setView(markersLayer.getBounds().getCenter())
            },

            createMarker: function(lat, lng, info) {
                let marker = new L.marker([lat, lng]);

                marker.bindPopup(info);
                marker.addTo(map);

                return marker;
            },
            addMarkers: function(markers) {
                let bounds = new L.latLngBounds();

                markers.forEach(marker => {
                    this.createMarker(marker.lat, marker.lng, marker.info);
                    bounds.extend([marker.lat, marker.lng]);
                });
                map.fitBounds(bounds);
            },
        };
    };
}
