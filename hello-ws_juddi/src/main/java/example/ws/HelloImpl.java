package example.ws;

import javax.jws.WebService;

@WebService(endpointInterface = "example.ws.Hello")
public class HelloImpl implements Hello {

	public String sayHello(String name) {
		return "Hello " + name + "!";
	}

}
