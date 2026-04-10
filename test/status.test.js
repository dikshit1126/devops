const test = require("node:test");
const assert = require("node:assert/strict");
const { buildResponse } = require("../src/status");

test("buildResponse returns the expected project name", () => {
  const response = buildResponse();
  assert.equal(response.project, "DevOps Showcase App");
});

test("buildResponse falls back to development environment", () => {
  delete process.env.NODE_ENV;
  const response = buildResponse();
  assert.equal(response.environment, "development");
});
