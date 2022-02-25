import SwiftUI

struct PracticeRow: View {
    
    var actor: Actor
    
    var body: some View {
        Image (systemName: "film")
        Text(actor.name)
        Text (actor.movie)
        Text (" \(actor.age)")
    }
}
