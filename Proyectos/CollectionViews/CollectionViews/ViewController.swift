//
//  ViewController.swift
//  CollectionViews
//
//  Created by Esteban Perez Castillejo on 21/2/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectiionView: UICollectionView!
    
    private let myCountries = ["España", "Portugal", "francia", "Italia", "Alemania", "Inglaterra" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectiionView.dataSource = self
        
        collectiionView.register(UINib(nibName: "MyCustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mycell")
    }


}
// MARK: - UICollectionViewDataSource
extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myCountries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as? MyCustomCollectionViewCell
        cell!.myFirstLabel.text = myCountries[indexPath.row]
        return cell!
    }
    
    
}
