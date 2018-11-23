//
//  ViewController.swift
//  Portraits
//
//  Created by Michel-Andre Chirita on 21/11/2018.
//  Copyright © 2018 croamac. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources

final class ListViewController: UIViewController {

  let disposeBag = DisposeBag()

  @IBOutlet weak var collectionView: UICollectionView!

  let viewModel = ListViewModel()

  override func viewDidLoad() {
    super.viewDidLoad()

    viewModel.dataSource.configureSupplementaryView = { (dataSource, collectionView, kind, indexPath) in
      if kind == UICollectionView.elementKindSectionHeader {
        let section = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HEADER", for: indexPath)
        return section
      } else {
        return UICollectionReusableView()
      }
    }

    viewModel
      .sections
      .bind(to: collectionView.rx.items(dataSource: viewModel.dataSource))
      .disposed(by: disposeBag)

    viewModel.loadPortraits()
  }
}
