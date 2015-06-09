package com.zhbit.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * Note entity. @author MyEclipse Persistence Tools
 */

public class Note  implements java.io.Serializable {


    // Fields    

     private Integer nid;
     private User user;
     private String title;
     private String content;
     private Date ntime;
     private Set follownotes = new HashSet(0);


    // Constructors

    /** default constructor */
    public Note() {
    }

	/** minimal constructor */
    public Note(User user, String title, String content, Date ntime) {
        this.user = user;
        this.title = title;
        this.content = content;
        this.ntime = ntime;
    }
    
    /** full constructor */
    public Note(User user, String title, String content, Date ntime, Set follownotes) {
        this.user = user;
        this.title = title;
        this.content = content;
        this.ntime = ntime;
        this.follownotes = follownotes;
    }

   
    // Property accessors

    public Integer getNid() {
        return this.nid;
    }
    
    public void setNid(Integer nid) {
        this.nid = nid;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return this.content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }

    public Date getNtime() {
        return this.ntime;
    }
    
    public void setNtime(Date ntime) {
        this.ntime = ntime;
    }

    public Set getFollownotes() {
        return this.follownotes;
    }
    
    public void setFollownotes(Set follownotes) {
        this.follownotes = follownotes;
    }
   








}