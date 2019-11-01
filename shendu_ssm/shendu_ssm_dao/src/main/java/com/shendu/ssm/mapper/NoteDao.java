package com.shendu.ssm.mapper;

import com.shendu.ssm.domain.Note;

import java.util.List;

public interface NoteDao {

    List<Note> findAll();

    void addNote(Note note);

    void updateNote(Note note);

    void deleteNote(int id);

    Note findList(int id);
}
