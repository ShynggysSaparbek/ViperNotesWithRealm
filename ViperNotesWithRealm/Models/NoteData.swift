//
//  NoteDataModel.swift
//  ViperNotesWithRealm
//
//  Created by w2 on 12/24/19.
//  Copyright © 2019 ShynCorp. All rights reserved.
//

import Foundation
struct NoteData: Identifiable, NoteRepresentation{
    var id: UUID
    var title: String
    var text: String
    
    init(title: String, text: String){
        self.id = UUID()
        self.title = title
        self.text = text
    }
    
    init(id: UUID, title: String, text: String){
        self.id = UUID()
        self.title = title
        self.text = text
    }
    
}
