package com.dost.hibernate;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonBackReference;

@Entity
@Table(name="conversationnote")
public class DbNote extends DbGeneric implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "noteid")
	private Long noteId;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "messageId", nullable = false)
	private DbMessage message;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "userid", nullable = false)
	private DbUser user;
	
	@Column(name="note")
	private String note;

	@Column(name="notedate")
	private String noteDate;
	
	public Long getNoteId() {
		return noteId;
	}

	public void setNoteId(Long noteId) {
		this.noteId = noteId;
	}

	public DbMessage getMessage() {
		return message;
	}

	public void setMessage(DbMessage message) {
		this.message = message;
	}

	public DbUser getUser() {
		return user;
	}

	public void setUser(DbUser user) {
		this.user = user;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getNoteDate() {
		return noteDate;
	}

	public void setNoteDate(String noteDate) {
		this.noteDate = noteDate;
	}
	
	
}
