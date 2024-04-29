//
//  Reviewers_2.swift
//  App526
//
//  Created by Вячеслав on 4/26/24.
//

import SwiftUI

struct Reviewers_2: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            Image("reviewers_2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .ignoresSafeArea(.all, edges: .top)
                .frame(maxHeight: .infinity, alignment: .top)
            
            VStack(spacing: 45) {
                
                Spacer()
                
                VStack(alignment: .center, spacing: 10, content: {
                    
                    Text("Up-to-date data")
                        .foregroundColor(.white)
                        .font(.system(size: 23, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("Constant updates for better performance")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                
                Button(action: {
                    
                    status = true
                    
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
    Reviewers_2()
}
