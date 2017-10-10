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

final class PhotozouAPI {
    // TODO: 画像検索用のURLを作る
    private let jsonSearchUrlBase = "https://api.photozou.jp/rest/search_public.json"
    
    
    // TODO: 画像検索、Promissの結果を返す（想定はArrayの中にstructで画像の構造が入る。Promiss<[ImageSearchResult...])>のような）
    class func imageSearch(keyword: String) {
        // TODO: APIへリクエストを投げる
        // TODO: 通信出来たかどうかでエラーと分岐
        // TODO: 通信出来ていれば、レスポンスをもらう
        // TODO: レスポンスをJSONへ変換する
        // TODO: JSONを画像検索結果にして返す
    }
}
