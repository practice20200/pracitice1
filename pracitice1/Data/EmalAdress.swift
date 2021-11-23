//
//  EmalAdress.swift
//  pracitice1
//
//  Created by Apple New on 2021-11-22.
//

import UIKit
class EmailAdressListData {
    
    static func emailListData() ->[String] {
        let gmail = "@gmail.com"
        let yahoo = "@yahoo.com"
        
        let au =  "@ezweb.ne.jp"
        let docomo = "@docomo.ne.jp"
        let softbank = "@softbank.ne.jp"
        return [gmail,yahoo,au,docomo,softbank]
    }
    
}
