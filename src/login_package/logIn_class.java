/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login_package;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Home
 */
class logIn_class {
     conn con = new conn();
    String username = "";
     String password = "";
    
    
    public int login(String USERNAME, String PASSWORD){
         
        int x = 0;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection(con.url,con.username,con.password);
            
            String sql = "SELECT * FROM `register` WHERE USERNAME = ? AND PASSWORD = MD5(?);";
            PreparedStatement pstmt = (PreparedStatement) conn.prepareStatement(sql);
            
            pstmt.setString(1, USERNAME);
            pstmt.setString(2, PASSWORD);
            
            ResultSet rs = pstmt.executeQuery();
            
            if(rs.next()){
                username = rs.getString("username");
                x = 1;
            }else{
                x = 0;
            }
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(logIn_class.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(logIn_class.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return x;
    } 
}
