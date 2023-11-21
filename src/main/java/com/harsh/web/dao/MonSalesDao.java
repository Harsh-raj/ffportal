package com.harsh.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.harsh.web.model.MonSales;

public class MonSalesDao {
	ArrayList<MonSales> rl=new ArrayList<MonSales>();
	
	public ArrayList<MonSales> getMonSales() {
	ResultSet rs = null;
	Statement st = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fastfood","root","");
		st = con.createStatement();
		rs = st.executeQuery("select * from monsales");
			while(rs.next()) {
				rl.add(new MonSales(Integer.parseInt(rs.getString(1)),Long.parseLong(rs.getString(2)),rs.getString(3),Integer.parseInt(rs.getString(4))));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
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