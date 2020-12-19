const http = require("http");
http
  .createServer((request, response) => {
    response.writeHead(200, { "Content-Type": "text/plain" });
    response.write("Hello from nodejs!");
    response.end();
  })
  .listen(1000);
console.log("Server listening on port 1000");
