package connector;

import java.io.*;
import java.sql.*;
import java.sql.Connection;

public class Main {
	public static void main(String[] args) throws Exception{
		
		//Create Connection(Member 1)
		
		String csvFile = "COVID - Confirmed.Deaths.csv";
		Connection connection = null;
		String lineText = null;
		
		int count = 0; 
		
		try
		{
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coronavirus?characterEncoding=UTF-8&serverTimezone=UTC", "root", "rmstjr95");
			
			Statement stmt = con.createStatement(); 

			BufferedReader lineReader = new BufferedReader(new FileReader(csvFile));

			lineReader.readLine();
			
			while((lineText = lineReader.readLine()) != null && count <= 203)
			{
				String [] data = lineText.split(",");
				String name = data[0]; //It's the second column of the table, is that how this works? - yes
				String numOfCases = data[1]; //It's the fifth column of the table
				String numOfDeaths = data[2];
				String numOfRecovered = data[3];
				String numOfTests = data[4];

				Integer iNumOfCases = Integer.parseInt(numOfCases);
				Integer iNumOfDeaths = Integer.parseInt(numOfDeaths);
				Integer iNumOfRecovered = Integer.parseInt(numOfRecovered);
				Integer iNumOfTests = Integer.parseInt(numOfTests);
				
				String sql = "INSERT INTO Country (name, numOfCases, numOfDeaths, numOfRecovered, numOfTests) VALUES ('"+name+"',"+iNumOfCases+","+iNumOfDeaths+","+iNumOfRecovered+","+iNumOfTests+")"; 
			   //System.out.println("[Country name " + name + " number of cases " + iNumOfCases + "]");
            
				
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
