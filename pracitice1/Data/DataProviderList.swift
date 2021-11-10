//
//  DataProviderList.swift
//  pracitice1
//
//  Created by Apple New on 2021-11-04.
//

import UIKit
class DataProviderList {
    

    
    
    static func makeDataForList() -> [(String, [UserForList])] {
        
        var aSection: [UserForList] = []
        var bSection: [UserForList] = []
        var cSection: [UserForList] = []
        var dSection: [UserForList] = []
        var fSection: [UserForList] = []
        var gSection: [UserForList] = []
        var hSection: [UserForList] = []
        var kSection: [UserForList] = []
        var lSection: [UserForList] = []
        var mSection: [UserForList] = []
        var nSection: [UserForList] = []
        
        aSection.append(
            UserForList( nickName: "Alexander Valley" )
        )
        
        aSection.append(
            UserForList( nickName: "Anderson Valley" )
        )
        
        bSection.append(
            UserForList( nickName: "Bennett Valley" )
        )
        
        cSection.append(
            UserForList( nickName: "Calistoga" )
        )
        
        cSection.append(
            UserForList( nickName: "Chalk Hill" )
        )
        
        dSection.append(
            UserForList( nickName: "Diamond Mountain" )
        )
        
        dSection.append(
            UserForList( nickName: "Dry Creek Valley" )
        )
        
        fSection.append(
            UserForList( nickName: "Fort Ross / Seaview" )
        )
        
        gSection.append(
            UserForList( nickName: "Green Valley" )
        )
        
        hSection.append(
            UserForList( nickName: "Howell Mountain" )
        )
        
        kSection.append(
            UserForList( nickName: "Knights Valley" )
        )
        
        lSection.append(
            UserForList( nickName: "Los Carneros" )
        )
        
        lSection.append(
            UserForList( nickName: "Liam Valley" )
        )
        
        mSection.append(
            UserForList( nickName: "mike Valley")
        )
        
        nSection.append(
            UserForList( nickName: "nik Valley" )
        )
        
        return [
            ("A", aSection),
            ("B", bSection),
            ("C", cSection),
            ("D", bSection),
            ("F", cSection),
            ("G", aSection),
            ("H", bSection),
            ("K", cSection),
            ("L", bSection),
            ("M", cSection),
            ("N", cSection)
        ]
    }
}
