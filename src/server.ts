import Hapi from '@hapi/hapi'

export const server = Hapi.server({
  port: 3000,
  host: '0.0.0.0'
});

server.route({
  method: 'GET',
  path: '/',
  handler: function (request, h) {
    return 'Hello debugger!';
  }
});
