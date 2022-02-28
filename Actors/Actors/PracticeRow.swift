import SwiftUI

struct PracticeRow: View {
    
    var actor: Actor
    
    var body: some View {
        
        VStack (alignment: .leading, spacing: 5) {
        
        Image (systemName: "film")
        }
        VStack (alignment: .leading, spacing: 5){
            
            Text (actor.name.uppercased())
                .bold()
                .padding(.horizontal, 8)
                .foregroundColor(.purple)
                
        
        Text ("Age: \(actor.age) years")
            .padding(3)
            .font(Font.system(size:15))
            
            Text ("Country: \(actor.birthCountry)")
                .padding(.bottom,3)
                .font (Font.system(size:14))
            
            Text ("Award: \(actor.award)")
                .padding(3)
                .font(Font.system(size: 13))
                .foregroundColor(.orange)
    }
}
}

