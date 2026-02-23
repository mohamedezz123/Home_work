/* 1. Notes App – Organize Your Notes
You are building a simple notes app where users can write and manage their notes.
- Each note should have a title, some content, and the date it was created.
- The app should allow creating new notes.
- The app should allow listing all notes.
- The app should allow searching for a note by its title */

class Note {
  String title;
  String content;
  DateTime createdAt;

  Note(this.title, this.content) : createdAt = DateTime.now();
}

class NotesApp {
  List<Note> notes = [];

  void createNote(String title, String content) {
    Note newNote = Note(title, content);
    notes.add(newNote);
  }

  void listNotes() {
    for (var note in notes) {
      print('Title: ${note.title}, Created At: ${note.createdAt}');
    }
  }

  Note? searchNoteByTitle(String title) {
    for (var note in notes) {
      if (note.title == title) {
        return note;
      }
    }
    return null; // Return null if no note is found with the given title
  }
}
