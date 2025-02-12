//
//  AddSocialConnectionView.swift
//  statget
//
//  Created by Ranjithkumar Matheswaran on 18/01/25.
//

import SwiftUI

struct AddSocialConnectionView: View {
    
    @Bindable var viewModel: AddSocialConnection = .init()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.allowedSocialMedias) { socialMedia in
                    HStack {
                        Image(socialMedia.iconName)
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 24)
                        
                        Text(socialMedia.displayName)
                    }
                }
            }
            .listStyle(.insetGrouped)
        }
        .navigationTitle("Add a connection")
        .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    AddSocialConnectionView()
}
