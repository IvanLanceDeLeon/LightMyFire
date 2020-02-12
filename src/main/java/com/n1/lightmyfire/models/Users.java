package com.n1.lightmyfire.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;



@Entity
@Table(name="users")
public class Users {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Long id;
    @Email(message="Email must be valid")
    private String email;
    @NotEmpty(message = "Name may not be empty")
    private String fullName;
    @Size(min=8, message="Password must be greater than 8 characters")
    private String password;
    @Transient
    private String passwordConfirmation;
    @Column(updatable=false)
    private Date createdAt;
    private Date updatedAt;
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
    		name = "users_props",
    		joinColumns = @JoinColumn(name = "prop_id"),
    		inverseJoinColumns = @JoinColumn(name = "user_id")
    	)
    private List<Props> props;
    
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
    		name = "learned_skills",
    		joinColumns = @JoinColumn(name = "skill_id"),
    		inverseJoinColumns = @JoinColumn(name = "user_id")
    		)
    private List<Skills> learnedskills;
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
    		name = "skillsToLearn",
    		joinColumns = @JoinColumn(name = "skill_id"),
    		inverseJoinColumns = @JoinColumn(name = "user_id")
    		)
    private List<Skills> skillsToLearn;
    
    public Users() {
    }
    
    

    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
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


	public String getPasswordConfirmation() {
		return passwordConfirmation;
	}


	public void setPasswordConfirmation(String passwordConfirmation) {
		this.passwordConfirmation = passwordConfirmation;
	}


	public Date getCreatedAt() {
		return createdAt;
	}


	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}


	public Date getUpdatedAt() {
		return updatedAt;
	}


	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}


	public String getFullName() {
		return fullName;
	}


	public void setFullName(String fullName) {
		this.fullName = fullName;
	}



	public List<Props> getProps() {
		return props;
	}



	public void setProps(List<Props> props) {
		this.props = props;
	}



	public List<Skills> getLearnedskills() {
		return learnedskills;
	}



	public void setLearnedskills(List<Skills> learnedskills) {
		this.learnedskills = learnedskills;
	}
	
	
	
    
    
}