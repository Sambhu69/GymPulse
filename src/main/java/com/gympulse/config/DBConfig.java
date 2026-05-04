package com.gympulse.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * DBConfig manages the database connection for the GymPulse application.
 */
public class DBConfig {
    // Database connection details
    private static final String URL = "jdbc:mysql://localhost:3306/gympulse";
    private static final String USER = "root";
    private static final String PASS = ""; // Default empty password for local development

    /**
     * Returns a connection to the MySQL database.
     */
    public static Connection getConnection() throws SQLException {
        try {
            // Load the MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println("JDBC Driver not found: " + e.getMessage());
        }
        return DriverManager.getConnection(URL, USER, PASS);
    }
}
