//
//  NoteListInteractor.swift
//  ViperNotesWithRealm
//
//  Created by w2 on 12/24/19.
//  Copyright © 2019 ShynCorp. All rights reserved.
//

import Foundation
protocol NoteListInteractorProtocol{
    func getNoteViews() -> [NoteViewModel]
    func getNoteData(by id: UUID) -> NoteData?
    func addNote(from noteData: NoteData) throws
    
}
class NoteListInteractor: NoteListInteractorProtocol{
    private var dependencies: NoteListDependenciesProtocol
    private var service: NoteService
    
    init(dependencies: NoteListDependenciesProtocol, service: NoteService){
        self.dependencies = NoteListDependencies()
        self.service = service
    }
    func getNoteViews() -> [NoteViewModel]{
        return service.getAllNotesViewModels()
    }
    
    func getNoteData(by id: UUID) -> NoteData? {
        return service.getNoteData(with: id)
    }
    
    func addNote(from noteData: NoteData) throws {
        do{
            try service.addNote(from: noteData)
        }catch{
            throw error
        }
    }
    
}
