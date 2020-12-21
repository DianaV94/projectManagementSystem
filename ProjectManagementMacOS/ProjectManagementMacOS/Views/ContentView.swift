//
//  ContentView.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 18.12.2020.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTable: Table?
    
    var body: some View {
        NavigationView {
            Sidebar(selectedtable: $selectedTable)
            Text("Work in progress")
            Text("Work in progress")
        }.frame(width: 1000, height: 600, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectedTable: .projects)
    }
}
