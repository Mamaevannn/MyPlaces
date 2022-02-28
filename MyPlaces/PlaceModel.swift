//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Наида Мамаева on 25.02.2022.
//

import UIKit

struct Place {
    var name: String // только название обязательно для заполнения
    var location: String?
    var type: String?
    var image: UIImage?
    var restaurantImage: String?
    
      static let restaurantNames = [
        "Ava", "Mina", "13", "Pinch", "Pino", "Eva", "Share", "Lotus", "Gutai", "Lucky Izakaya", "Shiba", "Ugolyok", "Северяне"
        ]
        
   static func getPlaces() -> [Place] {
        var places = [Place]()
       
       for place in restaurantNames {
           places.append(Place(name: place, location: "Моксва, Патрики", type: "Ресторан", image: nil, restaurantImage: place))
       }
        return places
    }
}
