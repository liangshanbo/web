const http = require('koa');

const server = http.createServer((req, res) => {
    res.end('<h1>Hello Docker</h1>');
});
server.listen(3000);
