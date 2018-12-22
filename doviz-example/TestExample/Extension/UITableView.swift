//
//  BaseTableView.swift
//  CoreMVVM
//
//  Created by Yagiz Gurgul on 17.10.2018.
//  Copyright © 2018 Kuka Apps. All rights reserved.
//

import UIKit

extension UITableView {
    
    func registerNib<T>(witClassAndIdentifier:T.Type) {
        
        self.register(UINib.init(nibName: String(describing: T.self), bundle: nil), forCellReuseIdentifier: String(describing: T.self))
    }
    
    func dequeueCell<T>(withClassAndIdentifier classAndIdentifier: T.Type, for indexPath: IndexPath) -> T {
        
        return self.dequeueReusableCell(withIdentifier: String(describing: T.self), for: indexPath) as! T
    }
}
