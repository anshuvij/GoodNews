//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Anshu Vij on 13/03/22.
//

import Foundation
import UIKit


struct ArticleListViewModels {
    let articles : [Article]
}

extension ArticleListViewModels {
    
    var numberOfSection : Int {
        return 1
    }
    
    func numberOfRowsInSections(_ section : Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index : Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    
    private let article : Article
}

extension ArticleViewModel {
    
    init(_ article : Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title  : String {
        return self.article.title ?? ""
    }
    
    var description  : String {
        return self.article.description ?? ""
    }
}
