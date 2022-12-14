package newpackage;

import static java.lang.System.out;
import java.sql.*;

public class UserDatabase {
    Connection con ;

    public UserDatabase(Connection con) {
        this.con = con;
    }
    
    //for register user 
    public boolean saveUser(user user){
        boolean set = false;
        try{
            //Insert register data to database
            String query = "insert into user(name,mobile,email,password) values(?,?,?,?)";
           
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setString(1, user.getName());
           pt.setString(2, user.getMobile());
           pt.setString(3, user.getEmail());
           pt.setString(4, user.getPassword());
           
           pt.executeUpdate();
           set = true;
        }catch(Exception e){
           e.printStackTrace();
        }
        return set;
    }
     public boolean updateUser(user user){
        boolean set =false ;
        try{
            //Insert register data to database
            String query = "UPDATE user SET name=?,mobile=?,email=?,password=? where id= ? ";
           
           PreparedStatement ptt = this.con.prepareStatement(query);
           ptt.setString(1, user.getName());
           ptt.setString(2, user.getMobile());
           ptt.setString(3, user.getEmail());
           ptt.setString(4, user.getPassword());
           ptt.setString(5, user.getId1());
          

           
           ptt.executeUpdate();
           set = true;
        }catch(Exception e){
           e.printStackTrace();
        }
        return set;
    }
    public user logUser(String email, String pass){
        user usr=null;
        try{
            String query ="select * from user where email=? and password=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, pass);
            
            ResultSet rs = pst.executeQuery();
            
            if(rs.next()){
                usr = new user();
                usr.setId(rs.getInt("id"));
                usr.setName(rs.getString("name"));
                usr.setMobile(rs.getString("mobile"));

                usr.setEmail(rs.getString("email"));
                usr.setPassword(rs.getString("password"));
                
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return usr;
    }
}

