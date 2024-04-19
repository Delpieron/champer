'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "51e490dbd7c3b0df26dd1864e1c5f7e2",
"assets/AssetManifest.bin.json": "6310d50ff2c9d51c96d370baf5bd7995",
"assets/AssetManifest.json": "1f373c0f6530032bb76e2b732eb7024b",
"assets/assets/fonts/ganiser-ganiser-400.ttf": "a8434cfff03e5824b586d98aa50e12f1",
"assets/assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/images/APETIZERY%2520TOP%2520MISKA_immuno.jpg": "14b3ba4adf41f42c4c9a71875eaeced6",
"assets/assets/images/APETIZERY%2520TOP%2520MISKA_immuno.png": "c3a453e615e3ba02ab52b54408e7b816",
"assets/assets/images/CHAMPER_Kompozycja.jpg": "e3a61ff308407d15a302cc95b25e6d86",
"assets/assets/images/CHAMPER_Kompozycja.png": "cdc0476d54d3440951d8e655a55884dc",
"assets/assets/images/CHAMPER_MISKA_Z_zia%25C5%2582ami.jpg": "e599f59081a6c5eef3f6710f50c47dcf",
"assets/assets/images/CHAMPER_MISKA_Z_zia%25C5%2582ami.png": "829eba926898f4f9d001563a7e5a2ea6",
"assets/assets/images/elementy%2520na%2520strone%2520champer-02.jpg": "d185409de90cbd19f2d1229ae8123eed",
"assets/assets/images/elementy%2520na%2520strone%2520champer-02.png": "4ad7bdcc4add2283263eb60ef65edc2d",
"assets/assets/images/favicon.jpg": "86667190f5fe36b8d3f375b14d57a0ec",
"assets/assets/images/favicon.png": "eccc1641761c4ca6c7c3096c1ba0ba35",
"assets/assets/images/image.jpg": "c2c6f44a0ae12be211c6b0b063160711",
"assets/assets/images/image.png": "450b8871beff00921bb022b06cc98aa8",
"assets/assets/images/KOTEK_PETMEX.jpg": "21654da37ccdbd772f43bf4c0f8c8e74",
"assets/assets/images/KOTEK_PETMEX.png": "f1d7a8262f69e8cd0a167b7099d95d63",
"assets/assets/images/logo.jpg": "23f913e0b506f94667d927d27287929f",
"assets/assets/images/logo.png": "40678f9e25987f4bd1e70a7a0c7768ac",
"assets/assets/images/PIES_BONES-AND-JOINTS.jpg": "57fe26e51fac3daa0aef81cfd661f046",
"assets/assets/images/PIES_BONES-AND-JOINTS.png": "cf8b88b7e9ae95d1ececfb55f2cf1ba3",
"assets/assets/images/PIES_GASTRO.jpg": "9d923526b525a1e20b5690827569d410",
"assets/assets/images/PIES_GASTRO.png": "6e889e89bd56f3d2cafc69f1f4624c1d",
"assets/assets/images/PIES_UNIWERSALNY.jpg": "76f47f9721fef6ab2fe2f9aaa8a2dc81",
"assets/assets/images/PIES_UNIWERSALNY.png": "5ce95da83516a5d665310795992fd7d1",
"assets/assets/text_images/aa-02.jpg": "205a6f32e92e597b556169925415763f",
"assets/assets/text_images/aa-02.png": "c0035df8b8a0f63008a15dac3dd2ac83",
"assets/assets/text_images/aa-03.jpg": "12cbe5551bb36786331e0d7f4557f9b7",
"assets/assets/text_images/aa-03.png": "2cb9c6ab07d54204b39fd507a5bfb7ed",
"assets/assets/text_images/aa-04.jpg": "bded050c3c9b6f62f4ed2e59ed77981b",
"assets/assets/text_images/aa-04.png": "59e7042960a8b1428b2d652f6437eb65",
"assets/assets/text_images/aa_Obszar%2520roboczy%25201.jpg": "83d042d796fa0d819e93354406ec656c",
"assets/assets/text_images/aa_Obszar%2520roboczy%25201.png": "1bbca6cd7702472a196edd92d96b680d",
"assets/FontManifest.json": "1be2f817ea6fe5b6f269b6b6d251c6ec",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "e1d5afc849410ae54409ba54c63e5d71",
"assets/packages/social_media_buttons/fonts/SocialMediaIcons.ttf": "be271838cfb555093a41e12292acce83",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "eccc1641761c4ca6c7c3096c1ba0ba35",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "ffea9d1a844f0d675b4d0187ec28cf78",
"/": "ffea9d1a844f0d675b4d0187ec28cf78",
"main.dart.js": "2baedefdb1d1bb2952920dc3c9dc4b7d",
"manifest.json": "9c3069ce4980cdf2fd302d23128f36e3",
"version.json": "afb4e4dc99adde1de85ed50f9da056aa"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
