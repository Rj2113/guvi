/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */ package newpackage;


public class user {
    int id;
    String id1;
    String name;
    String email;
    String password;
    String mobile;
    public user() {
    }

    public user(int id, String name,String mobile, String email,String password) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.mobile = mobile;
     
              
        this.password = password;
      
    }
    public user(String id, String name,String mobile, String email,String password) {
        this.id1 = id;
        this.name = name;
        this.email = email;
        this.mobile = mobile;
     
              
        this.password = password;
      
    }

    public user(String name,String mobile, String email, String password) {
        this.name = name;
        this.mobile = mobile;
        
        this.email = email;
        this.password = password;
       
    }

    public user(String email, String password) {
        this.email = email;
        this.password = password;

    }
    
  

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
     public String getId1() {
        return id1;
    }

    public void setId1(String id1) {
        this.id1 = id1;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
     public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
     
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
}
