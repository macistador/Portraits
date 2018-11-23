//
//  ListCellType.swift
//  Portraits
//
//  Created by Michel-Andre Chirita on 23/11/2018.
//  Copyright © 2018 croamac. All rights reserved.
//

import UIKit

protocol ListCellType where Self: UICollectionViewCell {
  func setup(with: ListCellViewModel)
}
