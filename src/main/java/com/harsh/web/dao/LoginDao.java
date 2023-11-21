package com.harsh.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import com.harsh.web.model.Login;

public class LoginDao {
	ArrayList<Login> rl = new ArrayList<Login>();
	
	public ArrayList<Login> getLogin(Boolean Lid, String lname, String lpass) {
	ResultSet rs = null;
	Statement st = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fastfood","root","Root@harsh"); // earlier user:"root", password:""
		st = con.createStatement();
		if(Lid==false) {
		rs = st.executeQuery("select * from customer where Fname = '"+lname+"' and Mobileno = '"+lpass+"'");
		while(rs.next()) {
			rl.add(new Login(Lid,rs.getString("Fname"),rs.getString("Mobileno")));
		}
		}
		else {
			rs = st.executeQuery("select * from admin where Username = '"+lname+"' and Pwd = '"+lpass+"'");
			while(rs.next()) {
				rl.add(new Login(Lid,rs.getString("Username"),rs.getString("Pwd")));
			}
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