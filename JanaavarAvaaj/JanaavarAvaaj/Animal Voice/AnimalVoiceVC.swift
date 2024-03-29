//
//  AnimalVoiceVC.swift
//  JanaavarAvaaj
//
//  Created by Yash Dhaduk on 11/03/24.
//

import UIKit
import AVFoundation

class AnimalVoiceVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let images = ["Lion","Tiger","Elephant","Horse","Dog","Cat","Snake","Bears","Wolf","Giraffe","Deer","Cheetah","Monkey","Goat","Donkey","Crocodiles","Sheep","Hippo","Leopard","Frogs","Cow","Buffalo","Camel","Rat","Pig","Fox","Rabbit","Turtle","Gorillas","Squirrel"]
    let number = ["1.","2.","3.","4.","5.","6.","7.","8.","9.","10.","11.","12.","13.","14.","15.","16.","17.","18.","19.","20.","21.","22.","23.","24.","25.","26.","27.","28.","29.","30."]
    let name = ["Lion","Tiger","Elephant","Horse","Dog","Cat","Snake","Bears","Wolf","Giraffe","Deer","Cheetah","Monkey","Goat","Donkey","Crocodiles","Sheep","Hippo","Leopard","Frogs","Cow","Buffalo","Camel","Rat","Pig","Fox","Rabbit","Turtle","Gorillas","Squirrel"]

    @IBOutlet weak var collectionview: UICollectionView!
    
    @IBOutlet weak var btn_back: UIButton!
    
    var player: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionview.dataSource = self
        self.collectionview.delegate = self
        self.btn_back.layer.cornerRadius = 15
        // Do any additional setup after loading the view.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return name.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AnimalVoiceCell", for: indexPath) as! AnimalVoiceCell
        
        cell.img_animal.image = UIImage(named: images[indexPath.row])
        cell.lbl_no.text = number[indexPath.row]
        cell.lbl_name.text = name[indexPath.row]
        
        return cell
    }
    
  
        
       
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       

        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AnimalVC") as! AnimalVC

        
        vc.imageb = UIImage(named: images[indexPath.row])!
        vc.nameb = name[indexPath.row]
        let selectedSong = name[indexPath.row]
        vc.selectedSong = selectedSong

        
 
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
        

    @IBAction func btn_back(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)

    }
    
}
