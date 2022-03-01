import SwiftUI

struct PracticeDetails: View {
    
    var actor: Actor
    
    var body: some View {
 
        ZStack {
            
            Color(.gray)
        
        VStack {
        
        VStack (alignment:.leading, spacing:8) {
            Text(actor.movie.uppercased())
                .foregroundColor(Color ("Albastru"))
                .bold()
                .italic()
                .padding(.bottom,2)
                .padding(.top,8)
            
            Text (actor.movie)
           
            
            
            Image (actor.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text (actor.trailer)
                .foregroundColor(Color ("Verde"))
            
            HStack {
                Spacer ()
                
                Button ("See trailer"){
                }
                Spacer ()
            }
            Spacer ()
        }
        .padding (.horizontal, 12)
    }
}
}
}
