//
//  lolview.swift
//  Campus Cuisine
//

//

import SwiftUI

struct lolview: View {
    var body: some View {
        NavigationView
        {
            VStack
            {
                Image("Trollface_non-free").resizable().scaledToFit()
                Text("Problem?").foregroundColor(.black).fontWeight(.bold).padding(.all).font(.system(size: 30))
            }
        }.navigationBarHidden(true)
    }
}

struct lolview_Previews: PreviewProvider {
    static var previews: some View {
        lolview()
    }
}
