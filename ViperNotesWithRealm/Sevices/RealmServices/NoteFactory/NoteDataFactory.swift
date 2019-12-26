//
//  NoteFactory.swift
//  ViperNotesWithRealm
//
//  Created by w2 on 12/25/19.
//  Copyright © 2019 ShynCorp. All rights reserved.
//

import Foundation
class NoteDataFactory: NoteFactory{
    func createNote(noteObject: NoteDataObject) throws -> NoteRepresentation {
        guard let idString = noteObject.id else {
            throw NoteByRealmError.CanNotCreateNoteModelWithoutID
        }
        //)
        guard let id = UUID(uuidString: idString) else {
            
            throw NoteByRealmError.CanNotConvertStringToUUID
        }
        guard let title = noteObject.title else {
            throw NoteByRealmError.CanNotCreateNoteModelWithoutTitle
        }
        //print("title: \(title)")
        guard let text = noteObject.text  else {
            throw NoteByRealmError.CanNoteCreateNoteModelWithoutText
        }
        //print("text: \(text)")
        let noteData = NoteData(id: id, title: title, text: text)
        return noteData
    }
    
    
}
