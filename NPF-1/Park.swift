//
//  Park.swift
//  NPF-1
//
//  Created by Zacharry Georges on 1/24/19.
//  Copyright © 2019 Zacharry Georges. All rights reserved.
//

import Foundation
import CoreLocation

class Park: CustomStringConvertible{
    private var parkName: String = " "
    private var parkLocation: String = " "
    private var dateFormed: String = " "
    private var area: String = " "
    private var link: String = " "
    private var location: CLLocation?
    private var imageLink: String = " "
    private var parkDescription: String = " "
    
    var description: String{
        return """
                {
                    parkName: \(parkName)
                    parkLocation: \(parkLocation)
                    dateFormed: \(dateFormed)
                    area: \(area)
                    link: \(link)
                    location: \(String(describing: location))
                    ImageLink: \(imageLink) 
                    parkDescription: \(parkDescription)
                }
               """
    }
    
    init(parkName: String, parkLocation: String, dateFormed: String, area: String, link: String, location: CLLocation?, imageLink: String, parkDescription: String){
        self.set(parkName: parkName)
        self.set(parkLocation: parkLocation)
        self.set(dateFormed: dateFormed)
        self.set(area: area)
        self.set(link: link)
        self.set(location: location)
        self.set(imageLink: imageLink)
        self.set(parkDescription: parkDescription)
    }
    
    convenience init () {
        self.init(parkName: "Unknown", parkLocation: "Unknown", dateFormed: "Unknown", area: "Unknown", link: "Unknown", location: nil, imageLink: "Unknown", parkDescription: "Uknown")
    }
    
    func getParkName() -> String {return parkName}
    func set(parkName: String) {
        let parkName  = parkName.trim()
        if (parkName.count >= 3 && parkName.count < 75){
            self.parkName = parkName
        }else{
            self.parkName = "TBD"
            print("Bad value of ab in set(parkName: setting to TBD)")
        }
        
        
    }
    func getParkLocation() -> String {return parkLocation}
    func set(parkLocation: String) {
        let parkLocation = parkLocation.trim()
        if (parkLocation.count >= 3 && parkLocation.count < 75){
            self.parkLocation = parkLocation
        }else{
            self.parkLocation = "TBD"
            print("Bad value of na in set(parkLocation: setting to TBD)")
        }
    }
    func getDateFormed() -> String {return dateFormed}
    func set(dateFormed: String) {self.dateFormed = dateFormed}
    func getArea() -> String {return area}
    func set(area: String) {self.area = area}
    func getLink() -> String {return link}
    func set(link: String) {self.link = link}
    func getLocation() -> CLLocation? {return location}
    func set(location: CLLocation?) {self.location = location}
    func getImageLink() -> String {return imageLink}
    func set(imageLink: String) {self.imageLink = imageLink}
    func getParkDescriptio() -> String {return parkDescription}
    func set(parkDescription: String) {self.parkDescription = parkDescription}
}
