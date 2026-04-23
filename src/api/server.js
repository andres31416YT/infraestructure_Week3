const http = require('http');

// Configuración del servidor
const hostname = '0.0.0.0';
const port = 3000;

// Crear el servidor
const server = http.createServer((req, res) => {
  // Configurar la cabecera de la respuesta
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain; charset=utf-8');
  
  // Enviar el cuerpo de la respuesta
  res.end('¡Servidor funcionando correctamente!\n');
});

// Iniciar el servidor
server.listen(port, hostname, () => {
  console.log(`Servidor ejecutándose en http://${hostname}:${port}/`);
});
