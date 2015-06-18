package com.zhbit.domain;

import java.sql.Timestamp;
import java.util.Date;


/**
 * Follownote entity. @author MyEclipse Persistence Tools
 */

public class Follownote  implements java.io.Serializable {


    // Fields    

     private Integer fid;
     private Note note;
     private User user;
     private String followcontent;
     private Timestamp ftime;


    // Constructors

    /** default constructor */
    public Follownote() {
    }

    
    /** full constructor */
    public Follownote(Note note, User user, String followcontent, Timestamp ftime) {
        this.note = note;
        this.user = user;
        this.followcontent = followcontent;
        this.ftime = ftime;
    }

   
    // Property accessors

    public Integer getFid() {
        return this.fid;
    }
    
    public void setFid(Integer fid) {
        this.fid = fid;
    }

    public Note getNote() {
        return this.note;
    }
    
    public void setNote(Note note) {
        this.note = note;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public String getFollowcontent() {
        return this.followcontent;
    }
    
    public void setFollowcontent(String followcontent) {
        this.followcontent = followcontent;
    }

    public Timestamp getFtime() {
        return this.ftime;
    }
    
    public void setFtime(Timestamp ftime) {
        this.ftime = ftime;
    }
   








}