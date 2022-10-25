//
//  ltkStats.swift
//  LTK Challenge
//
//  Created by OrchideSr on 2022-10-24.
//

import Foundation

struct HeroStats: Decodable {
    var localized_name: String
    var primary_attr: String
    var attack_type: String
    var img: String
}

//struct ProductsStat: Decodable {
//    var product = [String]()
//}

//struct Products: Decodable {
//    var id: String
//}
////
//struct Ltks: Decodable {
//    var heroImage:String?
//    var id:String?
//    var status: String?
//    var profile_id: String?
////    var product_ids: []
//}
////
//struct Products: Decodable {
//    var ltk_id: String?
//    var image_url: String?
//    var product_details_id: String?
//    var retailer_display_name: String?
//}
////
//struct Profile: Decodable {
//    var display_name: String?
//}
