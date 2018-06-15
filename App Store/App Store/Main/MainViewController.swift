//
//  ViewController.swift
//  App Store
//
//  Created by 垰尚太朗 on 2018/06/08.
//  Copyright © 2018 ShotaroTao. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift
import RxRealm
import RxRealmDataSources
import RealmSwift

class MainViewController: UIViewController {
    
    let mainView = MainView()
    
    let mainViewModel = MainViewModel()
    
//    let realm = try! Realm()
    
//    private let bag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        addViews()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func addViews() {
        
        self.view.addSubview(mainView)
        
        mainView.snp.makeConstraints { (make) in
            make.left.equalTo(self.view.snp.left)
            make.right.equalTo(self.view.snp.right)
            make.top.equalTo(self.view.snp.top)
            make.bottom.equalTo(self.view.snp.bottom)
        }
        
        mainView.collectionView.delegate = mainViewModel
        
        mainView.collectionView.dataSource = mainViewModel
        
//        let dataSource = RxTableViewRealmDataSource<Music>(cellIdentifier: String(describing: ListTableViewCell.self), cellType: ListTableViewCell.self) {cell, ip, mc in
//            cell.name.text = mc.name
//            cell.artist.text = mc.artist
//        }
//
//        let data = realm.objects(Music.self).filter("id == 0")
//
//        let laps = Observable.changeset(from: data).share()
//
//        laps
//            .bind( to: mainView.collectionView.rx.realmChanges(dataSource))
//            .disposed(by: bag)

        
        
        
    }

}

