//
//  StoryModels.swift
//  create-your-own-story
//
//  Created by admin on 7/18/23.
//

struct Story {
    
    let pages : [StoryPage]
    
    subscript(_ pageIndex: Int) -> StoryPage {
        return pages[pageIndex]
    }
    
}

struct StoryPage {
    let text: String
    let choices: [Choice]
    
    init(_ text: String, choices:[Choice]){
        self.text = text
        self.choices = choices
    }
}

struct Choice {
    let text: String
    let destination: Int
}
