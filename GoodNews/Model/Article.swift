//
//  Article.swift
//  GoodNews
//
//  Created by Anshu Vij on 13/03/22.
//

import Foundation


struct ArticleList : Decodable {
    
    let articles : [Article]
}
struct Article  : Decodable {
    
    let title : String?
    let description : String?
}
