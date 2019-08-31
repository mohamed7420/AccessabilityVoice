//
//  ViewController.swift
//  AccessabilityVoice
//
//  Created by Mohamed on 9/1/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

struct Animal{
    
    
    var animalEmoji:String
    var animalName:String
    var animalScore:String
    
    
}


class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var dataOfAnimal:[Animal] = [Animal(animalEmoji: "🐶", animalName: "Dog", animalScore: "3star") , Animal(animalEmoji: "🐱", animalName: "Cat", animalScore: "5star")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
 
     
    
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}

extension ViewController : UITableViewDataSource , UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return dataOfAnimal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableCell else {
            return TableCell()
        }
        
        cell.emojiLabel.text = dataOfAnimal[indexPath.row].animalEmoji
        cell.nameLabel.text = dataOfAnimal[indexPath.row].animalName
        cell.scoreLabel.text = dataOfAnimal[indexPath.row].animalScore
        
        return cell
    }
    
    
    
    
}

