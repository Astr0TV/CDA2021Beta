/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.esic.connected;


import java.sql.ResultSet;
import fr.esic.model.User;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Date;

/**
 *
 * @author Huawei
 */
public class Requete {
    
    public static User getLoginAndPassword(String log, String mdp) throws SQLException{
        User u = null;
        String sql="Select * FROM person where mail=? AND mdp=?";
        Connection connexion = Bd.getConnection();
        
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, log);
        prepare.setString(2, mdp);
        
        ResultSet rs = prepare.executeQuery();
        
         if(rs.next()){
            u = new User();
            u.setId(rs.getInt("idperson"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setSexe(rs.getString("sexe"));
            u.setMail(rs.getString("mail"));
            u.setMdp(rs.getString("mdp"));
            u.setPoids(rs.getString("poids"));
            u.setTaille(rs.getString("taille"));
            u.setAge(rs.getString("age"));
            u.setDate(rs.getDate("dated1"));
            u.setContenu(rs.getString("contenu"));
            u.setJournalier(rs.getInt("journalier"));
            u.setType(rs.getString("type"));
            u.setTemps(rs.getString("temp"));
            u.setObjectpoids(rs.getString("objectpoids"));
        }
        
        return u;
        
    }
    
    public static void updateDate(String log) throws SQLException {
        String  sql = "update person set dated1=sysdate() where mail=?";
        Connection connexion = Bd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
         prepare.setString(1, log);
         prepare.execute();

    }
    
       public static void updateProfile(String nom, String prenom, String sexe, String mdp, String poids, String taille,String age, String log) throws SQLException {
        String  sql = "update person set nom=?, prenom=?, sexe=?, mdp=?, poids=?, taille=?, age=? where mail=?";
        Connection connexion = Bd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
         prepare.setString(1, nom);
         prepare.setString(2, prenom);
         prepare.setString(3, sexe);
         prepare.setString(4, mdp);
         prepare.setString(5, poids);
         prepare.setString(6, taille);
         prepare.setString(7, age);
         prepare.setString(8, log);
         prepare.execute();

    }
    
      public static void insertPerson(User u) throws SQLException {
     String  sql = "INSERT INTO person (nom, prenom, sexe, mail, mdp, poids, taille, age) VALUES (?,?,?,?,?,?,?,?)";
     Connection connexion = Bd.getConnection();
   
            PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, u.getNom());
        prepare.setString(2, u.getPrenom());
        prepare.setString(3, u.getSexe());
        prepare.setString(4, u.getMail());
        prepare.setString(5, u.getMdp());
        prepare.setString(6, u.getPoids());
        prepare.setString(7, u.getTaille());
        prepare.setString(8, u.getAge());
        
         prepare.execute();
        
             }
        public static void insertObjective(String contenu,String log) throws SQLException {
                 String  sql = "update person set contenu=? where mail=?";
         Connection connexion = Bd.getConnection();
         PreparedStatement prepare = connexion.prepareStatement(sql);
         prepare.setString(1, contenu);
         prepare.setString(2, log);
         prepare.execute();
            }
        
                public static void insertJournalier(int journalier,Object type, Object temp,String log) throws SQLException {
                 String  sql = "update person set journalier=?, type=?, temp=? where mail=?";
         Connection connexion = Bd.getConnection();
         PreparedStatement prepare = connexion.prepareStatement(sql);
         prepare.setInt(1, journalier);
         prepare.setObject(2, type);
         prepare.setObject(3, temp);
         prepare.setString(4, log);
         prepare.execute();
            }
                
       public static void UpdatePoids(String objectpoids,String log) throws SQLException{
           String sql ="Update person set objectpoids=? where mail=?";
           Connection connexion = Bd.getConnection();
           PreparedStatement prepare = connexion.prepareStatement(sql);
           prepare.setString(1, objectpoids);
           prepare.setString(2, log);
           prepare.execute();
       }
       
       public static void DeleteBd(String log) throws SQLException{
              String sql ="Update person set journalier=0 where mail=?";
           Connection connexion = Bd.getConnection();
           PreparedStatement prepare = connexion.prepareStatement(sql);
           prepare.setString(1, log);
           prepare.execute();
       }
    
}
