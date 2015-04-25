package com.shoutout.webservice;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Response;
import org.json.JSONException;
import org.json.JSONObject;


@Path("/audioclips")
public class DBHandlerService {
	Connection conn = null;
	Statement statement = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	String clipTitle=null;
	//create Json Object
	JSONObject json = new JSONObject();
	@GET
	@Path("/clip-id={param}")
	public Response getAudioClips(@PathParam("param") String msg){
		String returnString=null;
		try{
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");
			// Setup the connection with the DB
			conn = DriverManager.getConnection("jdbc:mysql://www.it354.com/it354_keschae?" +
					"user=it354_keschae&password=steinway");
			statement = conn.createStatement();
		      // Result set get the result of the SQL query
		      resultSet = statement.executeQuery("select * from audio_clips");
			// PreparedStatements can use variables and are more efficient
			//preparedStatement = conn.prepareStatement("select * from audio_clips limit 1");
			// Parameters start with 1
			//preparedStatement.setString(1, "Test");
			//preparedStatement.setString(2, "TestEmail");
		      int i=0;
		      while(resultSet.next()){
		    	  i++;
		    	  clipTitle = resultSet.getString("clipTitle");
		    	  json.put("ClipTitle"+i,clipTitle);
		      }
		}catch (Exception e) {
			e.printStackTrace();
		}
		

		// put some value pairs into the JSON object .
		try {
			
			
		} catch (JSONException e2) {
			e2.printStackTrace();
		}
		// finally output the json string       
		returnString = json.toString();
		return Response.status(200).entity(returnString).build();
	}
}

