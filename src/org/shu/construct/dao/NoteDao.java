package org.shu.construct.dao;

import java.util.ArrayList;
import org.shu.model.Note;
import common.db.GenericHibernateDao;

public class NoteDao extends GenericHibernateDao<Note, Integer> {
	public ArrayList<Note> getAll() {
		String sql = "select * from note";
		ArrayList<Note> list = (ArrayList<Note>) this.sqlFind(sql);
		return list;
	}

	public ArrayList<Note> getById(int id) {
		String sql = "select * from note where id=" + id;
		ArrayList<Note> list = (ArrayList<Note>) this.sqlFind(sql);
		return list;
	}
	public ArrayList<Note> getByEmail(String email) {
		String sql = "select * from note where email='" + email+"';";
		ArrayList<Note> list = (ArrayList<Note>) this.sqlFind(sql);
		return list;
	}

	public void addNote(Note note) {
		this.getHibernateTemplate().save(note);
	}

	public void editNote(Note note) {
		this.getHibernateTemplate().update(note);
	}

	public void deleteNote(Note note) {
		this.getHibernateTemplate().delete(note);
	}
}
