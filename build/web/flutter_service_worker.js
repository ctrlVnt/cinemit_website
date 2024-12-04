'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "73a409cc7d6dfa6dc52427824962cc2c",
"assets/AssetManifest.bin.json": "e6e4ef5022ed397083ef863bb7a75da1",
"assets/AssetManifest.json": "a7776cf87d88ca3ab435be22b04ef257",
"assets/assets/BackgroundCineMit.png": "537e2603d2c5504697d288bcf5f0ef33",
"assets/FontManifest.json": "40bcd1d70c88f2ea07c9260bb9072fba",
"assets/fonts/MaterialIcons-Regular.otf": "e882d67526a1b2f74f8339a54a657e23",
"assets/lib/assets/demo/Demo0.png": "bf9b5844e635a947ca36f0ad45ba1671",
"assets/lib/assets/demo/Demo1.png": "9a24f0c993d06253f868be34199e649d",
"assets/lib/assets/demo/Demo2.png": "ff7d540b45b1f30ac2ef98d43e44b051",
"assets/lib/assets/demo/Demo3.png": "bebdc8fa380017052cb1c5a2e4a7a9ce",
"assets/lib/assets/demo/Demo4.png": "d942cd199472b681611e9bc569dc5bf1",
"assets/lib/assets/demo/Demo5.png": "e0ceb0f2e4e6a475626ce62ec7004e38",
"assets/lib/assets/fonts/Futura/Futura-Bold.ttf": "4c62644b159530ff6214336f8cfb1d32",
"assets/lib/assets/fonts/Futura/futura-medium.ttf": "ee64fb9d3f1ba2333e1b489283925bce",
"assets/lib/assets/fonts/Open%2520Sans/OpenSans-Bold.ttf": "0a191f83602623628320f3d3c667a276",
"assets/lib/assets/fonts/Open%2520Sans/OpenSans-Regular.ttf": "931aebd37b54b3e5df2fedfce1432d52",
"assets/lib/assets/gif/create.gif": "f7ac1bce67ad47dbe602b097936bc8bb",
"assets/lib/assets/gif/filter.gif": "c40379f677d70978ba1b930188258fa6",
"assets/lib/assets/gif/home.gif": "9f9206029614e14b0bca9872671f78a1",
"assets/lib/assets/gif/map.gif": "74ab25927b177782de0ac9af996be44b",
"assets/lib/assets/gif/theme.gif": "db711951d8e2720137a05b2efe5ba1f8",
"assets/lib/assets/gplayButton.png": "47cbd92cc8fd40e7bdd00836bf128cb4",
"assets/lib/assets/logo.png": "ff2b8994212581e7bfdd1310dbdf9d9a",
"assets/lib/assets/logotypeRed.png": "24820d711a0fca6fda3890af4d368901",
"assets/lib/assets/logotypeWhite.png": "ae6845772e5ddef89a7a39fe09f52b91",
"assets/lib/assets/profile.png": "521db63198278b39512eb2d8225672bd",
"assets/NOTICES": "f8815d36c13ddb47dbbfbf9a624b0ded",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "046fc76379c219eba7e3ac1ca868b68b",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.ico": "17db6a860b60a08a6abfd1828fca2a44",
"favicon.svg": "7db72f371db3f633376443eb76d70e41",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "03c9538182b7f5d4debd82ec065a049d",
"icons/favicon_dark.svg": "c90c545aa5bc67eac36b4ba4723cb1b3",
"icons/Icon-192.png": "f8dc06c704cbf7896198f2f3d37dd94f",
"icons/Icon-512.png": "e78a4efff4827e076accdf30906ae259",
"img/Cover.jpeg": "d0d92d86e0a99ceac9f0b552511a48c4",
"index.html": "40f121be1a1738c4835f8af17cb9044b",
"/": "40f121be1a1738c4835f8af17cb9044b",
"main.dart.js": "6baa4dc6903ed254e4265fc909b8710c",
"manifest.json": "3ead6be3e8c4b27f0e3c2b9632524a20",
"policy.css": "eccf1fd12d7d8ca0c2bb61af3779a1f3",
"policy.html": "7b14d9dc376a92e69d257eb57d70d5d7",
"policyapp.html": "18a50ed8a0987e42de50a4a570c8f533",
"policyapp_fr.html": "1cc2a7528a1dda0aa1188e6864cba7fb",
"PrivacyStyle/fido2-page-script.js": "fd572cf33108d91a60181ffc87188e7d",
"PrivacyStyle/privacy_policy-20c4c145e840109997b9c4d4ae844084522846014870a1.js": "709a7901964a778a0952b8d9597ae762",
"PrivacyStyle/privacy_policy-637a0c5875120390258ba7ad6b6b99e7f9e79c6fab53b.css": "06fe94a23242e68826349a22405eae26",
"termsandconditions.html": "fab88f1f28edee06521bae02220786f1",
"termsandconditions_fr.html": "443fe15fc2d488592d2b71589744c8f1",
"version.json": "13564338c5384b95649f1a7fbf56d33a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
