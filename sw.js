// Cache simples para o app abrir offline.
const C = 'viagem-v18';
self.addEventListener('install', e => e.waitUntil(caches.open(C).then(c => c.addAll(['./', 'index.html', 'style.css', 'manifest.json', 'icon.svg']))));
self.addEventListener('fetch', e => e.respondWith(
  fetch(e.request).then(r => { const copy = r.clone(); caches.open(C).then(c => c.put(e.request, copy)); return r; })
    // Sem internet: ignora ?parâmetros (links do WhatsApp etc.) e, se for abrir uma página, cai no app guardado.
    .catch(() => caches.match(e.request, { ignoreSearch: true }).then(r => r || (e.request.mode === 'navigate' ? caches.match('index.html') : r)))
));
