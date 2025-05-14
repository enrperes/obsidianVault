```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>getUserMedia Demo</title>
  <style>
    video { width: 640px; height: 480px; background: #000; }
  </style>
</head>
<body>
  <h1>Live Camera</h1>
  <video id="video" autoplay playsinline></video>

  <script>
    (async () => {
      try {
        // Chiede l’accesso alla webcam (solo video)
        const stream = await navigator.mediaDevices.getUserMedia({ video: true });
        // Assegna lo stream al video element
        document.getElementById('video').srcObject = stream;
      } catch (err) {
        console.error('Errore nell’accesso alla camera:', err);
      }
    })();
  </script>
</body>
</html>
```