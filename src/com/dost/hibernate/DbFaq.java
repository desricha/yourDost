package com.dost.hibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="FAQ")
public class DbFaq extends DbGeneric {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "faqId")
	private Long faqId;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "faqcategory", nullable = false)
	private DbFaqCategory category;
	//TODO: Is user related in any ways here
//	private DbUser user;
	@Column(name="question")
	private String question;
	@Column(name="answer")
	private String answer;
	
	
	public Long getFaqId() {
		return faqId;
	}
	public void setFaqId(Long faqId) {
		this.faqId = faqId;
	}
	public DbFaqCategory getCategory() {
		return category;
	}
	public void setCategory(DbFaqCategory category) {
		this.category = category;
	}
//	public DbUser getUser() {
//		return user;
//	}
//	public void setUser(DbUser user) {
//		this.user = user;
//	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
	
}
