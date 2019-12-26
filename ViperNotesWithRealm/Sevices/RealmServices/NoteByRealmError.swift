//
//  NoteByRealmError.swift
//  ViperNotesWithRealm
//
//  Created by w2 on 12/25/19.
//  Copyright © 2019 ShynCorp. All rights reserved.
//

import Foundation
enum NoteByRealmError: Error{
    case NoteCanNoteBeSaved
    
    case CanNotCreateNoteModelWithoutID
    case CanNotConvertStringToUUID
    case CanNotCreateNoteModelWithoutTitle
    case CanNoteCreateNoteModelWithoutText
    case CanNotDowncastFromNoteRepresentation
}
