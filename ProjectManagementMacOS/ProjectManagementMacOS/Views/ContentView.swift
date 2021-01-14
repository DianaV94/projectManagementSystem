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
            Text("No Data")
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectedTable: .projects)
    }
}
