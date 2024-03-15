#!/usr/bin/env rdmd

/+dub.sdl:
dependency "msgpack-rpc" version="~master" path="../../"
+/

import std.stdio;

import msgpackrpc;

version (CLIENT) {

void main() {
auto client = new TCPClient(Endpoint(18800, "127.0.0.1"));

// sync request
auto num = client.call!ulong("sum", 1, 2);
writeln(num);

// async request: return a Future object
auto future = client.callAsync("sum", 1, 2);
writeln(future.get().as!ulong);  // /home/zhou/.dub/packages/msgpack-d/1.0.5/msgpack-d/src/msgpack/value.d

// notify
client.notify("hello", "hoge");

}

}
