//
//  MyCollectionViewCell.swift
//  My UI Design
//
//  Created by 이정우 on 2022/03/02.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    override var isSelected: Bool {
      didSet {
        if isSelected {
            contentView.backgroundColor = .purple
            
        } else {
            contentView.backgroundColor = .systemIndigo
        }
      }
    }
}
