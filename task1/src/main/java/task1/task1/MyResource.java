package task1.task1;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.datadao;
import com.coverage;
import com.customer;
import com.vehicle;

@Path("/task1")
public class MyResource {
    
	datadao dao=new datadao();
	
	@Path("/customer_summary/{id}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<customer> customer_summary_details(@PathParam("id") int customer_id)
	{
		List<customer> customer_summary=dao.customer_all_details(customer_id);
		return customer_summary;
		
	}
    
	
	@Path("/customer_details")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<customer> customerlist()
	{
		
		List<customer> list=dao.customer_details();
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
	

	@Path("/vehicle_summary/{id}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<vehicle> vehicle_summary_details(@PathParam("id") int vehicle_id)
	{
		List<vehicle> vehicle_summary=dao.vehicle_all_details(vehicle_id);
		return vehicle_summary;
		
	}
	
	@Path("/vehicledetails")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<vehicle> vehiclelist()
	{
		List<vehicle> vehiclelist=dao.vehicle_details();
		return vehiclelist;
		
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
	
	

	
	
	@Path("/coverage_summary/{id}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<coverage> coverage_summary_details(@PathParam("id")int coverage_id)
	{
		List<coverage> coverage_summary=dao.coverage_all_details(coverage_id);
		
		return coverage_summary;
		
	}
	
	@Path("/coveragedetails")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<coverage> coverage_details()
	{
		List<coverage> coverage_list=dao.coverage_details();
		return coverage_list;
	}
	
	
	@Path("/addcoverage")
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	
    public coverage new_coverage(coverage c) 
	{
		dao.add_coverage(c);
		return c;
		
	}
	
	

}
