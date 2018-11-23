//
//  ListCell.swift
//  Portraits
//
//  Created by Michel-Andre Chirita on 21/11/2018.
//  Copyright © 2018 croamac. All rights reserved.
//

import UIKit

final class ListModel1Cell: UICollectionViewCell {
    
  @IBOutlet weak var photo1ImageView: PhotoImageView!
  @IBOutlet weak var photo2ImageView: PhotoImageView!
  @IBOutlet weak var photo3ImageView: PhotoImageView!
  @IBOutlet weak var line1V: LineView!
  @IBOutlet weak var line2V: LineView!
  @IBOutlet weak var line3H: LineView!
  @IBOutlet weak var line4H: LineView!
  
  override func prepareForReuse() {
    super.prepareForReuse()
  }

  override func awakeFromNib() {
    super.awakeFromNib()
    photo1ImageView.image = Portrait.mock().photo
    photo2ImageView.image = Portrait.mock().photo
    photo3ImageView.image = Portrait.mock().photo

    line1V.fadeView(style: .vertical)
    line2V.fadeView(style: .vertical)
    line3H.fadeView(style: .horizontal)
    line4H.fadeView(style: .horizontal)
  }

  func setup(with: ListCellViewModel) {
    print("setup")
  }
}
