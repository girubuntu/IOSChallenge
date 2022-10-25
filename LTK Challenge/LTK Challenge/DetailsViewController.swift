//
//  DetailsViewController.swift
//  LTK Challenge
//
//  Created by OrchideSr on 2022-10-24.
//

import UIKit

extension UIImageView {
    func downloaded(from url: URL, contentMode mode: ContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
            }
        }.resume()
    }
    func downloaded(from link: String, contentMode mode: ContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}

class DetailsViewController: UIViewController {
    
    
    

    
    
    @IBOutlet weak var heroImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var attributeLbl: UILabel!
    
    @IBOutlet weak var attackLabel: UILabel!
    //    @IBOutlet weak var nameLabel: UIImageView!
//    
//    @IBOutlet weak var attributeLbl: UIImageView!
//    
//   
//    @IBOutlet weak var attackLabel: UIImageView!
    
    var hero: HeroStats?
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        nameLabel.text = hero?.localized_name
//        attributeLbl.text = hero?.primary_attr
//        attackLabel.text = hero?.attack_type
        
        nameLabel.text = hero?.localized_name
        attackLabel.text = hero?.attack_type
        attributeLbl.text = hero?.primary_attr
        
        
        let imgUrl = "https://api.opendota.com" + (hero?.img)!
        heroImage.downloaded(from: imgUrl)
    }
    



}
