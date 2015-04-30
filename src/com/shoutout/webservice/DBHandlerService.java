package com.shoutout.webservice;


import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Response;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;


@Path("/audioclips")
public class DBHandlerService {
	Connection conn = null;

	@GET
	@Path("/clip-id={param}")
	public Response getAudioClips(@PathParam("param") String msg){
		JSONObject finalJSON = new JSONObject();//This will store allClips
		JSONArray allClips = new JSONArray();//Collection of single clips
		JSONObject singleClip = null;//JSON Object to store single clip
		
		Statement statement = null;
		ResultSet resultSet = null;
		String clipId="";
		String clipTitle=null;
		String clipTags=null;
		String clipCategory=null;
		Date uploadTIme=null;
		String clipImageUrl=null;
		String clipAudioUrl=null;
		try{
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");
			// Setup the connection with the DB
			conn = DriverManager.getConnection("jdbc:mysql://www.it354.com/it354_keschae?" +
					"user=username&password=password");
			statement = conn.createStatement();
			// Result set get the result of the SQL query
			resultSet = statement.executeQuery("select * from audio_clips");
			
			while(resultSet.next()){
				singleClip = new JSONObject();
				clipId = clipId+resultSet.getInt("clipId");
				clipTitle = resultSet.getString("clipTitle");
				clipTags = resultSet.getString("clipTags");
				clipCategory = resultSet.getString("clipCategory");
				clipImageUrl = resultSet.getString("clipImageUrl");
				clipAudioUrl = resultSet.getString("clipAudioUrl");
				uploadTIme = resultSet.getDate("uploadTIme");
				singleClip.put("ClipId",clipId);
				singleClip.put("ClipTitle",clipTitle);
				singleClip.put("ClipTags",clipTags);
				singleClip.put("ClipCategory",clipCategory);
				singleClip.put("ClipImageURL", clipImageUrl);
				singleClip.put("ClipAudioURL", clipAudioUrl);
				singleClip.put("ClipUploadTime", uploadTIme);
				allClips.put(singleClip);
				clipId="";
			}
			finalJSON.put("AllClips",allClips);
		}catch (Exception e) {
			e.printStackTrace();
		}


		// put some value pairs into the JSON object .
		try {


		} catch (JSONException e2) {
			e2.printStackTrace();
		}
		// finally output the json string       
		String returnString = finalJSON.toString();
		return Response.status(200).entity(returnString).build();
	}
}

