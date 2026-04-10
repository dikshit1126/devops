function buildResponse() {
  return {
    project: "DevOps Showcase App",
    message: "CI/CD, containerization, Kubernetes, and Terraform are configured.",
    version: process.env.APP_VERSION || "1.0.0",
    environment: process.env.NODE_ENV || "development"
  };
}

module.exports = {
  buildResponse
};
