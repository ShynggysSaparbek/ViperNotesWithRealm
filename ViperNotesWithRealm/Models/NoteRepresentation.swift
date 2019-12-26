//
//  NoteRepresentation.swift
//  ViperNotesWithRealm
//
//  Created by w2 on 12/25/19.
//  Copyright © 2019 ShynCorp. All rights reserved.
//

import Foundation
protocol NoteRepresentation {
    var id: UUID { get set }
    var title: String{ get set }
}
