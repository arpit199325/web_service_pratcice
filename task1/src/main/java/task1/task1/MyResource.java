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

@Path("/task1")
public class MyResource {
    
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
		System.out.println(c);
		
		return c;
		
	}
	
	
	@Path("/addvehicle")
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	
	public vehicle new_vehicle(vehicle v) 
	{
		
		dao.add_vehicle(v);
		return v;
		
	}
    
    
}
