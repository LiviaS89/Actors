import SwiftUI

struct PracticeDetails: View {
    
    var actor: Actor
    @State var number = ""
    
    var body: some View {
        
        ZStack {
            Color.gray.opacity(0.3)
            
            VStack {
                
                VStack (alignment:.leading, spacing:8) {
                    Text (actor.movie.uppercased())
                        .foregroundColor(.black)
                        .bold()
                        .padding(.top,12)
                        .padding(.bottom, 8)
                    
                    HStack (alignment: .top){
                        Spacer ()
                        
                        Image (actor.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 220, height: 220)
                        
                        Spacer()
                    }
                    Text (actor.movieType)
                        .foregroundColor(.green)
                        .bold()
                    
                    Text ("Summary: \(actor.description)")
                        .font(Font.system(size: 14))
                    
                    Text ("Release date: \(actor.releaseDate)")
                        .font(Font.system (size: 12))
                    
                    TextField ("Rating", text: $number)
                        .keyboardType(.numberPad)
                    
                    HStack {
                        Spacer ()
                        
                        Button ("Play trailer") {
                            print ("www.imdb.com")
                        }
                        .padding(.horizontal)
                        .padding (.vertical,5)
                        .foregroundColor(.black)
                        .background(Color.yellow)
                        .clipShape(Capsule ())
                        
                        Spacer ()
                    }
                    Spacer ()
                }
                .padding (.horizontal, 12)
            }
        }
    }
}
