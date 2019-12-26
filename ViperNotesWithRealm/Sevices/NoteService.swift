//
//  NoteService.swift
//  ViperNotesWithRealm
//
//  Created by w2 on 12/25/19.
//  Copyright © 2019 ShynCorp. All rights reserved.
//

import Foundation
protocol NoteService{
    func getAllNotesViewModels() -> [NoteViewModel]
    func getNoteData(with id: UUID) -> NoteData?
    func addNote(from noteDataModel: NoteData) throws
}
