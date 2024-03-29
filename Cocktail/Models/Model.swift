//
//  Model.swift
//  Cocktail
//
//  Created by Сергей Поляков on 11.01.2023.
//

import Foundation

//struct Drinks {
//    let drinks: [Drink]
//}

//struct Drink {
//    let drink: String
//    let glass: String
//    let instructions: String
//    let ingredients: [Ingredient]


struct Ingredient: Decodable {
    let name: String
    let measure: String
    var imageUrl: String {
        let ingredientWithoutSpace = name.replacingOccurrences(of: " ", with: "%20")
        return "https://www.thecocktaildb.com/images/ingredients/\(ingredientWithoutSpace)-Medium.png"
    }
}

struct JsonDrinks: Decodable {
    let drinks: [JsonDrink]
}

struct JsonDrink: Decodable {
    let idDrink: String?
    let strDrink: String?
    let strDrinkAlternate: String?
    let strTags: String?
    let strVideo: String?
    let strCategory: String?
    let strIBA: String?
    let strAlcoholic: String?
    let strGlass: String?
    let strInstructions: String?
    let strDrinkThumb: String?
    let strIngredient1: String?
    let strIngredient2: String?
    let strIngredient3: String?
    let strIngredient4: String?
    let strIngredient5: String?
    let strIngredient6: String?
    let strIngredient7: String?
    let strIngredient8: String?
    let strIngredient9: String?
    let strIngredient10: String?
    let strIngredient11: String?
    let strIngredient12: String?
    let strIngredient13: String?
    let strIngredient14: String?
    let strIngredient15: String?
    let strMeasure1: String?
    let strMeasure2: String?
    let strMeasure3: String?
    let strMeasure4: String?
    let strMeasure5: String?
    let strMeasure6: String?
    let strMeasure7: String?
    let strMeasure8: String?
    let strMeasure9: String?
    let strMeasure10: String?
    let strMeasure11: String?
    let strMeasure12: String?
    let strMeasure13: String?
    let strMeasure14: String?
    let strMeasure15: String?
    let strImageSource: String?
}



struct JsonIngredients: Decodable {
    let drinks: [JsonIngredient]
}

struct JsonIngredient: Decodable {
    let strIngredient1: String
}



struct JsonDrinksByIngredient: Decodable {
    let drinks: [JsonDrinkByIngredient]
}

struct JsonDrinkByIngredient: Decodable {
    let strDrink: String
    let strDrinkThumb: String
    let idDrink: String
}

