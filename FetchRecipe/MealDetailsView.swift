//
//  SearchByCategory.swift
//  FetchRecipe
//
//  Created by Nikita Aware on 6/24/23.
//
import SwiftUI
import Foundation

struct MealDetails: View {
    var title:String
    var mealName:String
    var instructions:String
    var strIngredient1: String
    var strIngredient2: String
    var strIngredient3: String
    var strIngredient4: String
    var strIngredient5: String
    var strIngredient6: String
    var strIngredient7: String
    var strIngredient8: String
    var strIngredient9: String
    var strIngredient10: String
    var strIngredient11: String
    var strIngredient12: String
    var strIngredient13: String
    var strIngredient14: String
    var strIngredient15: String
    var strIngredient16: String
    var strIngredient17: String
    var strIngredient18: String
    var strIngredient19: String
    var strIngredient20: String
    var strMeasure1: String
    var strMeasure2: String
    var strMeasure3: String
    var strMeasure4: String
    var strMeasure5: String
    var strMeasure6: String
    var strMeasure7: String
    var strMeasure8: String
    var strMeasure9: String
    var strMeasure10: String
    var strMeasure11: String
    var strMeasure12: String
    var strMeasure13: String
    var strMeasure14: String
    var strMeasure15: String
    var strMeasure16: String
    var strMeasure17: String
    var strMeasure18: String
    var strMeasure19: String
    var strMeasure20: String
    var sample: [FetchApiData.Meal] = []
    
    
    var body: some View {
        var x =
        strIngredient1 + "  " + strMeasure1 + "\n" +
        strIngredient2 + "  " + strMeasure2 + "\n" +
        strIngredient3 + "  " + strMeasure3 + "\n" +
        strIngredient4 + "  " + strMeasure4 + "\n" +
        strIngredient5 + "  " + strMeasure5 + "\n" +
        strIngredient6 + "  " + strMeasure6 + "\n" +
        strIngredient7 + "  " + strMeasure7 + "\n" +
        strIngredient8 + "  " + strMeasure8 + "\n" +
        strIngredient9 + "  " + strMeasure9 + "\n" +
        strIngredient10 + "  " + strMeasure10 + "\n" +
        strIngredient11 + "  " + strMeasure11 + "\n" +
        strIngredient12 + "  " + strMeasure12 + "\n" +
        strIngredient13 + "  " + strMeasure13 + "\n" +
        strIngredient14 + "  " + strMeasure14 + "\n" +
        strIngredient15 + "  " + strMeasure15 + "\n" +
        strIngredient16 + "  " + strMeasure16 + "\n" +
        strIngredient17 + "  " + strMeasure17 + "\n" +
        strIngredient18 + "  " + strMeasure18 + "\n" +
        strIngredient19 + "  " + strMeasure19 + "\n" +
        strIngredient20 + "  " + strMeasure20 + "\n"
        
        Text(mealName)  .fontWeight(.bold)
            .font(.title).foregroundColor(.green).border(.green).padding(10)
        
        Text("Ingredients and proportions are as follows") .fontWeight(.bold).padding(10)
        
        
        Text(x).padding(10)
        Text("Instructions are as follows") .fontWeight(.bold).padding(10)
        Text(instructions).padding(10)
        
    }
}




