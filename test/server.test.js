const test = require("node:test");
const assert = require("node:assert/strict");
const { requestListener } = require("../src/server");

function invoke(pathname) {
  return new Promise((resolve) => {
    const req = { url: pathname };
    const response = {
      statusCode: 200,
      headers: {},
      body: "",
      writeHead(statusCode, headers) {
        this.statusCode = statusCode;
        this.headers = headers;
      },
      end(payload) {
        this.body = payload;
        resolve({
          status: this.statusCode,
          headers: this.headers,
          body: JSON.parse(payload)
        });
      }
    };

    requestListener(req, response);
  });
}

test("GET /health returns service health", async () => {
  const response = await invoke("/health");
  assert.equal(response.status, 200);
  assert.equal(response.body.status, "ok");
});

test("GET / returns project metadata", async () => {
  const response = await invoke("/");
  assert.equal(response.status, 200);
  assert.equal(response.body.project, "DevOps Showcase App");
});

test("Unknown route returns 404", async () => {
  const response = await invoke("/missing");
  assert.equal(response.status, 404);
  assert.equal(response.body.error, "Not found");
});
