
import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                NavigationLink(destination: MyCalcView()) {
                    Image(uiImage: UIImage(named: "bmi.png")!)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
                
                Text("Calculate BMI")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .frame(maxWidth: 200)
                    .background(.black)
                    .cornerRadius(20)
                    .opacity(0.8)
                    .offset(y:-75)
                    .padding(.bottom, -75)
                
                NavigationLink(destination: MyDevView()) {
                    Image(uiImage: UIImage(named: "developer.png")!)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
                
                Text("About Developer")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .frame(maxWidth: 240)
                    .background(.black)
                    .cornerRadius(20)
                    .opacity(0.8)
                    .offset(y:-70)
                    .padding(.bottom, -75)
            }
            
            .navigationTitle("BMICalulator")
            .navigationBarTitleDisplayMode(.large)
            
        }
    }
}
