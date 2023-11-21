package com.harsh.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.harsh.web.model.Stocks;

public class StocksDao {
	ArrayList<Stocks> rl=new ArrayList<Stocks>();


    public ArrayList<Stocks> getStaff() {
        ResultSet rs = null;
        java.sql.Statement st = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fastfood","root","");
            st = con.createStatement();
            rs = st.executeQuery("select * from stock");
            while(rs.next()) {
                rl.add(new Stocks(Integer.parseInt(rs.getString(1)),rs.getString(2),Integer.parseInt(rs.getString(3))));
            }
        } catch(Exception e) {
            e.printStackTrace();
        } finally {
    // Close ResultSet
    if (rs != null) {
        try {
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    // Close Statement
    if (st != null) {
        try {
            st.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
        return rl;
    }
}