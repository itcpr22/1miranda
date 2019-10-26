/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login_package;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.awt.List;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Home
 */
public class product {
    conn con = new conn();
    public int addProduct(String Product_name, int Quantity, Object Price){
        int be = 0;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection(con.url,con.username,con.password);
            
            String sql = "insert into product values(null,?,?,?);";
            PreparedStatement pstmt = (PreparedStatement) conn.prepareStatement(sql);
            
            String np = Price.toString();
            float newprice = Float.parseFloat(np);
                    
            pstmt.setString(1, Product_name);
            pstmt.setInt(2, Quantity);
            pstmt.setFloat(3, newprice);
            
            be = pstmt.executeUpdate();
            //System.out.println(pstmt);
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(product.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(product.class.getName()).log(Level.SEVERE, null, ex);
        }
        return be;
    }
      
    public int deleteProduct(Object Product_ID){
        int be = 0;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection(con.url,con.username,con.password);
            
            String sql = "DELETE FROM product WHERE Product_ID = ?;";
            PreparedStatement pstmt = (PreparedStatement) conn.prepareStatement(sql);
            
            int newid = Integer.parseInt(Product_ID.toString());
            pstmt.setInt(1, newid);
            
            be = pstmt.executeUpdate();
            //System.out.println(pstmt);
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(product.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(product.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return be;
    }

}
