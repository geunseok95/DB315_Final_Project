package connector;

import java.io.*;
import java.sql.*;
import java.sql.Connection;

public class Main {
	public static void main(String[] args) throws Exception{
		
	
		String csvFile = "COVID Hospital.csv";


		
		Connection connection = null;
		String lineText = null;
		
		int count = 0; 
		
		try
		{
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coronavirus?characterEncoding=UTF-8&serverTimezone=UTC", "root", "rmstjr95");
			
			Statement stmt = con.createStatement(); 

			BufferedReader lineReader = new BufferedReader(new FileReader(csvFile));

			lineReader.readLine();
			
			while((lineText = lineReader.readLine()) != null && count <= 199)
			{
								
				String [] data = lineText.split(",");
				String hid = data[0]; 
				String name = data[1]; 
				String location = data[2];

				Integer iHid = Integer.parseInt(hid);
           
				
				String sql = "INSERT INTO Hospital (hid, name, country_name) VALUES ("+iHid+",'"+name+"','"+location+"')"; 
				
				Boolean ret = stmt.execute(sql);
				
				count++;

			}
			
			lineReader.close();
			//con.close();
		}
		
		catch (FileNotFoundException ex) 
		{
			System.out.println("Error");
		} 
		catch (IOException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
}
