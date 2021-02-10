/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.esic.model;

import java.sql.Date;

/**
 *
 * @author Huawei
 */
public class User {
    private int id;
    private String nom;
    private String prenom;
    private String sexe;
    private String mail;
    private String mdp;
    private String poids;
    private String taille;
    private Date date;
    private String age;
    private String contenu;
    private String journalier;
    
    public User(){
        
    }

    public User(String nom, String prenom, String sexe, String mail, String mdp, String poids, String taille, String age) {
        this.nom = nom;
        this.prenom = prenom;
        this.sexe = sexe;
        this.mail = mail;
        this.mdp = mdp;
        this.poids = poids;
        this.taille = taille;
        this.age = age;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getSexe() {
        return sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getMdp() {
        return mdp;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    public String getPoids() {
        return poids;
    }

    public void setPoids(String poids) {
        this.poids = poids;
    }

    public String getTaille() {
        return taille;
    }

    public void setTaille(String taille) {
        this.taille = taille;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getContenu() {
        return contenu;
    }

    public void setContenu(String contenu) {
        this.contenu = contenu;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getJournalier() {
        return journalier;
    }

    public void setJournalier(String journalier) {
        this.journalier = journalier;
    }






    
    
    
}
