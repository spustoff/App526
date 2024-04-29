//
//  Users_4.swift
//  App526
//
//  Created by Вячеслав on 4/26/24.
//

import SwiftUI

struct Users_4: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            Image("users_4")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .ignoresSafeArea(.all, edges: .top)
                .frame(maxHeight: .infinity, alignment: .top)
            
            VStack(spacing: 45) {
                
                Spacer()
                
                VStack(alignment: .center, spacing: 10, content: {
                    
                    Text("Don’t miss anything")
                        .foregroundColor(.white)
                        .font(.system(size: 23, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("Don’t miss the most userful information")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                
                Button(action: {
                    
                    status = true
                    
                }, label: {
                    
                    Text("Enable Notifications")
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
    Users_4()
}
