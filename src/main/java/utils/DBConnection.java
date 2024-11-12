package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConnection {
    
    private static final String URL = "jdbc:mysql://localhost:3306/blog";
    private static final String USERNAME = "angrej";
    private static final String PASSWORD = "13ac23ff";

    public static Connection getConnection() throws Exception {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish and return a connection to the database
        Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        
        if (connection != null) {
            System.out.println("Database connected successfully!");
            displayTables(connection); // Call the method to display tables
        } else {
            System.out.println("Failed to connect to the database.");
        }
        
        return connection;
    }

    // Method to display all table names in the connected database
    private static void displayTables(Connection connection) {
        try (Statement stmt = connection.createStatement()) {
            // Query to get all table names in the current database
            String query = "SHOW TABLES";
            ResultSet rs = stmt.executeQuery(query);

            System.out.println("Tables in the database:");
            while (rs.next()) {
                System.out.println("- " + rs.getString(1));
            }
        } catch (Exception e) {
            System.err.println("Error retrieving table information: " + e.getMessage());
        }
    }
}
