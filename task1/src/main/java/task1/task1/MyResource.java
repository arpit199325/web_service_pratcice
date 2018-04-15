package task1.task1;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.datadao;
import com.customer;
import com.vehicle;

/**
 * Root resource (exposed at "myresource" path)
 */
@Path("task1")
public class MyResource {

    /**
     * Method handling HTTP GET requests. The returned object will be sent
     * to the client as "text/plain" media type.
     *
     * @return String that will be returned as a text/plain response.
     */
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String getIt() {
        return "Got it!";
    }
    
    
datadao dao=new datadao();
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<customer> customerlist()
	{
		
		List<customer> list=dao.customer_detais();
		return list;
		
	}
	
	
	@Path("/addcustomer")
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	
	public customer new_customer(customer c) 
	{
		dao.add_cutomer(c);
		
		return c;
		
	}
	
	
	@Path("/add_vehicle")
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	
	public vehicle new_vehicle(vehicle v) 
	{
		
		dao.add_vehicle(v);
		return v;
		
		
	}
    
    
}
