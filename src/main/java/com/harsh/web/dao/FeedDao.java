package com.harsh.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import com.harsh.web.model.Feed;

public class FeedDao {
ArrayList<Feed> rl=new ArrayList<Feed>();

SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy");

	
	public ArrayList<Feed> getFeed() {
	ResultSet rs = null;
	Statement st = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fastfood","root","Root@harsh");
		st = con.createStatement();
		rs = st.executeQuery("select * from feedupdate");
		while(rs.next()) {	
			rl.add(new Feed(Integer.parseInt(rs.getString(1)),Long.parseLong(rs.getString(2)),rs.getString(3),rs.getString(4)));
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