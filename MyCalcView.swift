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
        if bmiValue >= 40 {
            result += "คุณเป๊นโรคอ้วนขั้นสูงสุด กรุณาพบแพทย์ด่วน"
        } else if bmiValue >= 35 {
            result += "คุณเป็นโรคอ้วนระดับ 2 คุณเสี่ยงต่อการเกิดโรคที่มากับความอ้วนหากคุณมีเส้นรอบเอวมากกว่าเกณท์ปกติคุณจะเสี่ยงต่อการเกิดโรคสูง คุณต้องควบคุมอาหาร และออกกำลังกายอย่างจริงจัง"
        } else if bmiValue >= 28.5 {
            result += "คุณเป็นโรคอ้วนระดับ 1 คุณจะมีโอกาสเกิดโรคความดันและเบาหวานจำเป็นต้องควบคุมอาหารและออกกำลังกาย"
        } else if bmiValue >= 23.5 {
            result += "น้ำหนักเกิน หากคุณมีกรรมพันธ์เป็นโรคเบาหวานหรือไขมันใน เลือดสูงต้องพยายามลดนั้าหนักให้ดัชนีมวลกายตํ่ากว่า 23"
        } else if bmiValue >= 18.5{
            result += "น้ำหนักปกติ หากมีปริมาณไขมันอยู่ในเกณฑ์ปกติมักจะไม่ค่อยมีโรคร้ายอุบัติการณ์ของโรคเบาหวานและความดันโลหิตสูง"
        } else {
            result += "น้ำหนักน้อยเกินไป ควรรับประทานอาหารที่มีคุณภาพ และมีปริมาณพลังงานเพียงพอ และออกกําลังกายอย่างเหมาะสม"
        }
        return result
    }
}
