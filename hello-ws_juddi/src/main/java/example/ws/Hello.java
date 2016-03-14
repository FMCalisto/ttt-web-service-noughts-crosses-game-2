package example.ws;

import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService
public interface Hello {

	@WebMethod
	String sayHello(String name);

}
