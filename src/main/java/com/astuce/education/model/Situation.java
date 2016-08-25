package com.astuce.education.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name = "situation")
public class Situation {
	
	private Long id;
	private String degree;
	private String school;
	private String discipline;
	private String professionnal_wish;	
	private Student student;
	
	public Situation() {
		super();
		// TODO Auto-generated constructor stub
	}

    @Id
    @GeneratedValue(generator = "foreigngen")
    @GenericGenerator(strategy = "foreign", name="foreigngen", parameters = @Parameter(name = "property", value="student"))
    @Column(name = "id")
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getDiscipline() {
		return discipline;
	}

	public void setDiscipline(String discipline) {
		this.discipline = discipline;
	}

	public String getProfessionnal_wish() {
		return professionnal_wish;
	}

	public void setProfessionnal_wish(String professionnal_wish) {
		this.professionnal_wish = professionnal_wish;
	}

	@OneToOne(mappedBy = "situation")
	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}
		
}
