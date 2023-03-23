//
//  RatingViewController.swift
//  ProjectClosureOne
//
//  Created by Ana Paula Silva de Sousa on 22/03/23.
//

import UIKit

class RatingViewController: UIViewController {
    
    @IBOutlet var labelRating: UILabel!
    @IBOutlet var labelName: UILabel!
    @IBOutlet var imageRating: UIImageView!
    
    var ratingPizza: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = "AVALIAÇÃO CLIENTE"
        labelRating.text = "Para nossos clientes, a pizza \(ratingPizza?.name ?? "") esta na posiçao \(ratingPizza?.rating ?? 0) /5 - de aprovação"
        let urlImage = URL(string: ratingPizza?.imageURL ?? "")
        imageRating.sd_setImage(with: urlImage)
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
