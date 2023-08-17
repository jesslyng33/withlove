//
//  LetterItem.swift
//  withlove
//
//  Created by scholar on 8/16/23.
//

import Foundation

class LetterItem: Identifiable {
    var color = ""
    var prompt = ""
    var content = ""
    var font = ""
    
    init(color: String, prompt: String, content: String, font: String) {
        self.color = color
        self.prompt = prompt
        self.content = content
        self.font = font
    }
}
