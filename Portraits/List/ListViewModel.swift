//
//  ListViewModel.swift
//  Portraits
//
//  Created by Michel-Andre Chirita on 21/11/2018.
//  Copyright © 2018 croamac. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import RxDataSources

struct ListViewModel {

  let sections = PublishSubject<[SectionModel<String, ListCellViewModel>]>()

  let dataSource = RxCollectionViewSectionedReloadDataSource<SectionModel<String, ListCellViewModel>>(configureCell: { (datasource, cv, ip, item) -> UICollectionViewCell in

    let identifier = (ip.item % 2 == 0) ? "MODEL1" : "MODEL2"
    let cell = cv.dequeueReusableCell(withReuseIdentifier: identifier, for: ip)

    if let cell = cell as? ListCellType {
      cell.setup(with: item)
    }

    return cell
  })

  func loadPortraits() {
    let cellVM1 = ListCellViewModel()
    let cellVM2 = ListCellViewModel()
    let cellVM3 = ListCellViewModel()

    sections.onNext([SectionModel(model: "portraits", items: [cellVM1, cellVM2, cellVM3])])
  }

}
