const http = require('http');

const PORT = process.env.PORT || 3000;
const VERSION = process.env.APP_VERSION || 'v0.0.1';

const server = http.createServer((req, res) => {
  res.setHeader('Content-Type', 'application/json');
  res.end(JSON.stringify({
    status: 'ok',
    version: VERSION,
    time: new Date().toISOString()
  }));
});

server.listen(PORT, () => {
  console.log(`Server listening on port ${PORT} (version: ${VERSION})`);
});
