//
//  MainCell.swift
//  TestExample
//
//  Created by Enes urkan on 1.12.2018.
//  Copyright © 2018 EnesUrkan. All rights reserved.
//

import UIKit

class MainCell: BaseTableViewCell {

    @IBOutlet weak var arrowImage: UIImageView!{
        didSet{
            arrowImage.image = UIImage.init(named: "right-arrow")
        }
    }
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var value: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}

extension MainCell{
    func fillData(name : String, value : Double){
        self.name.text = name
        self.value.text = String(format: "%.2f", value )
    }
}
