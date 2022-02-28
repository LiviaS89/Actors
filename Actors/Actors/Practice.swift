import SwiftUI

struct Practice: View {
    
    var actors = [Actor (name: "Keanu Reevs", movie: "Matrix", age: 55, image: "Keanu", trailer: "September",birthCountry: "Liban", award: "Bravo Otto for the Best Actor"),
                  Actor (name: "Jessica Alba", movie: "Good luck Chuck!", age:40, image: "Jessica", trailer: "July", birthCountry: "California", award: "Saturn Award for Best Actress"),
                  Actor (name: "Sarah Jessica Parker", movie: "Desperate housewives", age: 51, image: "Sarah", trailer: "October", birthCountry: "Ohio", award: " Best Actress in a Comedy Series"),
                  Actor (name: "Maia Morgenstern", movie: "The Mother of Jesus", age:60, image: "Maia", trailer: "April", birthCountry: "Romania", award: "European Actress of the Year"),
                  Actor (name: "Sean Connory", movie: "The Untouchables", age: 75, image: "Sean", trailer: "December", birthCountry: "Scotland", award: "Oscar - Best Actor in a Supporting Role")]
    
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
