package connector;

import java.io.*;
import java.sql.*;
import java.sql.Connection;

public class Main {
	public static void main(String[] args) throws Exception{
		
		
		
		String csvFile = "COVID People.csv";

		
		
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
				String pid = data[0]; 
				String name = data[1];
				String age = data[2]; 
				String quarantine_days = data[3];
				String country_name = data[4];	
    

				Integer iPid = Integer.parseInt(pid);
				Integer iAge = Integer.parseInt(age);
				Integer iQuarantine_days = Integer.parseInt(quarantine_days);
           
				
				String sql = "INSERT INTO People (pid, name, age, quarantine_days, country_name) VALUES ("+iPid+",'"+name+"',"+iAge+","+iQuarantine_days+",'"+country_name+"')"; 
			   
            
				
				
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
