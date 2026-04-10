const http = require("node:http");
const { buildResponse } = require("./status");

const PORT = Number(process.env.PORT || 3000);

function requestListener(req, res) {
  if (req.url === "/health") {
    const payload = {
      status: "ok",
      uptime: Math.round(process.uptime()),
      timestamp: new Date().toISOString()
    };

    res.writeHead(200, { "Content-Type": "application/json" });
    res.end(JSON.stringify(payload));
    return;
  }

  if (req.url === "/") {
    res.writeHead(200, { "Content-Type": "application/json" });
    res.end(JSON.stringify(buildResponse()));
    return;
  }

  res.writeHead(404, { "Content-Type": "application/json" });
  res.end(JSON.stringify({ error: "Not found" }));
}

function createServer() {
  return http.createServer(requestListener);
}

if (require.main === module) {
  const server = createServer();
  server.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
  });
}

module.exports = {
  createServer,
  requestListener
};
