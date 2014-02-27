<div class="content-container unit size3of4 lastUnit">
    <article>
        <h1>$Title</h1>
        <div class="content">
            $Content
            $form
        </div>

    </article>


</div>
<h2>Map and directions</h2>

<a href="https://maps.google.com/maps?q=31+Union+St,+London+SE1+1SD,+UK&hl=en&sll=51.503681,-0.091994&sspn=0.003059,0.008256&hnear=31+Union+St,+London+SE1+1SD,+United+Kingdom&t=m&z=16">
    <div class="directions-button">Get directions</div>
</a>

<div id="map-canvas" style="width: 100%; min-height: 400px; border:1px solid #999;"/></div>

<script type="text/javascript">

// Google Map
    function initialize() {

        var bnLatLng = new google.maps.LatLng(51.50358,-0.093352);

        var MY_MAPTYPE_ID = 'custom_style';

        var featureOpts = [
            {
                stylers: [
                    {hue: '#E30D32'},
                    {gamma: 1},
                    {weight: 2}
                ]
            },
            {
                elementType: 'labels',
                stylers: [
                    {visibility: 'On'}
                ]
            },
            {
                featureType: 'water',
                stylers: [
                    {color: '#E30D32'},
                    {gamma: 8}
                ]
            }
        ];

        var mapOptions = {
            zoom: 16,
            center: bnLatLng,
            mapTypeControlOptions: {
                mapTypeIds: [google.maps.MapTypeId.ROADMAP, MY_MAPTYPE_ID]
            },
            mapTypeId: MY_MAPTYPE_ID
        };

        var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

        var styledMapOptions = {
            name: 'Custom Style'
        };

        var marker = new google.maps.Marker({
            position: bnLatLng,
            map: map,
            title: 'Luciepersonaltraining',
            icon: '/themes/simple/images/marker.png'

        });
        var bnDirections = '<div id="content">' +
                '<div id="siteNotice">' +
                '</div>' +
                '<div id="bodyContent">' +
                '<b>Lucie Personal Training</b><br />' +
                '@ Somewhere<br />' +
                '7 Park Crescent<br />' +
                'London W1B 1PF<br /><br />' +
                '</div>' +
                '</div>';

        var customMapType = new google.maps.StyledMapType(featureOpts, styledMapOptions);
        map.mapTypes.set(MY_MAPTYPE_ID, customMapType);

        var infowindow = new google.maps.InfoWindow({
            content: bnDirections
        });

        google.maps.event.addListener(marker, 'click', function() {
            infowindow.open(map, marker);
        });

        google.maps.event.addDomListener(window, 'resize', function() {
            map.setCenter(bnLatLng);
        });

    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>