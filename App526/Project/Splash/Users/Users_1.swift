//
//  Users_1.swift
//  App526
//
//  Created by Вячеслав on 4/26/24.
//

import SwiftUI

struct Users_1: View {
    
    let telegram: URL
    let isTelegram: Bool
    
    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            Image("users_1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .ignoresSafeArea(.all, edges: .top)
                .frame(maxHeight: .infinity, alignment: .top)
            
            VStack(spacing: 45) {
                
                Spacer()
                
                VStack(alignment: .center, spacing: 10, content: {
                    
                    Text("Make money easily\nand immediately")
                        .foregroundColor(.white)
                        .font(.system(size: 23, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("Get a tool to make money")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                
                NavigationLink(destination: {
                    
                    Users_2(telegram: telegram, isTelegram: isTelegram)
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    Text("Next")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .regular))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                        .padding()
                        .padding(.horizontal, 35)
                })
            }
        }
    }
}

#Preview {
    Users_1(telegram: URL(string: "h")!, isTelegram: false)
}
