//
//  NoteFactory.swift
//  ViperNotesWithRealm
//
//  Created by w2 on 12/25/19.
//  Copyright © 2019 ShynCorp. All rights reserved.
//

import Foundation
protocol NoteFactory {
    func createNote(noteObject: NoteDataObject) throws -> NoteRepresentation
}
