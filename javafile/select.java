package connector;

import java.io.*;
import java.sql.*;
import java.sql.Connection;
import java.util.Scanner;

public class Main {
	public static void main(String[] args) throws Exception {
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
				System.out.println("6. List victims by name and age with severe cases living in the U.S. Order by age.");
				System.out.println("7. Display countries  by name with the minimum / maximum  amount of deaths.");
				System.out.println("9. Display the number of cases in Spain with severe symptoms.");
				System.out.println("10. Count the number of tests that did not result in a number of cases in United States");
				System.out.println("11. List the number of cases by country in descending order.");
				System.out.println("12. Display country with the greatest number of cases and lowest number of deaths.");
				System.out.println("13.Display Hospitals in Descending order by number of confirmed cases in China.");
				System.out.println("14. Display Hospitals in Ascending order by number of cases in the United States (Or given country)");
				System.out.println("15. Display Total Number of Victims Treated at Kyoto University Hospital that spent 14 days or more in quarantine with severe symptoms");
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

		}

		catch (SQLException e) {
			System.out.println("error " + e);
		}
	}
}
