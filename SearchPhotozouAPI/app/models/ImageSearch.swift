//
//  ImageSearch.swift
//  2017_iOSTraining
//
//  Created by n_kamimura on 2017/10/10.
//  Copyright © 2017年 n_kamimura. All rights reserved.
//

import Foundation

class ImageSearch {
    
    init(searchText: String) {
        PhotozouAPI.imageSearch(keyword: searchText)
    }
}
