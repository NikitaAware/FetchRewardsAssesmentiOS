//
//  SearchByCategory.swift
//  FetchRecipe
//
//  Created by Nikita Aware on 6/24/23.
//
import SwiftUI
import Foundation
class SearchByCategory {
    
    struct SearchByCategoryView: View {
        var title:String
        
        var sample: [FetchApiData.Meal] = []
        @State private var searchText = ""
        @State private var returnVal:[FetchApiData.Meal] = []
        var body: some View {
            NavigationStack {
                List {
                    ForEach(resultMeals(), id: \.self) { meal in
                        NavigationLink {
                            MealDetails(title: meal.strMeal,
                                        mealName: meal.strMeal,
                                        instructions: meal.strInstructions ?? "Instructions are not provided",
                                        strIngredient1: meal.strIngredient1 ?? "",
                                        strIngredient2: meal.strIngredient2 ?? "",
                                        strIngredient3: meal.strIngredient3 ?? "",
                                        strIngredient4: meal.strIngredient4 ?? "",
                                        strIngredient5: meal.strIngredient5 ?? "",
                                        strIngredient6: meal.strIngredient6 ?? "",
                                        strIngredient7: meal.strIngredient7 ?? "",
                                        strIngredient8: meal.strIngredient8 ?? "",
                                        strIngredient9: meal.strIngredient9 ?? "",
                                        strIngredient10: meal.strIngredient10 ?? "",
                                        strIngredient11: meal.strIngredient11 ?? "",
                                        strIngredient12: meal.strIngredient12 ?? "",
                                        strIngredient13: meal.strIngredient13 ?? "",
                                        strIngredient14: meal.strIngredient14 ?? "",
                                        strIngredient15: meal.strIngredient15 ?? "",
                                        strIngredient16: meal.strIngredient16 ?? "",
                                        strIngredient17: meal.strIngredient17 ?? "",
                                        strIngredient18: meal.strIngredient18 ?? "",
                                        strIngredient19: meal.strIngredient19 ?? "",
                                        strIngredient20: meal.strIngredient20 ?? "",
                                        strMeasure1: meal.strMeasure1 ?? "",
                                        strMeasure2: meal.strMeasure2 ?? "",
                                        strMeasure3: meal.strMeasure3 ?? "",
                                        strMeasure4: meal.strMeasure4 ?? "",
                                        strMeasure5: meal.strMeasure5 ?? "",
                                        strMeasure6: meal.strMeasure6 ?? "",
                                        strMeasure7: meal.strMeasure7 ?? "",
                                        strMeasure8: meal.strMeasure8 ?? "",
                                        strMeasure9: meal.strMeasure9 ?? "",
                                        strMeasure10: meal.strMeasure10 ?? "",
                                        strMeasure11: meal.strMeasure11 ?? "",
                                        strMeasure12: meal.strMeasure12 ?? "",
                                        strMeasure13: meal.strMeasure13 ?? "",
                                        strMeasure14: meal.strMeasure14 ?? "",
                                        strMeasure15: meal.strMeasure15 ?? "",
                                        strMeasure16: meal.strMeasure16 ?? "",
                                        strMeasure17: meal.strMeasure17 ?? "",
                                        strMeasure18: meal.strMeasure18 ?? "",
                                        strMeasure19: meal.strMeasure19 ?? "",
                                        strMeasure20: meal.strMeasure20 ?? ""
                                        
                            )
                        } label: {
                            Text(meal.strMeal)
                        }
                    }
                }
                .navigationTitle(title)
            }
            .searchable(text: $searchText)
        }
        
        func resultMeals() -> ([FetchApiData.Meal]) {
            var link = "www.themealdb.com/api/json/v1/1/search.php?s="
            if (title == "Search by id") {
                link = "www.themealdb.com/api/json/v1/1/lookup.php?i="
            } else if (title == "Search by Category") {
                link = "www.themealdb.com/api/json/v1/1/search.php?s="
            }
            FetchApiData().callSearchAPI(apiLink: link, with: searchText, completionBlock: {
                meal in
                returnVal = meal
            })
            if searchText.isEmpty {
                return sample
            } else {
                return returnVal.sorted(by: {$0.strMeal < $1.strMeal})
            }
        }
        
    }
    
    
    
}
