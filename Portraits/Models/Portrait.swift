//
//  Photo.swift
//  Portraits
//
//  Created by Michel-Andre Chirita on 21/11/2018.
//  Copyright © 2018 croamac. All rights reserved.
//

import UIKit

struct Portrait {
  let photo: UIImage
  let caption: String
  let author: String
//  let creationDate: Date
  //  let photoDate: Date

  static func mock() -> Portrait {
    let mockId = Int.random(in: 1...11)
    let photo = UIImage(named: "portrait\(mockId)")!
    return Portrait(photo: photo, caption: "Mock caption", author: "Mock author")
  }
}
