//
//  WeatherURLmanager.swift
//  Weather app
//
//  Created by MacStudent on 2020-01-17.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class WeatherURLmanager {
    
    static func getCityWeatherURL(city: String) -> URL? {
        
        let city = city.replacingOccurrences(of: "", with: "%20")
        
let urlString = "http://api.openweathermap.org/data/2.5/weather?q=\(city)&units=metric&APPID=428bbfa5134d801c0ca124f1ea48eafb"
        return URL(string: urlString)
        
        
        
    }
    
    static func getWeatherIconURL(iconCode: String)-> URL? {
        
    let urlString = "http://openweathermap.org/img/w/\(iconCode).png"
        
        return URL(string: urlString)
        
        
        
    }
    
    static func getForecastWeatherURL (city: String)-> URL? {
        
        let city = city.replacingOccurrences(of: "", with: "%20")
        let urlString = "http://api.openweathermap.org/data/2.5/forecast?q=\(city)&APPID=428bbfa5134d801c0ca124f1ea48eafb"
        return URL(string: urlString)
    }
     
}
