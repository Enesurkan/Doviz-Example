

import UIKit

class BaseListViewModel<T>: BaseViewModel {

    var items: [T]?
    
    func item(at: Int) -> T? {
        
        return self.items?[at]
    }
    
    func itemCount() -> Int? {
        
        return items?.count
    }
}
