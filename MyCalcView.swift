//
//  MyCalcView.swift
//  BMI Calculator
//
//  Created by Thapat Auechaikasem on 23/1/67.
//

import SwiftUI

struct MyCalcView: View {
    
    // delare values
    @State private var myWeight : Int = 55
    @State private var myHeight : Int = 165
    @State private var myBMIResult : String = ""
    
    func bmiresultinterpert(bmiValue: Double) -> String {
        var result : String = "BMI Value = \(bmiValue) \n"
        // translation not final
        // (rant below)
        // it english cause the whole app is in english why would be in thai
        // and most people understand english so why not
        if bmiValue >= 40 {
            result += "You are extremely obese. Please seek medical attention immediately."
        } else if bmiValue >= 35 {
            result += "You are obese, level 2. You are at risk of developing obesity-related diseases. If your waist circumference is greater than normal, you are at higher risk of developing obesity. You must control your diet. and exercise seriously"
        } else if bmiValue >= 28.5 {
            result += "You are obese, level 1. You are more likely to develop high blood pressure and diabetes. You need to control your diet and exercise."
        } else if bmiValue >= 23.5 {
            result += "Overweight, If you are genetically affected by diabetes or high blood cholesterol, you must lose weight so that your body mass index is less than 23."
        } else if bmiValue >= 18.5{
            result += "Normal weight, If the amount of fat is within the normal range, there is rarely an incidence of diabetes and high blood pressure."
        } else {
            result += "Underweight, You should eat high quality food. and has sufficient energy and exercise appropriately."
        }
        return result
    }
    
    var body: some View {
        ZStack {
            Color.init(red: 239/255, green: 244/255, blue: 244/255)
            VStack {
                VStack {
                    
                    Stepper("Weight \(self.myWeight) kilograms") {
                        self.myWeight += 1
                    } onDecrement: {
                        self.myWeight -= 1
                    }
                    .font(.system(size: 20, weight: .heavy))
                    .foregroundColor(.white)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 45)
                    .padding(20)
                    .background(.yellow)
                    .cornerRadius(10)
                    
                    Stepper("Height \(self.myHeight) centimeters"){
                        self.myHeight += 1
                    } onDecrement: {
                        self.myHeight -= 1
                    }
                    .font(.system(size: 20, weight: .heavy))
                    .foregroundColor(.white)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 45)
                    .padding(20)
                    .background(.orange)
                    .cornerRadius(10)
                    
                }
                .offset(y : 20)
                HStack {
                    
                    Button(action: {
                        self.myBMIResult = self.bmiresultinterpert(bmiValue: Double(self.myWeight) / (pow(Double(self.myHeight) / 100, 2)))
                    }){
                        Text("Show BMI Value")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 0 ,maxHeight: 45)
                            .background(.red)
                            .foregroundColor(.white)
                    }
                    
                    Button(action: {
                        self.myBMIResult = ""
                    }){
                        Text("Clear Result")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 0 ,maxHeight: 45)
                            .background(.blue)
                            .foregroundColor(.white)
                    }
                }
                Text("\(myBMIResult)")
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                
            }
        }
    }
}
