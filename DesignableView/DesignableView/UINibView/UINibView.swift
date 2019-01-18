//
//  UINibView.swift
//  DesignableView
//
//  Created by David on 12/8/18.
//  Copyright © 2018 Chung Duong. All rights reserved.
//

import UIKit

class UINibView: UIView {

	// MARK: - Inits

	override init(frame: CGRect) {
		super.init(frame: frame)

		self.loadFromNib()
	}

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)

		self.loadFromNib()
	}

	private func loadFromNib() {
		let nibName = String(describing: type(of: self))
		let bundle = Bundle(for: type(of: self))
		let nib = UINib(nibName: nibName, bundle: bundle)

		guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
			return
		}

		view.frame = bounds
		view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

		self.addSubview(view)
	}

}
