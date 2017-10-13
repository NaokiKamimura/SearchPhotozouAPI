//
//  ImageSearch.swift
//  2017_iOSTraining
//
//  Created by n_kamimura on 2017/10/10.
//  Copyright © 2017年 n_kamimura. All rights reserved.
//

import Foundation
import FranticApparatus
final class ImageSearchService {
    class func search(searchText: String, limit: Int) -> Promise<ImageSearchResult> {
        return PhotozouAPI.searchPublic(keyword: searchText, limit: limit)
    }
}
