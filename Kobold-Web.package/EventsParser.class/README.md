# EventsParser
Endpoint for receiving UsabilityEvents.
Registered as /Threats/ (legacy name) and receiving POST parameters.
Mandatory parameters are:
- token: client website identifier
- threat: the class of the event.
the rest of the parameters are specific to each UsabilityEvent, but typically include
- timestamp
- dom element info