package com.dost.service;

import java.util.List;

import com.dost.hibernate.DbNote;

public interface NoteService {

	public List<DbNote> getAllNotesForMsgId(Long msgId);
	public DbNote saveNote(DbNote note);
}
