'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "2e03ba8f575e38ec4d2588f9995183d8",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/images/github.png": "0ba2aa20e2c2ce80e9a2db5b07198464",
"assets/images/mine.jpg": "34e36684b9ffcbd542abdd4494c11f88",
"assets/images/puppy.jpg": "db9bd63e1c36581efe3baf9cb37fe9a6",
"assets/LICENSE": "59844a026d05c04ff832a90250bb1baa",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "947d283f93ba44934debccea167c0e78",
"/": "947d283f93ba44934debccea167c0e78",
"main.dart.js": "b456c15a657d14dd1f2dcaea891f95fc",
"manifest.json": "43b77533487762ba5654a181ea2dec2f"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
