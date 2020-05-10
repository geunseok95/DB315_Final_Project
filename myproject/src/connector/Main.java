package connector;

import java.io.*;
import java.sql.*;
import java.sql.Connection;
import java.util.Scanner;

public class Main {
	public static void main(String[] args) throws Exception {

		// Create Connection(Member 1)

		// String csvFile = "COVID - Confirmed.Deaths.csv"; //country file

		// String csvFile = "COVID People.csv"; //people file

		// String csvFile = "COVID Symptom.csv"; //symptom file

		// String csvFile = "COVID Hospital.csv"; //hospital file

		Connection connection = null;
		String lineText = null;

		int count = 0;

		try {

			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/coronavirus?characterEncoding=UTF-8&serverTimezone=UTC", "root",
					"rmstjr95");

			Statement stmt = con.createStatement();

			Scanner kbd = new Scanner(System.in);
			int choice = 1;

			do {
				System.out.println("1. Count the number of infected people who have mild symptoms.");
				System.out.println("2. List the name of countries where the number of patience is more than 50000.");
				System.out.println("3. Name of the youngest infected person living in United states.");
				System.out.println("4.Count the number of people who has severe symptom and is living in Brazil.");
				System.out.println("5. Count the number of victims over the age of 55.");
				System.out
						.println("6. List victims by name and age with severe cases living in the U.S. Order by age.");
				System.out.println("7. Display countries  by name with the minimum / maximum  amount of deaths.");
				System.out.println("9. Display the number of cases in Spain with severe symptoms.");
				System.out.println(
						"10. Count the number of tests that did not result in a number of cases in United States");
				System.out.println("11. List the number of cases by country in descending order.");
				System.out
						.println("12. Display country with the greatest number of cases and lowest number of deaths.");
				System.out.println("13.Display Hospitals in Descending order by number of confirmed cases in China.");
				System.out.println(
						"14. Display Hospitals in Ascending order by number of cases in the United States (Or given country)");
				System.out.println(
						"15. Display Total Number of Victims Treated at Kyoto University Hospital that spent 14 days or more in quarantine with severe symptoms");
				System.out.print("Select a query");

				choice = kbd.nextInt();
				System.out.println();

				if (choice == 1) {
					String sql = "select count(pid) from people, symptom where people.pid = symptom.people_id and severity = 'mild'";
					ResultSet rs = stmt.executeQuery(sql);

					while (rs.next()) {

						int a = rs.getInt(1);

						System.out.println(a);
					}
				} else if (choice == 2) {
					String sql = "select name from country where numOfCases >= 50000";
					ResultSet rs = stmt.executeQuery(sql);

					while (rs.next()) {

						String a = rs.getString(1);

						System.out.println(a);
					}
				} else if (choice == 3) {
					String sql = "Select p.name as PatientName, p.age From People as p Where p.country_name = \"United States\" order by p.age asc limit 1";
					ResultSet rs = stmt.executeQuery(sql);
					while (rs.next()) {

						String a = rs.getString(1);
						int b = rs.getInt(2);

						System.out.println(a + " " + b);
					}
				} else if (choice == 4) {
					String sql = "Select Count(p.pid) From people as p, symptom as S Where p.pid = s.people_id and s.severity = 'severe' and p.country_name = 'Brazil'";
					ResultSet rs = stmt.executeQuery(sql);

					while (rs.next()) {

						int a = rs.getInt(1);

						System.out.println(a);
					}
				} else if (choice == 5) {
					String sql = "Select Count(p.pid) From People as p Where p.age > 55";
					ResultSet rs = stmt.executeQuery(sql);

					while (rs.next()) {

						int a = rs.getInt(1);

						System.out.println(a);
					}
				} else if (choice == 6) {
					String sql = "Select p.name, p.age From People as p, Symptom as s Where p.pid = s.people_id and s.severity = 'severe' and p.country_name = 'United States' order by p.age desc";
					ResultSet rs = stmt.executeQuery(sql);

					while (rs.next()) {

						String a = rs.getString(1);
						int b = rs.getInt(2);

						System.out.println(a + " " + b);
					}
				} else if (choice == 7) {
					String sql = "select name, numOfDeaths from country where numOfDeaths = (select min(numOfDeaths) from country) Union select name, numOfDeaths from country where numOfDeaths = (select max(numOfDeaths) from country)";
					ResultSet rs = stmt.executeQuery(sql);

					while (rs.next()) {

						String a = rs.getString(1);
						int b = rs.getInt(2);

						System.out.println(a + " " + b);
					}
				} else if (choice == 8) {
					String sql = "select Count(p.pid) AS InfectedTotal from people AS p, symptom AS s where p.pid = s.people_id AND S.Severity = 'moderate'";
					ResultSet rs = stmt.executeQuery(sql);

					while (rs.next()) {

						int a = rs.getInt(1);

						System.out.println(a);
					}
				} else if (choice == 9) {
					String sql = "select count(P.pid) from country AS C, people AS P, symptom AS S where C.name = P.country_name AND P.pid = S.people_id AND P.country_name = 'Spain' AND S.severity = 'severe'";
					ResultSet rs = stmt.executeQuery(sql);

					while (rs.next()) {

						int a = rs.getInt(1);

						System.out.println(a);
					}
				} else if (choice == 10) {
					String sql = "select numOfTests - numOfCases AS negativeTests from country Where country.name = 'United States'";
					ResultSet rs = stmt.executeQuery(sql);

					while (rs.next()) {

						int a = rs.getInt(1);

						System.out.println(a);
					}
				} else if (choice == 11) {
					String sql = "select name, numOfCases from Country Order by numOfCases desc";
					ResultSet rs = stmt.executeQuery(sql);

					while (rs.next()) {

						String a = rs.getString(1);
						int b = rs.getInt(2);

						System.out.println(a + " " + b);
					}
				} else if (choice == 12) {
					String sql = "select c.name, c.numOfDeaths from country as c where c.numOfDeaths = (select max(numOfDeaths) from country) or c.numOfDeaths = (select min(numOfDeaths) from country) order by c.numOfDeaths desc";
					ResultSet rs = stmt.executeQuery(sql);

					while (rs.next()) {

						String a = rs.getString(1);
						int b = rs.getInt(2);

						System.out.println(a + " " + b);
					}
				} else if (choice == 13) {
					String sql = "select H.name, Count(P.hospital_id) from Hospital AS H, People AS P where H.hid = P.hospital_id AND h.country_name = 'China' group by H.name order by Count(P.hospital_id) desc";
					ResultSet rs = stmt.executeQuery(sql);

					while (rs.next()) {

						String a = rs.getString(1);
						int b = rs.getInt(2);

						System.out.println(a + " " + b);
					}
				} else if (choice == 14) {
					String sql = "select H.name, Count(P.hospital_id) from Hospital AS H, People AS P where H.hid = P.hospital_id AND h.country_name = 'United states' group by H.name order by Count(P.hospital_id) asc";
					ResultSet rs = stmt.executeQuery(sql);

					while (rs.next()) {

						String a = rs.getString(1);
						int b = rs.getInt(2);

						System.out.println(a + " " + b);
					}
				} else {
					String sql = "select count(p.pid) from people as p, hospital as h, symptom as s where p.pid = s.people_id and p.hospital_id = h.hid and h.name = 'Kyoto University' and p.quarantine_days >= 14 and s.severity = 'severe'";
					ResultSet rs = stmt.executeQuery(sql);

					while (rs.next()) {

						int a = rs.getInt(1);

						System.out.println(a);
					}
				}
				System.out.println();

			} while (choice >= 1 && choice <= 15);
			kbd.close();
			/*
			 * String sql =
			 * "select count(pid) from people, symptom where people.pid = symptom.people_id and severity = 'mild'"
			 * ; ResultSet rs = stmt.executeQuery(sql);
			 * 
			 * while(rs.next()){
			 * 
			 * String a = rs.getString(1); int b = rs.getInt(2);
			 * 
			 * System.out.println(a + " " +b); }
			 */

			/*
			 * BufferedReader lineReader = new BufferedReader(new FileReader(csvFile));
			 * 
			 * lineReader.readLine();
			 */

			// insert record into country table

			/*
			 * while((lineText = lineReader.readLine()) != null && count <= 199) { String []
			 * data = lineText.split(","); String name = data[0]; //It's the second column
			 * of the table, is that how this works? - yes String numOfCases = data[1];
			 * //It's the fifth column of the table String numOfDeaths = data[2]; String
			 * numOfRecovered = data[3]; String numOfTests = data[4];
			 * 
			 * Integer iNumOfCases = Integer.parseInt(numOfCases); Integer iNumOfDeaths =
			 * Integer.parseInt(numOfDeaths); Integer iNumOfRecovered =
			 * Integer.parseInt(numOfRecovered); Integer iNumOfTests =
			 * Integer.parseInt(numOfTests);
			 * 
			 * String sql =
			 * "INSERT INTO Country (name, numOfCases, numOfDeaths, numOfRecovered, numOfTests) VALUES ('"
			 * +name+"',"+iNumOfCases+","+iNumOfDeaths+","+iNumOfRecovered+","+iNumOfTests+
			 * ")"; //System.out.println("[Country name " + name + " number of cases " +
			 * iNumOfCases + "]"); Boolean ret = stmt.execute(sql);
			 * 
			 * count++; }
			 */

			// insert record into people table
			/*
			 * while((lineText = lineReader.readLine()) != null && count <= 199) { String []
			 * data = lineText.split(","); String pid = data[0]; String name = data[1];
			 * String age = data[2]; String quarantine_days = data[3]; String country_name =
			 * data[4]; String hid = data[5];
			 * 
			 * 
			 * Integer iPid = Integer.parseInt(pid); Integer iAge = Integer.parseInt(age);
			 * Integer iQuarantine_days = Integer.parseInt(quarantine_days); Integer iHid =
			 * Integer.parseInt(hid);
			 * 
			 * 
			 * String sql =
			 * "INSERT INTO People (pid, name, age, quarantine_days, country_name, hospital_id) VALUES ("
			 * +iPid+",'"+name+"',"+iAge+","+iQuarantine_days+",'"+country_name+"',"+iHid+
			 * ")"; Boolean ret = stmt.execute(sql);
			 * 
			 * count++; }
			 */

			// insert record into symptom table
			/*
			 * while((lineText = lineReader.readLine()) != null && count <= 199) { String []
			 * data = lineText.split(","); String severity = data[0]; String startMonth =
			 * data[1]; String pid = data[2];
			 * 
			 * 
			 * Integer iPid = Integer.parseInt(pid);
			 * 
			 * 
			 * String sql =
			 * "INSERT INTO Symptom (severity, startMonth, people_id) VALUES ('"+severity+
			 * "','"+startMonth+"',"+iPid+")"; Boolean ret = stmt.execute(sql);
			 * 
			 * count++; }
			 */

			// insert record into hospital table
			/*
			 * while((lineText = lineReader.readLine()) != null && count <= 199) { String []
			 * data = lineText.split(","); String hid = data[0]; String name = data[1];
			 * String location = data[2];
			 * 
			 * Integer iHid = Integer.parseInt(hid);
			 * 
			 * 
			 * String sql =
			 * "INSERT INTO Hospital (hid, name, country_name) VALUES ("+iHid+",'"+name+
			 * "','"+location+"')";
			 * 
			 * Boolean ret = stmt.execute(sql);
			 * 
			 * count++; }
			 */

			// lineReader.close();
			// con.close();
		}

		/*
		 * catch (FileNotFoundException ex) { System.out.println("Error"); } catch
		 * (IOException e) { // TODO Auto-generated catch block e.printStackTrace(); }
		 * 
		 * catch( ClassNotFoundException e){ System.out.println("error"); }
		 */
		catch (SQLException e) {
			System.out.println("error " + e);
		}
	}
}
