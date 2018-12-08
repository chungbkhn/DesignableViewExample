//
//  CoolView.swift
//  DesignableView
//
//  Created by David on 12/8/18.
//  Copyright © 2018 Chung Duong. All rights reserved.
//

import UIKit

@IBDesignable
class CoolView: UINibView {

	@IBOutlet weak var titleLabel: UILabel!

	@IBInspectable
	var title: String = "" {
		didSet {
			titleLabel.text = title
		}
	}

}
