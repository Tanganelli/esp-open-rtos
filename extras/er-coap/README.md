# er-coap
This repository host a porting to FreeRTOS and lwIP of the Erbium (Er) REST Engine of the Contiki OS. It has been developed for the [esp-open-rtos](https://github.com/SuperHouse/esp-open-rtos) project.

A big thanks goes to the first devloper of the Erbium (Er) REST Engine, Matthias Kovatsch.

A Quick Introduction to the Erbium (Er) REST Engine
===================================================

EXAMPLE FILES
-------------

- er-example-server.c: A RESTful server example showing how to use the REST
  layer to develop server-side applications (at the moment only CoAP is
  implemented for the REST Engine).
- er-example-client.c: A CoAP client that polls a server for resources
- Get the Copper (Cu) CoAP user-agent from
  [https://addons.mozilla.org/en-US/firefox/addon/copper-270430](https://addons.mozilla.org/en-US/firefox/addon/copper-270430)
DETAILS
-------

Erbium implements the Proposed Standard of CoAP. Central features are commented
in er-example-server.c.  In general, extra/er-coap supports:

- All draft-18 header options
- CON Retransmissions (note COAP_MAX_OPEN_TRANSACTIONS)
- Blockwise Transfers (note REST_MAX_CHUNK_SIZE, see er-plugtest-server.c for
  Block1 uploads)
- Separate Responses (no rest_set_pre_handler() required anymore, note
  coap_separate_accept(), _reject(), and _resume())
- Resource Discovery
- Observing Resources (see EVENT_ and PRERIODIC_RESOURCE, note
  COAP_MAX_OBSERVERS)

TODOs
-----

- Dedicated Observe buffers
- Optimize message struct variable access (directly access struct without copying)
- Observe client
- Multiple If-Match ETags
- (Message deduplication)
