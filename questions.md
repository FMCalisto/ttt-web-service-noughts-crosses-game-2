### Questions

1) Study the generated WSDL. You can map the Java code to the WSDL and XSD definitions?

Yes, since it is used JAX-WS library.

2) Where in the WSDL, it specifies the type of Web Service arguments?

In Types field.

3) Compare the generated WSDL with `ttt.x` file SUN RPC ttt server.

3.1) What information is common to both files?

The common information to both files is that one that talks about what services and messages should be sent and what structure.

3.2) What information exists in the WSDL but does not exist in `.x`?

The location of the service and how to use the various transport protocols.

4) Identify the function of each generated file on the client.

> (ignore the ObjectFactory.java and package-info.java files in your response)

The function of the generated files is the stub between the server and the client, applied to functions defined in the TTT interface (contract) with remote invocations to class `TTTImpl` server.
