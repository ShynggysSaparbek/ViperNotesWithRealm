//
//  NoteListViewModel.swift
//  ViperNotesWithRealm
//
//  Created by w2 on 12/24/19.
//  Copyright © 2019 ShynCorp. All rights reserved.
//

import Foundation
struct NoteViewModel: Identifiable, NoteRepresentation{
    var id: UUID
    var title: String
    
    init(id: UUID, title: String){
        self.id = id
        self.title = title
    }
    
    init(noteData: NoteData){
        self.id = noteData.id
        self.title = noteData.title
    }
}
