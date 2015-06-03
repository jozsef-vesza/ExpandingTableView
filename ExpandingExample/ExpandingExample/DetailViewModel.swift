//
//  DetailViewModel.swift
//  ExpandableTableView
//
//  Created by Vesza Jozsef on 26/05/15.
//  Copyright (c) 2015 Vesza Jozsef. All rights reserved.
//

import UIKit

class DetailViewModel: NSObject, ViewModelType {
    
    let photoStore: PhotoStore
    let selectedIndex: Int
    
    init(photoStore: PhotoStore, selectedIndex: Int) {
        self.photoStore = photoStore
        self.selectedIndex = selectedIndex
        super.init()
    }
    
    var authorName: String {
        return photoStore.photos[selectedIndex].author
    }
    
    var photoImage: UIImage? {
        return photoStore.photos[selectedIndex].image
    }
}