//
//  Reviewers_1.swift
//  App526
//
//  Created by Вячеслав on 4/26/24.
//

import SwiftUI

struct Reviewers_1: View {
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            Image("reviewers_1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .ignoresSafeArea(.all, edges: .top)
                .frame(maxHeight: .infinity, alignment: .top)
            
            VStack(spacing: 45) {
                
                Spacer()
                
                VStack(alignment: .center, spacing: 10, content: {
                    
                    Text("Memo for work")
                        .foregroundColor(.white)
                        .font(.system(size: 23, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("Keep the stragettes with you at all times")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                
                NavigationLink(destination: {
                    
                    Reviewers_2()
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
    Reviewers_1()
}
