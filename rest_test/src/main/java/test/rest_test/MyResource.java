package test.rest_test;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.controller.datadao;
import com.model.model;


@Path("myresource")
public class MyResource {
	
	@Path("/{test}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public String get_test(@PathParam("test") String test) 
	{
		return "Successfull"  +test;
	}
	
	datadao dao=new datadao();
   
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response add_model(model model) 
    {
    	model.setId(model.getId());
    	model.setZipcode(model.getZipcode());
    	model.setRisk_level(model.getRisk_level());
    	model.setCity(model.getCity());
    	model.setState(model.getState());
    	
    	dao.add_model(model);
    	
		return Response.status(200).clone().build();
    	
    }
    
    
    @Path("/onedata/{zipcode}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public model get_one(@PathParam("zipcode") int zipcode) 
    {
    	model m=new model();
    	dao.one_data(zipcode);
    	
		return m;
    	
    }
    
    @Path("/state_risk/{state}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<model> state_risk(@PathParam("state") String state) 
    {
    	List statelist= dao.list_data(state);
		return statelist;
    	
    }  
    
    @Path("/alldata")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<model> all_data()
    {
    	List<model> all_list=dao.all_data();
    	
		return all_list;
    	
    	
    	
    }
    
    
    @Path("/update/{id}")
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public model update_data(@PathParam("id") int id,model m) 
    {
    	model model=dao.update_model(id, m);
    
		return model;
    }
    
    
    @DELETE
    @Produces(MediaType.APPLICATION_JSON)
    public String delete(model m) 
    {
    	dao.delete_model(m);
		return "row deleted successfully!!!";
    	
    }
    
    
}
