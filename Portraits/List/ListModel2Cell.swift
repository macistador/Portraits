//
//  ListModel2Cell.swift
//  Portraits
//
//  Created by Michel-Andre Chirita on 21/11/2018.
//  Copyright © 2018 croamac. All rights reserved.
//

import UIKit

final class ListModel2Cell: UICollectionViewCell {

  @IBOutlet weak var photo1ImageView: PhotoImageView!
  @IBOutlet weak var photo2ImageView: PhotoImageView!
  @IBOutlet weak var photo3ImageView: PhotoImageView!
  @IBOutlet weak var photo4ImageView: PhotoImageView!
  @IBOutlet weak var line1V: LineView!
  @IBOutlet weak var line2H: LineView!
  @IBOutlet weak var line3H: LineView!
  @IBOutlet weak var line4V: LineView!
  @IBOutlet weak var line5V: LineView!
  @IBOutlet weak var line6H: LineView!
  @IBOutlet weak var line7V: LineView!

  override func prepareForReuse() {
    super.prepareForReuse()
  }

  override func awakeFromNib() {
    super.awakeFromNib()
    photo1ImageView.image = Portrait.mock().photo
    photo2ImageView.image = Portrait.mock().photo
    photo3ImageView.image = Portrait.mock().photo
    photo4ImageView.image = Portrait.mock().photo

    line1V.fadeView(style: .vertical)
    line2H.fadeView(style: .horizontal)
    line3H.fadeView(style: .horizontal)
    line4V.fadeView(style: .vertical)
    line5V.fadeView(style: .vertical)
    line6H.fadeView(style: .horizontal)
    line7V.fadeView(style: .vertical)
  }

}

