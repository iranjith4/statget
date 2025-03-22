//
//  HomeView.swift
//  statget
//
//  Created by Ranjithkumar Matheswaran on 18/01/25.
//

import SwiftUI

struct HomeView: View {
    
    @State var showingAddConnection: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 16) {
                Text("No social accounts added.")
                Button("Add") {
                    showingAddConnection.toggle()
                }
                .buttonStyle(.bordered)
                .padding()

            }
            .navigationDestination(isPresented: $showingAddConnection) {
                AddSocialConnectionView()
            }
        }
    }
}

#Preview {
    HomeView()
}
