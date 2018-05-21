//import java.util.List;
//
//import javax.ws.rs.GET;
//import javax.ws.rs.Path;
//import javax.ws.rs.PathParam;
//import javax.ws.rs.Produces;
//import javax.ws.rs.core.GenericEntity;
//import javax.ws.rs.core.MediaType;
//import javax.ws.rs.core.Response;
//import javax.ws.rs.core.Response.Status;
//
////import org.slf4j.Logger;
////import org.slf4j.LoggerFactory;
//
//import com.myapp.beans.Hero;
//import com.myapp.beans.Skins;
//import com.myapp.services.HeroService;
//import com.myapp.services.SkinService;
//
//@Path("/heroes")
//@Produces(MediaType.APPLICATION_JSON)
//public class HeroResource
//{
//	
//	//private final Logger log = LoggerFactory.getLogger(this.getClass());
//	HeroService heroServ = new HeroService();
//	SkinService skinServ = new SkinService();
//	
//	//RETURNS ALL THE PROFILES IN OUR DATABASE
//	@GET
//	@Produces(MediaType.APPLICATION_JSON)
//	public Response getHeroes()
//	{
//		System.out.println("Test");
//		List<Hero> hrs = heroServ.getAllHeroes();
//		System.out.println(hrs.toString());
//		GenericEntity<List<Hero>> list = new GenericEntity<List<Hero>>(hrs) {};
//		return Response.status(Status.OK).entity(list).header("Access-Control-Allow-Origin", "*").header("Access-Control-Allow-Methods", "GET, POST, DELETE, PUT").build();
//	}
//
//	//RETURNS A SPECIFIC PROFILE IN OUR DB
//	@GET
//	@Path("/{heroName}")
//	@Produces(MediaType.APPLICATION_JSON)
//	public Response getHeroOnName(@PathParam("heroName") String heroName)
//	{
//		Hero hr = heroServ.getHeroOnName(heroName);
//		System.out.println(hr.toString());
//		GenericEntity<Hero> list = new GenericEntity<Hero>(hr) {};
//		if(hr.getId() == 0)
//		{
//			return Response.status(Status.NOT_FOUND).entity(list).header("Access-Control-Allow-Origin", "*").header("Access-Control-Allow-Methods", "GET, POST, DELETE, PUT").build();
//		}
//		return Response.status(Status.OK).entity(list).header("Access-Control-Allow-Origin", "*").header("Access-Control-Allow-Methods", "GET, POST, DELETE, PUT").build();
//		
//	}
//	//RETURNS A SPECIFIC PROFILE IN OUR DB
//	@GET
//	@Path("/{heroName}/skins/")
//	@Produces(MediaType.APPLICATION_JSON)
//	public Response getHeroSkins(@PathParam("heroName") String heroName)
//	{
//		List<Skins> hr = skinServ.getHeroSkins(heroName);
//		GenericEntity<List<Skins>> list;
//		list = new GenericEntity<List<Skins>>(hr) {};
//		return Response.status(Status.OK).entity(list).header("Access-Control-Allow-Origin", "*").header("Access-Control-Allow-Methods", "GET, POST, DELETE, PUT").build();
//		
//	}
//}
