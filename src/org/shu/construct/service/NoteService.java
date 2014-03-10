package org.shu.construct.service;

import java.util.ArrayList;
import org.shu.construct.dao.NoteDao;
import org.shu.model.Note;

public class NoteService {

	private NoteDao noteDao;		
	
	public void setNoteDao(NoteDao noteDao) {
		this.noteDao = noteDao;
	}
	public ArrayList<Note> getByEmail(String email) {
		return noteDao.getByEmail(email);
	}
	public void addNote(Note note) {
		noteDao.addNote(note);
	}
	public void editNote(Note note) {
		noteDao.editNote(note);
	}
	public ArrayList<Note> getAll()
	{		
		return noteDao.getAll();
	}	
	public void deleteNote(Note note) {
		noteDao.delete(note);
	}
	public ArrayList<Note> getById(int id) {
		return noteDao.getById(id);
	}
}
