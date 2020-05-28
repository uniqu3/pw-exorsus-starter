/* eslint-disable no-console */
/*global google*/
/*eslint no-undef: "error"*/
/**
 * @function    createMap
 * @description Loads google map for  a given selector
 * @requires    load-google-maps-api
 * @returns     {Function}   calculateAndDisplayRoute
 *              @description Method to calculate and display a route for the given google map object
 *              {Function}   searchLocations
 *              @description Method to search for loactions from a given location
 *              {Function}   searchNearBy
 *              @description Method to search nearby locations from a given data object
 *
 * Google Map plugin
 *
 * Tapio Löytty, <tapsa@orange-media.fi>
 * Web: www.orange-media.fi
 * Goran Ilic, <ja@ich-mach-das.at>
 * Web: www.ich-mach-das.at
 */

import loadGoogleMapsApi from 'load-google-maps-api';

export default function plugin(API) {
    const apiKey = API.config().google.maps.api_key;

    //=============================================================
    // Load Google Maps via google API
    //=============================================================

    const mapAPI = callback => {
        loadGoogleMapsApi({ key: apiKey })
            .then(callback)
            .catch(function(error) {
                console.error(error);
            });
    };

    //=============================================================
    // Factory
    //=============================================================

    const createMap = (selector, callback, settings) => {
        /**
         * Private
         * @type {Array}
         */
        let markers = [],
            icons = [],
            map = {},
            bounds = {},
            directionsService = {},
            directionsDisplay = {},
            geocoder = {},
            $canvas = selector;

        /**
         * Constructor
         * @return {[type]} [description]
         */
        mapAPI(function() {
            let mapOptions = {
                minZoom: 3,
                maxZoom: 20,
                panControl: false,
                scrollwheel: false,
                scaleControl: true,
                streetViewControl: false,
                draggable: true,
                backgroundColor: 'none',
                mapTypeControl: false,
                mapTypeControlOptions: {
                    style: google.maps.MapTypeControlStyle.DROPDOWN_MENU,
                },
                navigationControl: false,
                navigationControlOptions: {
                    style: google.maps.NavigationControlStyle.SMALL,
                },
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                zoomControl: true,
                zoomControlOptions: {
                    position: google.maps.ControlPosition.RIGHT_CENTER,
                },
            };

            // Merge settings
            mapOptions = Object.assign({}, mapOptions, settings);

            // Init map
            map = new google.maps.Map($canvas, mapOptions);

            // Init Bounds
            bounds = new google.maps.LatLngBounds();

            // Geocoder
            geocoder = new google.maps.Geocoder();

            directionsService = new google.maps.DirectionsService();
            directionsDisplay = new google.maps.DirectionsRenderer({
                map: map,
            });

            // Run callback function
            if (typeof callback === 'function') {
                callback(map);
            }
        });

        return {
            // Route Display
            calculateAndDisplayRoute: function() {
                let start = document.getElementById('start').value,
                    end = document.getElementById('end').value,
                    request = {
                        origin: start,
                        destination: end,
                        travelMode: google.maps.TravelMode.DRIVING,
                    };

                directionsService.route(request, function(response, status) {
                    if (status == google.maps.DirectionsStatus.OK) {
                        directionsDisplay.setDirections(response);
                    }
                });
            },
            // Locations search
            searchLocations: function(location, callback) {
                let search;

                geocoder.geocode(
                    {
                        address: location,
                        region: 'EU',
                    },
                    function(results, status) {
                        if (status == google.maps.GeocoderStatus.OK) {
                            search = results[0].geometry.location;
                        } else {
                            search = 'Unknown';
                        }

                        callback(search);
                    }
                );
            },
            searchNearBy: function(center, radius, data) {
                this.clearMarkers();
                // reset bounds
                let bounds = new google.maps.LatLngBounds();

                let distance,
                    lat,
                    lng,
                    title,
                    phone,
                    email,
                    url,
                    address,
                    message;

                for (let key in data) {
                    if (data.hasOwnProperty(key)) {
                        lat = data[key]['settings_location']['lat'];
                        lng = data[key]['settings_location']['lng'];
                        title = data[key]['title'];
                        phone = data[key]['settings_phone'];
                        email = data[key]['settings_email'];
                        url = data[key]['external_url'];
                        address = data[key]['settings_location']['address'];

                        // Set Infowindow
                        message = `<strong>${title[0]}</strong><br />`;
                        message += `${address}<br />`;
                        message += phone[0] !== '' ? `${phone[0]}<br />` : '';
                        message += email[0] !== '' ? `${email[0]}<br />` : '';
                        message +=
                            url !== ''
                                ? `<a href="${url}" target="_blank">${url}</a>`
                                : '';

                        // location
                        let latlng = new google.maps.LatLng(
                            parseFloat(lat),
                            parseFloat(lng)
                        );

                        // calculate distance
                        distance = google.maps.geometry.spherical.computeDistanceBetween(
                            center,
                            latlng
                        );

                        // create markers matching distance and radius
                        if (distance <= parseFloat(radius * 1000)) {
                            this.createMarker(lat, lng, message);
                            bounds.extend(latlng);

                            map.fitBounds(bounds);
                            map.panToBounds(bounds);
                        }
                    }
                }
            },
            clearMarkers: function() {
                for (let i = 0; i < markers.length; i++) {
                    markers[i].setMap(null);
                }
                markers = [];
            },
            createMarker: function(lat, lng, message) {
                let location = new google.maps.LatLng(lat, lng);
                let marker = new google.maps.Marker({
                    map: map,
                    position: location,
                });

                marker.info = new google.maps.InfoWindow({
                    content: message,
                });

                marker.addListener('click', function() {
                    map.setCenter(marker.position);
                    this.info.open(map, marker);
                });

                marker.bounds = new google.maps.LatLngBounds();
                marker.bounds.extend(location);

                bounds.extend(location);
                this.fitBounds();

                marker.setMap(map);
                markers.push(marker);

                return marker;
            },
            // Default
            addMarker: function(lat, lng, zoom, message) {
                const _this = this;

                let image = {
                    url:
                        API.options.rootUrl +
                        '/site/templates/assets/icons/icon.png',
                    size: new google.maps.Size(40, 17),
                    origin: new google.maps.Point(0, 0),
                    anchor: new google.maps.Point(16, 32),
                };

                let location = new google.maps.LatLng(lat, lng);

                let marker = new google.maps.Marker({
                    //icon: image,
                    position: location,
                });

                marker.info = new google.maps.InfoWindow({
                    content: message,
                });

                marker.addListener('click', function() {
                    map.setCenter(marker.position);
                    marker.info.open(map, marker);
                });

                //marker.info.open(map, marker);

                marker.bounds = new google.maps.LatLngBounds();
                marker.bounds.extend(location);

                bounds.extend(location);
                this.fitBounds();
                _this.setZoom(zoom);

                marker.setMap(map);
                markers.push(marker);

                return marker;
            },
            fitBounds: function(b) {
                if (typeof b == 'undefined') map.fitBounds(bounds);
                // Use local bounds
                else map.fitBounds(b);
            },
            setZoom: function(value) {
                google.maps.event.addListenerOnce(
                    map,
                    'bounds_changed',
                    function() {
                        map.setZoom(value);
                        //map.panBy(-250, 0);
                    }
                );
            },
            getMap: function() {
                return map;
            },
            getMarkers: function() {
                return markers;
            },
            getCanvas: function() {
                return $canvas;
            },
        };
    };

    //=============================================================
    // Public API
    //=============================================================

    API.initMap = (selector, callback) => {
        let view = document.querySelectorAll(selector);

        if (!view.length) return;

        let mapOptions = {
            disableDefaultUI: false,
            scrollwheel: false,
        };

        view.forEach(canvas => {
            let mapObject = createMap(
                canvas,
                function() {
                    if (typeof callback === 'function') callback(mapObject);

                    canvas.loaded = true;
                },
                mapOptions
            );
        });
    };
}
