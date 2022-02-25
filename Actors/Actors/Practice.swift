import SwiftUI

struct Practice: View {
    
    var actors = [Actor (name: "Keanu Reevs", movie: "Matrix", age: 55, image: "Keanu", trailer: "September"),
                  Actor (name: "Jessica Alba", movie: "Unknown", age:40, image: "Jessica", trailer: "July"),
                  Actor (name: "Sarah Jessica Parker", movie: "Desperate housewives", age: 51, image: "Sarah", trailer: "October"),
                  Actor (name: "Maia Morgenstern", movie: "No movie", age:60, image: "Maia", trailer: "April"),
                  Actor (name: "Sean Connory", movie: "Die hard", age: 65, image: "Sean", trailer: "December")]
    
    var body: some View {
        NavigationView {
            List (actors, id:\.movie){ actor in
                NavigationLink (destination:PracticeDetails (actor:actor)){
                    PracticeRow (actor: actor)
                }
            }
            .navigationTitle("Actors")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
