package org.shu.construct.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import org.shu.construct.service.NoteService;
import org.shu.model.Note;
import com.opensymphony.xwork2.ActionContext;
import common.base.action.BaseAction;

public class NoteAction extends BaseAction {
	private NoteService noteService;
	public void setNoteService(NoteService noteService) {
		this.noteService = noteService;
	}

	public String deleteNote() {
		int id = Integer.parseInt(request.getParameter("id"));
		Note note = new Note();
		note.setId(id);
		noteService.deleteNote(note);
		ArrayList<Note> list = noteService.getAll();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", list);
		return SUCCESS;
	}

	public String getToday() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String today = sdf.format(date);
		return today;
	}

	public String addNote() throws Exception {
		String name = request.getParameter("name").trim();
		String mobile = request.getParameter("mobile").trim();
		String address = request.getParameter("address").trim();
		String email = request.getParameter("email").trim();
		String message = request.getParameter("message").trim();
		Note note = new Note();
		note.setName(name);
		note.setMobile(mobile);
		note.setEmail(email);
		note.setAddress(address);
		note.setMessage(message);
		note.setDate(getToday());
		noteService.addNote(note);
		ArrayList<Note> list = noteService.getAll();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", list);
		return SUCCESS;
	}

	public String getAll() {
		ArrayList<Note> list = noteService.getAll();
		if (list.size() > 0) {
			Map request = (Map) ActionContext.getContext().get("request");
			request.put("list", list);
		}
		return SUCCESS;
	}
}