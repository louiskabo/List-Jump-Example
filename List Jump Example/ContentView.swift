//
//  ContentView.swift
//  List Jump Example
//
//  Created by Louis Kabo on 1/17/20.
//  Copyright © 2020 Kaboserv.com Development. All rights reserved.


import SwiftUI

struct ContentView: View {
    
    // @State var lostSubs = ""
    var TheList: [ListItemForOrder] = [
        ListItemForOrder(name: "Item #1", desc: "This is an item"),
        ListItemForOrder(name: "Item #2", desc: "This is an item"),
        ListItemForOrder(name: "Item #3", desc: "This is an item"),
        ListItemForOrder(name: "Item #4", desc: "This is an item"),
        ListItemForOrder(name: "Item #5", desc: "This is an item"),
        ListItemForOrder(name: "Item #6", desc: "This is an item"),
        ListItemForOrder(name: "Item #7", desc: "This is an item"),
        ListItemForOrder(name: "Item #8", desc: "This is an item"),
        ListItemForOrder(name: "Item #9", desc: "This is an item"),
        ListItemForOrder(name: "Item #10", desc: "This is an item"),
        ListItemForOrder(name: "Item #11", desc: "This is an item"),
        ListItemForOrder(name: "Item #12", desc: "This is an item"),
        ListItemForOrder(name: "Item #13", desc: "This is an item"),
        ListItemForOrder(name: "Item #14", desc: "This is an item"),
        ListItemForOrder(name: "Item #15", desc: "This is an item"),
        ListItemForOrder(name: "Item #16", desc: "This is an item"),
        ListItemForOrder(name: "Item #17", desc: "This is an item"),
        ListItemForOrder(name: "Item #18", desc: "This is an item"),
        ListItemForOrder(name: "Item #19", desc: "This is an item"),
        ListItemForOrder(name: "Item #20", desc: "This is an item"),
        ListItemForOrder(name: "Item #21", desc: "This is an item"),
        ListItemForOrder(name: "Item #22", desc: "This is an item"),
        ListItemForOrder(name: "Item #23", desc: "This is an item"),
        ListItemForOrder(name: "Item #24", desc: "This is an item"),
        ListItemForOrder(name: "Item #25", desc: "This is an item"),
        ListItemForOrder(name: "Item #26", desc: "This is an item"),
        ListItemForOrder(name: "Item #27", desc: "This is an item"),
        ListItemForOrder(name: "Item #28", desc: "This is an item"),
        ListItemForOrder(name: "Item #29", desc: "This is an item"),
        ListItemForOrder(name: "Item #30", desc: "This is an item"),
        ListItemForOrder(name: "Item #31", desc: "This is an item"),
        ListItemForOrder(name: "Item #32", desc: "This is an item"),
        ListItemForOrder(name: "Item #33", desc: "This is an item"),
        ListItemForOrder(name: "Item #34", desc: "This is an item"),
        ListItemForOrder(name: "Item #35", desc: "This is an item"),
    ]
    
    
    
    var body: some View {
        
        NavigationView {
        List(TheList) { item in
            
            NavigationLink(destination: AnotherView()) {
                CellView(itemName: item.name, itemDesc: item.desc)}
            
        }        .navigationBarTitle("The List")

        }
        
    }
    
}


struct AnotherView: View {
    var body: some View {
        Text("Navigated to this other view.")
    }
}

struct CellView: View {
    
    var itemName = String()
    var itemDesc = String()
    
    var body: some View {
        VStack{
            Text(itemName).bold()
            Text(itemDesc)
        }
    }
}

struct ListItemForOrder: Identifiable {
    let id: UUID
    let name: String
    let desc: String
    
    init(name:String, desc:String) {
        self.id = UUID();
        self.name = name
        self.desc = desc
        
    }
}

struct SubListNJAll_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
