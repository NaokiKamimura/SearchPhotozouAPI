//
//  PhotozouImageSearchResult.swift
//  2017_iOSTraining
//
//  Created by n_kamimura on 2017/10/10.
//  Copyright © 2017年 n_kamimura. All rights reserved.
//
/*
 NOTE: 常に新着順にソートした結果を返す
 {
 "info": {
   "photo_num": 写真の数,
   "photo": [
   {
     "photo_id": 写真ID,
     "user_id": ユーザーID,
     "album_id": アルバムID,
     "photo_title": "タイトル",
     "favorite_num": お気に入り数,
     "comment_num": コメント数,
     "view_num": アクセス数,
     "copyright": ライセンスの型(normal: ライセンスなし、または creativecommons: クリエイティブ・コモンズ),
     "copyright_commercial": クリエイティブ・コモンズによる著作権、営利目的での利用(yes/no)
     "copyright_modifications": クリエイティブ・コモンズによる著作権、改変の許可(yes/no/share)
     "original_height": オリジナル画像の高さ,
     "original_width": オリジナル画像の幅,
     "geo": { 写真の位置情報（ある場合）
       "latitude": ###,
       "longitude": ###
     },
     "date": "YYYY-MM-DD",
     "regist_time": 登録日時？(YYYY-MM-DDThh:mm:ss+09:00),
     "url": 写真ページのURL,
     "image_url": 画像のURL,
     "original_image_url": オリジナル画像のURL？,
     "thumbnail_image_url": サムネイル画像のURL？,
     "large_tag": ブログ等に貼り付けるためのタグ(普通サイズ)、XMLではCDATAで囲まれています。 "<a href=\"...\">...</a>",
     "medium_tag": ブログ等に貼り付けるためのタグ(縮小サイズ)、XMLではCDATAで囲まれています。"<a href=\"...\">...</a>"
   },
   ...
   ]
 }
 }
 */

import Foundation

struct PhotozouImageSearchResult: Codable {
    let info: String
    struct Photo: Codable {
        let originalImageUrl: URL
        
        private enum PhotoCodingKeys: String, CodingKey {
            case originalImageUrl = "original_image_url"
        }
    }
}
