//
//  NotesService.swift
//  ViperNotesWithRealm
//
//  Created by w2 on 12/24/19.
//  Copyright © 2019 ShynCorp. All rights reserved.
//

import Foundation
import RealmSwift
class NotesByRealmService: NoteService {
    private var realm: Realm
    private var noteFactory: NoteFactory! 
    
    init(){
        realm = try! Realm()
    }
    
    /*
    func getAllNoteData() -> [NoteDataModel] {
        let noteObjects = realm.objects(NoteDataObject.self)
        var notes: [NoteDataModel] = []
        
        noteFactory =  NoteDataFactory()
        
        for noteObject in noteObjects{
            do{
                let note: NoteDataModel = try noteFactory.createNote(noteObject: noteObject) as! NoteDataModel
                notes.append(note)
            }catch{
                print(error.localizedDescription)
            }
        }
        return notes
    }
    */
    func getAllNotesViewModels() -> [NoteViewModel] {
        let noteObjects = realm.objects(NoteDataObject.self)
        var notes: [NoteViewModel] = []
        
        noteFactory =  NoteViewFactory()
        
        for noteObject in noteObjects{
            do{
                let note = try noteFactory.createNote(noteObject: noteObject)
                print(note)
                guard let noteView = note as?  NoteViewModel else {
                    throw NoteByRealmError.CanNotDowncastFromNoteRepresentation
                }
                print(noteView)
                notes.append(noteView)
            }catch{
                print(error.localizedDescription)
            }
        }
        return notes
    }

    func getNoteData(with id: UUID) -> NoteData? {
        let idString =  id.uuidString
        guard let noteObject = realm.objects(NoteDataObject.self).filter("id == %@", idString).first else {
            return nil
        }
        
        noteFactory = NoteDataFactory()
        var note: NoteData?
        
        do{
            note = try noteFactory.createNote(noteObject: noteObject) as! NoteData
        }catch{
            print(error.localizedDescription)
        }
        return note
        
    }
    
    func addNote(from noteDataModel: NoteData) throws {
        let note = NoteDataObject()
        note.title = noteDataModel.title
        note.text = noteDataModel.text
        note.id = noteDataModel.id.uuidString
        do{
            try realm.write {
                realm.add(note)
            }
        }catch{
            throw NoteByRealmError.NoteCanNoteBeSaved
        }
    }
}
