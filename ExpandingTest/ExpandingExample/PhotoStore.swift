//
//  PhotoStore.swift
//  ExpandableTableView
//
//  Created by Vesza Jozsef on 26/05/15.
//  Copyright (c) 2015 Vesza Jozsef. All rights reserved.
//

import UIKit

class PhotoStore: NSObject {
    
    static let sharedInstance = PhotoStore()
    
    private static let titles = [
        "Photo 1",
        "Photo 2",
        "Photo 3",
    ]
    
    private static let authors = [
        "Anthony DELANOIX",
        "Modestas Urbonas",
        "Shlomit Wolf",
    ]
    
    private static let images = [
        UIImage(named: "image-1"),
        UIImage(named: "image-2"),
        UIImage(named: "image-3"),
    ]
    
    let photos = [
        Photo(title: titles[0], withAuthor: authors[0], withImage: images[0]),
        Photo(title: titles[1], withAuthor: authors[1], withImage: images[1]),
        Photo(title: titles[2], withAuthor: authors[2], withImage: images[2]),
    ]
}