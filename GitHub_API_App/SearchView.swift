//
//  SearchView.swift
//  GitHub_API_App
//
//  Created by Luca on 16/08/23.
//

import SwiftUI

struct SearchView: View {
    
    @State public var name: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Insert GitHub Username")
                TextField("username", text: $name)
                    .frame(width: 150)
                    .foregroundColor(.blue)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                
                NavigationLink("Search", destination: ContentView(userName: $name))
                    .buttonStyle(.borderedProminent)
                    .padding()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
