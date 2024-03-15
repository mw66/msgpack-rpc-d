import std.stdio;

import msgpackrpc;

version (SERVER) {

class FooServer {
  ulong sum(ulong l, ulong r) { return l + r; }

  void hello(string msg) {   writeln(msg); }
}

void main() {
	writeln("msgpack-rpc-d TCPServer started ...");

// TCPServer or UDPServer
auto server = new TCPServer!(FooServer)(new FooServer);
server.listen(Endpoint(18800, "127.0.0.1"));
server.start();

}

}
