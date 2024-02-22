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
    private let myCellVidth = UIScreen.main.bounds.width / 2
    override func viewDidLoad() {
        super.viewDidLoad()
        collectiionView.dataSource = self
        collectiionView.delegate = self
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

// MARK: - UICollectionViewDelegate
extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath.section) \(myCountries[indexPath.row])")
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: myCellVidth, height: myCellVidth)
    }
}
