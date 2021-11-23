//
//  DataProvider.swift
//  TravelApp
//
//  Created by Mostafa Davoodi on 10/25/21.
//

import UIKit

class DataProvider {
    
    //FriendsViewController
    static func makeData() -> [(String, [User])] {
        
        var aSection: [User] = []
        var bSection: [User] = []
        var cSection: [User] = []
        
        aSection.append(
            User(
                image: UIImage(named: "1"),
                nickName: "Alexander Valley",
                location: "Vancouver",
                age: "29"
            )
        )
        
        aSection.append(
            User(
                image: UIImage(named: "2"),
                 nickName: "Alex Stanton",
                location: "Vancouver",
                age: "32"
            )
        )
        
        bSection.append(
            User(
                image: UIImage(named: "3"),
                nickName: "Brian seif",
                location: "Montreal",
                age: "40"
            )
        )
        
        bSection.append(
            User(
                image: UIImage(named: "4"),
                nickName: "Benika Stanton",
                location: "Toronto",
                age: "23"
            )
        )
        
        bSection.append(
            User(
                image: UIImage(named: "5"),
                nickName: "Benita Stanton",
                location: "Vancouver",
                age: "25"
            )
        )
        
        cSection.append(
            User(
                image: UIImage(named: "6"),
                nickName: "Celin leon",
                location: "Vancouver",
                age: "29"
            )
        )
        
        return [
            ("A", aSection),
            ("B", bSection),
            ("C", cSection)
        ]
        
    }

    
    
    //HomeViewController>>>CollectionView
    static func makePopularPlacedata() -> [Place] {
        return[
            Place(image: UIImage(named: "selection1"), name: "London"),
            Place(image: UIImage(named: "selection1"), name: "Rome1"),
            Place(image: UIImage(named: "selection1"), name: "Rome2"),
            Place(image: UIImage(named: "selection1"), name: "Rome3"),
            Place(image: UIImage(named: "selection1"), name: "Rome4"),
            Place(image: UIImage(named: "selection1"), name: "Rome5"),
            Place(image: UIImage(named: "selection1"), name: "Vancouver")
        ]
    }
    
    
    //PlaceDetailedViewController>>>CollectionView
    static func photoDataProvider() -> [UIImage?] {
        return [
            UIImage(named: "photo1"),
            UIImage(named: "photo2"),
            UIImage(named: "photo3"),
            UIImage(named: "photo1"),
            UIImage(named: "photo2"),
            UIImage(named: "photo3")
        ]
    }
    
    
   
}


