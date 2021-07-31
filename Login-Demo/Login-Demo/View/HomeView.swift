//
//  HomeView.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/26.
//

import SwiftUI

struct HomeView: View {
    
    @State private var jumpToPerson: String? = nil
    
    var body: some View {
        ZStack {
            NavigationLink(
                "",
                destination: PersonView().environmentObject(PersonDefaultMessage()),
                tag:("toPerson"),
                selection: $jumpToPerson
            )
            VStack {
                HStack {
                    Image("logo_white")
                    Spacer()
                    Button(action: {
                        jumpToPerson = "toPerson"
                    }, label: {
                        Image("vip_icon")
                    })
                }
                .padding(20)
                
                HomePageVC()
                    .frame(width: 335, height: 240, alignment: .center)
                    .background(Color.pink)
                    .cornerRadius(10)
                
                HomeIconView()
                    .padding(.top, 20)
                
                HomeClassifiesView()
                    .padding(20)
                Spacer()
            }
            .offset(x: 0, y: 44.0)
        }
        .background(
            hexColor(hex: 0x000000)
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        )
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
