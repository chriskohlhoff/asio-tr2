Changes Since P0112R0
=====================

Commit | | Kind | | Description
------ | | ---- | | -----------
c06b8aeba14d669253239efebc8451df9c41a83b | | Fix typo conditially->conditionally.
9758a906ba9b8ebde121d9f3b12176503e6dd3c4 | | Fix variable name in timers example.
e1343cac154c7a103fea997098985ae273383f13 | | Fix POSIX constants used by ip::tcp.
e9f51397a443694e169dcc7d62f87a07b28cfea4 | | Re-enable draft info.
6531ea84d68a89917d2ec7945977cebb178f4723 | | Fix use of forward_as_tuple in use_future_t.
8050d01b8e2418f6ff74894684bda16bb3c41cd8 | | Add missing struct keyword to buffer type traits.
1b4adefc6a6a0cb158cc4f78a6864e0ee23403c5 | | [buffer.size] replace v with *i.
cb825d4ecc7256f1dc096944b779b54525c8bcc7 | | [buffer.synop] add missing parameter type to buffer_copy
15ac02f1feaa1011faaff27aeb9502996846619f | | [buffer.synop] add missing class keywords
174005f5feecac7cb26df79c9f6d2ac3aa659439 | | Merge pull request #198 from jwakely/dynamic-buffers
d11ec0b61ac70d010c84daf9691fc8c88fa0f319 | | Merge pull request #197 from jwakely/buffer-size
694c885a14267d02b789b4b4810d55277db01b0d | | Merge pull request #193 from jwakely/buffer-traits
1873fb6596c853abfbcb5f17f14cda4fc3582f1d | | Merge pull request #199 from jwakely/buffer-copy
b6d224df87d6ad4f887fc6202dd5ecc19b96497f | | [async.use.future] Allow allocator default constructor to throw.
c231e29881e383f1bce93d3c63170fd551e3adff | | [async.use.future.members] Fix completion signature used by use_future_t::operator().
a7f3a348a8fccd8b367761e879d32b956236310e | | [async.dispatch] [async.post] [async.defer] Add completion signature elements.
0d409985bc0df2e9f62a8144f91c4777de820f15 | | [buffer.const] state postconditions in terms of public API
381e42458b9ae31fc7044696a1aace53c45bdd18 | | Merge pull request #200 from jwakely/buffer-const
769d57c97bb025802461a9724be5bdf02cd1cac5 | | [socket.synop] fix typo in declaration
1b673c1b23da4069237544425d69733c7c1c21d0 | | Merge pull request #203 from jwakely/socket-synop
23fad463869c5f6f406b00b4bb4bee2af7497044 | | [async.reqmts.async.concepts] Italicise only the first uses of each term.
8761408d6124099703ff8105dca82f18b489475c | | [socket.basic.ops] Specify error return value for at_mark().
64d16a5ecb65dd197da17ca6154339985c8c49c3 | | [socket.dgram.op] returns clause uses wrong variable name
b9dfe25964ef4b2a93e84b2d941740a7de42f0d3 | | Merge pull request #205 from jwakely/receive-from
d4e7929eeef9f4ebdf7c2f8d8c7282f6719b8c2e | | [socket.acceptor.ops] Fix construction of socket returned by accept/async_accept.
9e0d0ac99a2043812ddd816d6deed875bb43402e | | [async.reqmts.async.work] Specify that lifetime is same for both work objects.
876d3db753140af4add2a79bf6c6382d9f5ac06f | | [internet.address.v4.creation] qualify bytes_type
9bf6bd05bf054cfc2ebbbdcf782d3424abf87849 | | [internet.bad.address.cast] use public inheritance
21c4f4a4a6df9c9c6f3a8e05b94db75f14dfc680 | | Merge pull request #207 from jwakely/make-address
06e7ebb27d70a70cad7327e96f2a3e8fbbfddc46 | | Merge pull request #208 from jwakely/bad-address-cast
238c3cec2322907899619f7a226a77eb8de2c8c3 | | Fix typo opeation->operation.
980a1170ee270af91610e17f704656fd574bfd19 | | [internet.address.v6.creation] qualify bytes_type
479305e45419f9f24bc9fdbfbde6aac74b4ea204 | | [internet.network.v4.cons] Fix constructor descriptions
367837872474acfbb2f043b4d51b1fbdb65585e7 | | [internet.network.v4.members] qualify name of shadowed function
1ecc81bf4ac11dc8b29d2158d60ac91c775b0818 | | [internet.resolver.results.cons] fix move constructor signature
b537a1e29bdf75e9a96d4f713e9d5e2cca27be8d | | [internet.udp] fix typo
8de07056de0a109e7e52fcaa9065f8f18e92f0a0 | | Merge pull request #209 from jwakely/network_v4
cb864d490ec50b31d89ad68a4f77ea50428a012f | | Merge pull request #210 from jwakely/resolver-results
3c55de27838b127851b8665c09b01f07e99fd1ad | | Merge pull request #211 from jwakely/udp-typo
067b3ad64efff659c4245eb28601728370271d98 | | [internet.synop] correct names of stdint.h typedefs
27a0600a4bf3a6383785c34948bcfb612140edfb | | Merge pull request #212 from jwakely/internet-synop
887646953c36bda6220e9477a4611207ea7d1dec | | [internet.synop] add missing 'class' keywords
e0e30c2a29019d3e0c23e9d2e3471a19e666a36c | | [internet.synop] more missing 'class' keywords
bf164e893898ab63ddebabff3360e8559b2ea6fc | | [internet.synop] remove 'const' qualifier from host_name functions
fbeea2beec2eb2e632a6c24f87c8345f1a9eaec1 | | [socket.iostream] fix class name in constructor
0208028f535c5c70072af00c7bda16c88fbe60bc | | Merge pull request #213 from jwakely/internet-synop
9861a2fb79b5345a055349a73bc3cc7aa9d4d73e | | Merge pull request #216 from jwakely/socket-iostream
0dea2a1f6f43e0dcd1346e7a912915f6e88b7cde | | [internet.host.name] Remove spurious const qualifier.
3fba5ff22212819b5f190dde3a248ce37a0d8318 | | [internet.endpoint.io] Qualify protocol_type.
9a4a9c93ad0deb911d727a3ee0b37b1f13fa4d9c | | [socket.dgram] Consistently use 'recipient' rather than 'destination'.
6bd3b4b0b617c92904c6927f8bf7fc59ee56b237 | | Clean up formatting.
e7385df23a7ce95e8c0cd6db18fd4f72fb8b2c28 | | [internet.resolver.ops] cast void* to sockaddr*
ef2978ecd13e37da5b21885634edb8521e401311 | | Merge pull request #217 from jwakely/resolver-ops
40d575e5e9b35f7dc3db56658f33afa63f910258 | | [socket.basic] [timer.waitable] when object is moved, executor is assigned
a52966a9a1e9bb1e262512e66bbb7998c4b05ecb | | [async.post] [async.dispatch] [async.defer] Fix initialisation of async_completion object.
b86f0dede9c671e27366d6d032206a4812da520e | | [err.report.sync] Loosen specification of string passed to system_error constructor.
252903978b37cf90a0feec78cd85143f23da23da | | [buffer.creation] Reinstate overloads that take a const basic_string reference.
8a713e67fa4f2cfa9add5f71c3e09178425dd4c8 | | [buffer.err] was missing
9ae8fcc27b87d00bab53d4c210fa750155c98fd8 | | [socket.basic] [socket.acceptor] [timer.waitable] [internet.resolver] Add remarks about cancel() not blocking.
90192b3b5c858343e552e83b7a336c5012e5bce9 | | Add EndpointSequence type requirements.
74387c6a6f51451e3ecf8dcbdcd43040096d9234 | | [async.reqmts.executor] Add paragraph on executor invalidation.
