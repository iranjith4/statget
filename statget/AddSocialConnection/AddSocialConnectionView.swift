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
        List {
            Section("Add a connection") {
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
        }
        .listStyle(.insetGrouped)
        .padding(.vertical)
        .frame(maxWidth: .infinity, alignment: .leading)
        .edgesIgnoringSafeArea(.bottom)
        .navigationTitle("")
    }
}

#Preview {
    AddSocialConnectionView()
}
