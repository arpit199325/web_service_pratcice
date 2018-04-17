package AngularHibernateRest.AngularHibernateRest;

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

import com.model.datadao;
import com.model.model;

@Path("/testing")
public class MyResource {

    datadao dao = new datadao();
    @Path("/test")
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String message() 
    {
		return "hello world";
    	
    	
    }
    
    
    
    @Path("/riskdatasearch/{equality}/{risk}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<model> riskdatasearch(@PathParam("equality") String equality,@PathParam("risk") String risk)
    {
    	List<model> riskbydata=dao.risk_data_search(equality,risk);
    	
		return riskbydata;
    	
    	
    }
    
    @Path("/test/{zipcode}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
     public List<model> zipcode_data(@PathParam("zipcode") int zipcode)
    {
    	 List<model> all_list = dao.get_zipcode(zipcode);
         return all_list;
    	 
    }
    
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<model> getdata() {
      
        List<model> all_list = dao.get_alldata();
        return all_list;
    }
    
    @POST
    @Path("/validationtest")
    @Consumes(MediaType.APPLICATION_JSON) 
    @Produces(MediaType.APPLICATION_JSON)
    public model validation(model m) 
    {
    	
//    	m.setCity(m.getCity());
//    	m.setRisk_level(m.getRisk_level());
//    	m.setState(m.getState());
//    	m.setZipcode(m.getZipcode());
//    	
    	model model=dao.input_validation(m);
    	
		return model;

    }
    
    
    
    /*getter setter base add method*/
    @POST
    @Path("/add")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public model add_data(model m)  
    {
    	model model=new model();
    	
    	model.setCity(m.getCity());
    	model.setRisk_level(m.getRisk_level());
    	model.setState(m.getState());
    	model.setZipcode(m.getZipcode());
    	
    	 dao.add_data_new_mehtod(m);
		return m;
    
    }
    
       
    @PUT
    @Path("/update")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public model updateEmployee(model m){
       
        model count = dao.update_data(m);
        return count;
    }
    
    @DELETE
    @Path("/delete/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response deleteEmployee(@PathParam("id") int id){
       
        int count = dao.delete_data(id);
        if(count==0){
            return Response.status(Response.Status.BAD_REQUEST).build();
        }
        return Response.ok("Row deleted with id = " +id).build();
    }
    
    
}
