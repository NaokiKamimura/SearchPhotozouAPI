//
//  TopViewController.swift
//  2017_iOSTraining
//
//  Created by n_kamimura on 2017/10/04.
//  Copyright © 2017年 n_kamimura. All rights reserved.
//

import UIKit

final class TopViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    
    @IBOutlet weak var imageSearchResultCollectionView: UICollectionView!
    
    private let imageResultSize: Int = 50
    // TODO: APIから画像取得でき次第、消す
    private let flowerImage = UIImage(named: "flower1")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageSearchResultCollectionView.dataSource = self
        imageSearchResultCollectionView.delegate = self
        // TODO: API通信を動かす為仮置き。画面と連動するようになったら消す
        ImageSearchService.search(searchText: "bara", limit: imageResultSize)
    }
    
    // 表示する画像の数は今のところ固定にする
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageResultSize
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSearchResultCell", for: indexPath)
        // TODO: APIから画像取得でき次第、切り替える
        let imageView = UIImageView(image: flowerImage)
        cell.contentView.addSubview(imageView)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(0.0)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(0.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.size.width / 2, height: flowerImage!.size.height)
    }

}
