//
//  ImageSearchResult.swift
//  SearchPhotozouAPI
//
//  Created by n_kamimura on 2017/10/13.
//  Copyright © 2017年 n_kamimura. All rights reserved.
//

import Foundation

public struct ImageSearchResult {
    let imageURLs: [URL]
    init(images: [Image]) {
        self.imageURLs = images.map{ $0.url }
        // TODO: part2branchの動作確認用。画面と連動次第、削除する
        print(imageURLs)
    }
}
