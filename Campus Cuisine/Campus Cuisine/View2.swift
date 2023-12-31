//
//  View2.swift
//  Campus Cuisine
// Link to OLD video: https://www.youtube.com/watch?v=ReHwsu_fjKs
//
// Link to Video: https://www.youtube.com/watch?v=m36HMne-Dqo
//
//  //

import SwiftUI
import UIKit

struct View2: View {
    
    @State private var searchText: String = ""
    
    private var filteredGrubList: [String]
    {
        if searchText.isEmpty { return grubList }
        return grubList.filter
        {
            $0.lowercased().hasPrefix(searchText.lowercased())
        }
    }
    
    var body: some View {
        NavigationView
        {
            List(filteredGrubList, id: \.self) { grub in
                NavigationLink(destination: {
                    GrubDetailsView(grub: grub)
                })
                {
                    Text(grub)
                        .padding(6)
                }
            }
            .navigationTitle("Search")
            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .always),
                prompt: "search for restaurants.."
            )
        }
    }
}

struct GrubDetailsView: View
{
    let grub: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(grub)
                .font(.largeTitle)
                .bold()
            // Add more details here as needed
            Spacer()
        }
        .padding()
    }
}

/*struct View2: View {
    
    @State private var searchText: String = ""
    
    private var searchResults: [EmojiDetails]
    {
        let results = EmojiProvider.all()
        if searchText.isEmpty { return results }
        return results.filter
        {
            $0.name.lowercased().hasPrefix(searchText.lowercased()) ||
            $0.emoji.hasPrefix(searchText)
        }
    }
    
    var body: some View {
        NavigationView
        {
            List(searchResults) { emojiDetails in
                NavigationLink(destination: {
                    EmojiDetailsView(emojiDetails: emojiDetails)
                })
                {
                    Text("\(emojiDetails.emoji) \(emojiDetails.name)")
                        .padding(6)
                }
            }
            .navigationTitle("Emoji Search")
            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .always),
                prompt: "search for emoji"
            )
        }
    }
}

struct EmojiDetailsView: View
{
    let emojiDetails: EmojiDetails
    
    var body: some View {
        HStack
        {
            VStack(alignment: .leading)
            {
                Text("\(emojiDetails.emoji) \(emojiDetails.name)")
                    .font(.largeTitle)
                    .bold()
                Text(emojiDetails.description)
                Spacer()
            }
            Spacer()
        }
        .padding([.leading, .trailing])
    }
}*/
/*
struct View2: View {
    //establishing class instance for the restaurant name crap
    @State public var myname = uhidk.shared
    
    //other stuff seth added idk
    private var grub = grubList
    @State var searchText = ""
    
    
    var body: some View {
        NavigationView
        {
            
            List
            {
                ForEach(food, id: \.self){ food in
                    HStack
                    {
                        NavigationLink(destination: RestaurantView(), label:
                        {
                            Text(food.capitalized)
                        }).simultaneousGesture(TapGesture().onEnded
                        {
                            myname.namevar = food
                        })
                        //Text(food.capitalized)
                        Spacer()
                        
                    }
                    .padding()
                }
            }
            .searchable(text:$searchText)
            .navigationTitle("Food")
        }
    }
    
    var food: [String] {
            let lcFood = grub.map { $0.lowercased() }
            
            if searchText.isEmpty
            {
                return lcFood
            }
            else
            {
                return lcFood.filter { $0.starts(with: searchText.lowercased()) }
            }
        }
    
}*/




/*
//struct for restaurant objects
struct restaurant: Identifiable
{
    var id: String = UUID().uuidString
    var name: String
    var link: String
    var deliveryeta: String
    var deliverymin: String
    var deliveryonly: Bool
    var location: String
    var rating_count:String
    var deliverycost : String
   // var menu:
    //var deliveryhours:
   // var takeouthours:
}

//placeholder words to search for
let searchable =
[
    restaurant(name: "Your mom", link: "yourmom", deliveryeta: "yourmom", deliverymin: "yourmom", deliveryonly: true, location: "yourmom", rating_count: "10", deliverycost: "your mom"),
    restaurant(name: "Your dad", link: "yourmom", deliveryeta: "yourmom", deliverymin: "yourmom", deliveryonly: true, location: "yourmom", rating_count: "10", deliverycost: "your mom"),
    restaurant(name: "idk", link: "yourmom", deliveryeta: "yourmom", deliverymin: "yourmom", deliveryonly: true, location: "yourmom", rating_count: "10", deliverycost: "your mom")
    
]

struct View2: View {
    @State private var searchText = ""
    var body: some View
    {
        NavigationView
        {
            Color.black.overlay(
                HStack
                {
                    //making search bar
                    Image(systemName: "magnifyingglass").foregroundColor(.black)
                    TextField("Search restaurant by name...", text: $searchText).foregroundColor(.black)
                }.font(.headline).foregroundColor(.white).padding(.all).background(Color.white).cornerRadius(35)).ignoresSafeArea()
        }
    }
}*/


//establishing restaurant view
    struct RestaurantView: View {
        @State public var myname = uhidk.shared
        
        var body: some View {
            Text(myname.namevar)
        }
    }





struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2()
    }
}
