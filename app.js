const Koa = require('koa');
const app = new Koa();

app.use(ctx => {
    ctx.body = 'Hello Koa2';
});
app.listen(3000);
