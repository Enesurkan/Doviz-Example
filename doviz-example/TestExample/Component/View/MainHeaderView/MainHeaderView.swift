//
//  MainHeaderView.swift
//  TestExample
//
//  Created by Enes urkan on 1.12.2018.
//  Copyright © 2018 EnesUrkan. All rights reserved.
//

import UIKit

class MainHeaderView: UIView {

    @IBOutlet var mainView: UIView!{
        didSet{
            mainView.layer.borderWidth = 1.0
            mainView.layer.borderColor = UIColor.white.cgColor
        }
    }
    @IBOutlet weak var upDownLabel: UILabel!{
        didSet{
            upDownLabel.layer.borderWidth = 1.0
            upDownLabel.layer.borderColor = UIColor.white.cgColor
        }
    }
    @IBOutlet weak var priceName: UILabel!{
        didSet{
            priceName.layer.borderWidth = 1.0
            priceName.layer.borderColor = UIColor.white.cgColor
        }
    }
    @IBOutlet weak var dateLabel: UILabel!{
        didSet{
            dateLabel.layer.borderWidth = 1.0
            dateLabel.layer.borderColor = UIColor.white.cgColor
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit(){
        let view : UIView = loadNib()
        view.frame = self.bounds
        self.addSubview(view)
    }
}
