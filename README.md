# Tic Tac Toe Web Service Noughts and Crosses Game I

## Preface

Based on the examples, was built a new Web Service Tic Tac Toe (noughts and crosses).


### Starting

- The starting point was the ```ttt-local```

- The point of arrival is the ```ttt-ws_juddi``` and ```ttt-ws-cli_juddi```, but there are still major changes
already done.

The class ```example.ws.uddi.UDDINaming``` uses the **API JAX-R** to make the interactions with the
**UDDI server**.

To use the **API JAX-R** the ```juddi-client``` *libraries* are required
(to be included in the ```pom.xml``` file)

Review the dependencies in the previous example and add what is missing inside the ```<dependencies>``` tag.


#### On the Server Side (```ttt-ws_juddi```):

- View the ```TTT``` interface and its implementation ```TTTImpl```

- Complete the ```javax.jws.WebService notes```, indicating the implemented interface:

```
ttt.TTT
```


#### On the Client Side (```ttt-ws-cli_juddi```):

Set in the ```pom.xml file``` (beyond (s) dependent (s) unknown):

- The location of the **UDDI** (```uddi.url```)

- The service name to search (```ws.name```)
