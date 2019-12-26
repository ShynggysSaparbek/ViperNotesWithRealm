//
//  NoteListPresenter.swift
//  ViperNotesWithRealm
//
//  Created by w2 on 12/24/19.
//  Copyright © 2019 ShynCorp. All rights reserved.
//

import Foundation
import SwiftUI
protocol NoteListPresenterProtocol{
    var noteViewModels: [NoteViewModel] {get set}
    func addNote(from note: NoteData)  throws
}
class NoteListPresenter: ObservableObject, NoteListPresenterProtocol{
    private var interactor: NoteListInteractorProtocol
    private var dependencies: NoteListDependenciesProtocol
    
    @Published var noteViewModels: [NoteViewModel] = []
    
    init(dependencies: NoteListDependenciesProtocol, interactor: NoteListInteractorProtocol){
        self.interactor = interactor
        self.dependencies = dependencies
        
        self.noteViewModels = interactor.getNoteViews()
        printAll()
    }
    
    func addNote(from note: NoteData)  throws {
        try interactor.addNote(from: note)
        let noteViewModel = NoteViewModel(noteData: note)
        
        self.noteViewModels.append(noteViewModel)
    }
    
    func printAll(){
     for element in self.noteViewModels{
         print(element.title)
        }
    }
}

