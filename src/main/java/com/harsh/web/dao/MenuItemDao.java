package com.harsh.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.harsh.web.model.MenuItem;

public class MenuItemDao {
ArrayList<MenuItem> rl=new ArrayList<MenuItem>();
	
	public ArrayList<MenuItem> getMenuItem() {
	ResultSet rs = null;
	Statement st = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fastfood","root","Root@harsh");
		st = con.createStatement();
		
		rs = st.executeQuery("select * from fastfood");
		if(rs.next()) {
			while(rs.next()) {
				rl.add(new MenuItem(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(4)));
			}
		}
		else {
			rl=null;
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