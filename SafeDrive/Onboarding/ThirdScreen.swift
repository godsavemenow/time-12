//
//  ThirdScreen.swift
//  SafeDrive
//
//  Created by Lucas Silva on 11/02/21.
//

import Foundation
import SwiftUI

struct ThirdScreen: View {
    
    @State private var isAnimating: Bool = false
    @EnvironmentObject var toggle: OnboardingToggle
//    @Environment(\.presentationMode) var presentationMode
//    @State private var isNextPage: Bool = false
    
    var body: some View {
        ZStack {
            
            // MARK: Conteudo Página 2 do Onboarding
            VStack(alignment: .center) {
              
                
                Image("Trofeu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.width*0.5, alignment: .center)
                    //animation
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                    .padding(.top, UIScreen.main.bounds.width*0.3)
                    .padding(.bottom, UIScreen.main.bounds.width*0.2)

                
                VStack(alignment: .center){
                    
                    Text("Conquiste Pontos e Troféus")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.bottom, UIScreen.main.bounds.width*0.005)
                        .foregroundColor(Color(.black))
                    
                    Text("Obtenha pontos e troféus que você pode trocar por benefícios com nossos parceiros!")
                        .font(.system(size: 17))
                        .multilineTextAlignment(.center)
                        .frame(width: UIScreen.main.bounds.width*0.7, height: UIScreen.main.bounds.width*0.15, alignment: .center)
                        .padding(.bottom, UIScreen.main.bounds.width*0.06)
                        .foregroundColor(Color(.black))
                    
                }
                
                                HStack(){
                    
                    Image("Bolinha3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width*0.34, height: UIScreen.main.bounds.height*0.1, alignment: .leading)
                        //animation
                        .scaleEffect(isAnimating ? 1.0 : 0.6)
                        .padding(.leading, UIScreen.main.bounds.width*0.29)
                        
                    Spacer()
                    
                }
                .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.width*0.2, alignment: .trailing)
                
                Button(
                    action:{
                        self.toggle.currentPage = "ContentView"
                    }) {
                    ZStack{
                        Image("orangeretangle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width*0.50, height: UIScreen.main.bounds.height*0.07, alignment: .center)
                            //animation
                            .scaleEffect(isAnimating ? 1.0 : 0.6)
                        Text("Vamos Começar!")
                            .multilineTextAlignment(.center)
                            .frame(width: UIScreen.main.bounds.width*0.4, height: 50, alignment: .center)
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                        }
                    
                }
                Spacer()
                
            }
            .onAppear{
                withAnimation(
                    .easeIn(
                        duration: 0.5)){
                    isAnimating = true
                }
            }
            .background(Color(.white))
            .frame(width: UIScreen.main.bounds.width*0.846, height: UIScreen.main.bounds.height*0.9, alignment: .center)
            .cornerRadius(12, corners: [.topLeft, .bottomLeft, .topRight, .bottomRight])
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
        .background(Color(UIColor(red: 0.6, green: 0.73, blue: 0.84, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            ThirdScreen()
                .previewDevice("iPhone 11 Pro Max")
        }
    }
}
