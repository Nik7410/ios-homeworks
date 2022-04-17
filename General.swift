//
//  Post.swift
//  Navigation
//
//  Created by Николай Чмеленко on 20.02.2022.
//

import UIKit

struct Const {
    
    static let leadingMargin: CGFloat = 16
    static let trailingMargin: CGFloat = -16
    static let indent: CGFloat = 16
    
}

struct Post {
    var author: String
    var description: String
    var image: String
    var likes: Int
    var views: Int
}

public extension UIView {

    func toAutoLayout() {
        translatesAutoresizingMaskIntoConstraints = false
    }

    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }

}

let constPostArray = [Post(author: "Брэд Питт", description: "Oscar", image: "post1", likes: 2043, views: 3012),
                 Post(author: "Брэд Питт", description: "At baseball", image: "post2", likes: 1242, views: 2353),
                 Post(author: "Брэд Питт", description: "Young", image: "post3", likes: 1252, views: 2567),
                 Post(author: "Брэд Питт", description: "on the beach", image: "post4", likes: 1254, views: 3405)]
