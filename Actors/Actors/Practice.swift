import SwiftUI

struct Practice: View {
    
    var actors = [Actor (name: "Keanu Reevs", movie: "Matrix", age: 55, image: "keanur", releaseDate:"October, 1999",birthCountry: "Liban", award: "Bravo Otto for the Best Actor", description: "When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.", movieType: "Action; Sci-Fi"),
                  Actor (name: "Jessica Alba", movie: "Good luck Chuck!", age:40, image: "Jessica", releaseDate: "July, 2007", birthCountry: "California", award: "Saturn Award for Best Actress",description: "In order to keep the woman of his dreams from falling for another guy, Charlie Logan has to break the curse that has made him wildly popular with single women: Sleep with Charlie once, and the next man you meet will be your true love.",movieType: "Comedy; Romance"),
                  Actor (name: "Sarah Jessica Parker", movie: "Honeymoon in Vegas", age: 51, image: "Sarah", releaseDate: "September, 1992", birthCountry: "Ohio", award: " Best Actress in a Comedy Series",description: "Jack loses $65,000 in poker in Las Vegas, where he's marrying Betsy. The wedding will have to wait as the poker winner wants the weekend with Betsy to cancel the debt. She accepts. Whom will she marry?", movieType: "Comedy; Romance; Thriller"),
                  Actor (name: "Maia Morgenstern", movie: "Mary, The Mother of Jesus", age:60, image: "mary", releaseDate: "January, 1999", birthCountry: "Romania", award: "European Actress of the Year",description: "Mary, Mother of Jesus and her pivotal position in Christianity is portrayed in the story of the woman who has been a symbol of hope and inspiration to people of diverse faiths throughout history.", movieType: "Drama"),
                  Actor (name: "Sean Connory", movie: "The Untouchables", age: 75, image: "Sean",releaseDate: "June, 1987", birthCountry: "Scotland", award: "Oscar - Best Actor in a Supporting Role", description: "During the era of Prohibition in the United States, Federal Agent Eliot Ness sets out to stop ruthless Chicago gangster Al Capone and, because of rampant corruption, assembles a small, hand-picked team to help him.", movieType: "Crime; Drama; Thriller")]
    
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
