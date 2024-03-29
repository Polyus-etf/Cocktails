//
//  IngredientCell.swift
//  Cocktail
//
//  Created by Сергей Поляков on 12.01.2023.
//

import UIKit

class IngredientCell: UICollectionViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var ingredientImageView: UIImageView! {
        didSet {
            ingredientImageView.clipsToBounds = true
            ingredientImageView.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var ingredientNameLabel: UILabel! {
        didSet {
            ingredientNameLabel.textColor = .gray
        }
    }
    @IBOutlet weak var ingredientMeasureLabel: UILabel! {
        didSet {
            ingredientMeasureLabel.textColor = .lightGray
        }
    }
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    // MARK: - Public methods
    func configure(with ingridient: Ingredient?) {
        ingredientNameLabel.text = ingridient?.name ?? ""
        ingredientMeasureLabel.text = ingridient?.measure ?? ""
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        fetchImage(from: ingridient?.imageUrl ?? "")
    }
    
    // MARK: - Private methods
    private func fetchImage(from url: String) {
        NetworkManager.shared.fetchImage(from: url) { [weak self] result in
            switch result {
            case .success(let imageDate):
                self?.ingredientImageView.image = UIImage(data: imageDate)
                self?.activityIndicator.stopAnimating()
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
