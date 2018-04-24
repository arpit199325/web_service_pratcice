package task1.task1;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.coverage;
import com.customer;
import com.datadao;
import com.task1model;
import com.vehicle;

@Path("/task1")
public class MyResource {
    
	datadao dao=new datadao();
	
	
	@Path("/addcustomer")
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public customer new_customer(customer new_customer) 
	{
		dao.add_cutomer(new_customer);
		return new_customer;
	}
	
	@Path("/addvehicle")
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public vehicle new_vehicle(vehicle new_vehicle) 
	{
		dao.add_vehicle(new_vehicle);
		return new_vehicle;
	}
	
	@Path("/addcoverage")
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	
    public coverage new_coverage(coverage new_coverage) 
	{
		dao.add_coverage(new_coverage);
		return new_coverage;
	}
	
	
	
	
	@Path("/customer_details")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<customer> customerlist()
	{
		List<customer> customerlist=dao.customer_all_details();
		return customerlist;
	}
	
	@Path("/vehicledetails")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<vehicle> vehiclelist()
	{
		List<vehicle> vehiclelist=dao.vehicle_all_details();
		return vehiclelist;
	}
	
	@Path("/coverage_details")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<coverage> coveragelist()
	{
		List<coverage> coveragelist=dao.coverage_all_details();
		return coveragelist;
	}
	
	
	
	@Path("/customer_summary")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<customer> customer_summary_details()
	{
		List<customer> customer_summary=dao.customer_details_id();
		return customer_summary;
	}

	@Path("/vehicle_summary")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<vehicle> vehicle_summary_details()
	{
		List<vehicle> vehicle_summary=dao.vehicle_details_id();
		return vehicle_summary;
		
	}
	
	@Path("/coverage_summary")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<coverage> coverage_summary_details()
	{
		List<coverage> coverage_summary=dao.coverage_details_id();
		return coverage_summary;
		
	}
	
	@Path("/summary")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List summary_details() 
	{
		List details = dao.summary_details();
		return details;
	}
	
	
	
	
	
	
	@Path("/addtask1")
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public task1model add_data(task1model task1model) 
	{
		dao.add(task1model);
		return task1model;
	}


}
