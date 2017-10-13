//
//  PhotozouAPI.swift
//  2017_iOSTraining
//
//  Created by n_kamimura on 2017/10/10.
//  Copyright © 2017年 n_kamimura. All rights reserved.
//
/*
 フォト蔵API
 JSON: https://api.photozou.jp/rest/search_public.json
 XML: https://api.photozou.jp/rest/search_public.xml
 ・パラメータ
 keyword: タイトル、タグ、説明文に含まれるキーワードを指定します。最大100文字まで指定できます。
 limit: 検索の上限を指定します。(省略時100件、最大1000件)
 offset: 検索のオフセットを指定します。(省略時: 0)
 */


import Foundation
import Alamofire
import FranticApparatus

private let searchPublicJSONUrlBase = "https://api.photozou.jp/rest/search_public.json"
final class PhotozouAPI {
    class func searchPublic(keyword: String, limit: Int) -> Promise<ImageSearchResult> {
        return Promise<ImageSearchResult> { (fullfill, reject, isCancelled) in
            Alamofire.request(searchPublicJSONUrlBase, parameters: ["keyword": keyword, "limit": limit]).responseJSON { response in
                switch response.result {
                case .success(let value):
                    do {
                        let jsonData = try JSONSerialization.data(withJSONObject: value, options: [])
                        let result = try PhotozouSearchPublicResultFromJSON(jsonData: jsonData)
                        fullfill(ImageSearchResult(images: result.getImages()))
                    } catch let error {
                        reject(error)
                    }
                case .failure(let error):
                    reject(error)
                }
                
            }
        }
    }
}
