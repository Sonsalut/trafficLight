//
//  lightCustomView.swift
//  lesson13_trafficLight
//
//  Created by Le Thanh Son on 27/10/2023.
//

import UIKit

class lightCustomView: UIView {

    @IBOutlet var lightCView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.commonInit()
    }
    private func commonInit() {
        let bundle = Bundle(for: type(of: self))
        if let nib = UINib(nibName: "lightCustomView", bundle: bundle).instantiate(withOwner: self, options: nil).first as? UIView {
            nib.frame = bounds
            nib.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            addSubview(nib)
            lightCView.backgroundColor = .gray
            lightCView.layer.cornerRadius = 45
        }

    }

}
