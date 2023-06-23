//
//  Book-Model.swift
//  BookRentApp
//
//  Created by Alex Okhtov on 13.06.2023.
//

import Foundation

struct Book: Identifiable, Hashable{
    var id: String = UUID().uuidString
    var title: String
    var imageName: String
    var author: String
}


var sampleBooks: [Book] = [.init(title: "Five Feet Apart", imageName: "1",author: "Oleg L" ),
                           .init(title:"The Alchemist", imageName: "2", author: "William B. Irvine"),
                           .init(title: "Booke of Hapiness", imageName: "3", author: "Anne"),
                           .init(title: "Five Feet Apart", imageName: "4", author: "William Lippincott"),
                           .init( title: "Living Alone", imageName: "5", author: "Jenna Lippincott"),
] 
