//
//  Photo.swift
//  ExpandableTableView
//
//  Created by Vesza Jozsef on 26/05/15.
//  Copyright (c) 2015 Vesza Jozsef. All rights reserved.
//

import UIKit

class Photo: NSObject {
    
    var title: String
    var author: String
    var image: UIImage?
    
    init(title: String, withAuthor author: String, withImage image: UIImage?) {
        self.title = title
        self.author = author
        self.image = image
        super.init()
    }
}