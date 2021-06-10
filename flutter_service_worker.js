'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "4f0e1a80917b6cce6a51fc4f89858408",
".git/config": "1d58b016e66f9659ca5f5d51bdaab9e2",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "5f581ad1cd5216a94952214beaec073c",
".git/HEAD": "d6628019dca291cf79c10adb10b6a597",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "5d5503a3e2560c7f51cf596748ea71ae",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "87a10142307dbf7b6295256ebaeb8b39",
".git/logs/refs/heads/web": "79812dccf632bd6bbef875bb661a2d22",
".git/logs/refs/remotes/origin/main": "fdb4d7ec83db132af5194fa57e3b8930",
".git/logs/refs/remotes/origin/web": "2263b56e0d0d26b211c06815df487f76",
".git/objects/00/13a496bc3380d217179410c91348ef144c8265": "f4c7abf9b84123ea5a80146cb86dbdb3",
".git/objects/0b/390645b8610034cdeffd2b51041a126b9e57dd": "1a599cce18fbbe6d1db10818a54178c1",
".git/objects/0b/c6c860afd1e61d168d16b2dff74c97b1f696c9": "bbf4b562ab68ad82569a05e91095c812",
".git/objects/0f/a6b675c0a52be9242fc68269eefce46828ad43": "3732df75a452960f40377486a7eb2955",
".git/objects/11/b29c2c653d062653e10d981294e3b6e1f195a6": "b33704dd0d1b1272cfc782fe4a796522",
".git/objects/13/b52ea29a5a06e79cab0731fe4dfe7c8a100dcb": "58e9fc6295321996916bf52302a24f49",
".git/objects/19/f25a28fdc46d180a4f89e5235fa1d07fbcddae": "eafa1413c4fdd7b3d0decbd2f2981a50",
".git/objects/1b/3aa604ff9100f475c5510691c0db7896508529": "54d9b591b8cb08fb1b38182d04b2fade",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/23/9bce7e76ec211d0ab036b0e0a20eb4c01382cb": "8d4b6cbfd476a3a31172e820a4e42987",
".git/objects/25/61717782f9c5189ee6b790da58dfee2b58dc72": "e0036b995c271b0adbc12773afa0b81c",
".git/objects/25/f98212bcbafb18cdf14e091c2064471303973f": "b7d4fac195434778d7cba9c531df928a",
".git/objects/26/4d23e441e830c669e567346f3a8a82f78ef74d": "f02ad541bfa9223d9ccfb422f2aceeb2",
".git/objects/31/8e2048022ae49f3b461bb7f1518cf3ceb0fd8d": "2194355300895fc9685540497c4515b9",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/34/ebf6eee592c9074b3c5e9c20f9f39b09aaf185": "7b6f0ef2d97c5eddec2ffbded761430b",
".git/objects/36/df7ddb798b52122e375a4c1037ed727f94b8bf": "af61a5d4c2a0ae401893e0c9f4378a31",
".git/objects/37/33535c8862a2e1ae1046826c291f47d14c2994": "dba3cfec3abfa92301ac3afca188e92b",
".git/objects/43/c2f64533f77dd3061b2bab5f5a2b2f44b7ec51": "d1b5eee28738e8fa01304804db2efb95",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/4d/fce59c83b003bc613c03712d566ab533e3dbb1": "7f0c2f0f72d36711e786b381d75c301b",
".git/objects/6f/cdcfef36ffc63f55b3abeea708fce5f3fa5053": "7dd538774a8781effccdde51b13351bb",
".git/objects/78/96742f7d709855d6951b70402f86201aabbd67": "fdd7f706be96baeffafbb251a76ea4b4",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7e/b27abc0f8eb4ea5832ec6486621a5ed797692b": "5f68bdc2f8e8b7be13c08ee7f2761842",
".git/objects/84/30876f5f54178e99b32a874ed4cce8d583e654": "f8e446a93ec5d6c696905e4728f7ebf4",
".git/objects/88/95cdab649e0cfd2bd75c8ef0caf9efd4e32a1e": "855d7bc6d2c7f737282f6a56f318b5ff",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/94/4ccbfad48f27e0336ac6e415ec40b5c4966eb0": "91b2a0d800ad22468490cacef99cfb9d",
".git/objects/99/3ccd0f1a7e50920a6817c1f6b61f4678c03d41": "bdda7ee7da5770650beb834a17986bac",
".git/objects/9f/ec24357858cf5d3abdca4df796056aceac3ef4": "51aef90ec130f29b0ee1ba9e00344f57",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/aa/e58e561d559f92b67b54109aa3d3442c75faf7": "2863f4df7775b92b9f2225bb0e6d8d73",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/b3/492daa8f2482b5239425b0de3ad4ab251dd064": "fd7bec95264214f26caf26f746aca722",
".git/objects/b6/acb1d650a62aac3af685f8a2afec37189b3205": "dab41d645ec4644137ca400b9f510375",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/ba/aa372d3b4fad314b60e583a5795bd7e0df7533": "b8e9f63ded4f5439c9bb1414b9171147",
".git/objects/c1/f6ad83436ce53df94aa360a2b29419cc4af05d": "9e5af2e8f124e6cd6958ad53e4a3118a",
".git/objects/d0/ea3e558bb2c8286e4e32f09bc6657a6ab2aad8": "7af35d11e1994f4556d211e45de4c7cb",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e5/d71919203b50ebd1b2966de79f7a35a48a6f62": "b7ad98109c46ab4d041e1cde07cfb82c",
".git/objects/e6/2b5971df660d0983d396c89b7b6e03ba57f224": "5a1d15d6372b3cfd2f0aee7fcaed250c",
".git/objects/e9/d293a37a2da01b04df61a08c43cf0d9e1b27a6": "d1d1df39158a2f735bea505a770600be",
".git/objects/eb/431d289c47a0cabb97855cd08b16d3a87e9af1": "dfe2b3972053e6fa044191521946b93c",
".git/objects/f3/292766a2de12b91c0b9dc405a92580b11c84cf": "fc2f9c2e9184cb1214b630965f707bcc",
".git/objects/fe/3b48f86b79eacfdeafe69783c3f039c021959c": "8094172f5c2eabb527f564e433d8e1f4",
".git/ORIG_HEAD": "fd3791c067c50ef9f977798867200613",
".git/refs/heads/web": "17677c61be13e4d8f3c717dfb8356f03",
".git/refs/remotes/origin/main": "fd3791c067c50ef9f977798867200613",
".git/refs/remotes/origin/web": "17677c61be13e4d8f3c717dfb8356f03",
"assets/AssetManifest.json": "37043a33c69b61c8f8d89ff4be4f46d6",
"assets/assets/images/background.png": "2a748efe1ef672b9a93baa66d2f58109",
"assets/assets/images/Blogging.json": "aa58b4cfe25ff0b00ef6d357afce1b4e",
"assets/assets/images/desk.png": "45153dd241f60737ee088389edbdd444",
"assets/assets/images/facebook.png": "538d7f8f45193c6c45d76c0bfc9e7783",
"assets/assets/images/github.png": "f6b35573f957ed2034ba52312a6dbf9b",
"assets/assets/images/linkedin.png": "3408fabfa9ad80b04942ac5933769c39",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "f75f7a16aa5935033de82454710f1870",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "20d91a7fcb25ada2fa70ef118db4d3a9",
"/": "20d91a7fcb25ada2fa70ef118db4d3a9",
"main.dart.js": "4170adc5a9c95eabdb42e37165234933",
"manifest.json": "af3801fbffc9239d7f3a1f4a735c3180",
"version.json": "118dec2ba15381e67a9ad6ed4d07fef7"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
