//
//  Post.swift
//  Tech Social Media App
//
//  Created by David Granger on 3/20/23.
//

import Foundation
import UIKit

struct Post {
    var id: Int
    var user: String
    var text: String
    var datePosted: String
    var comments: [Comment]
    var image: UIImage
    
    static let mockPosts = [
        Post(id: 1, user: "John", text: "Just had the best sushi i've ever tasted.", datePosted: "2023/03/19 13:25:00", comments: [
            Comment(id: 1, user: "Sebastian", text: "Where did you go for sushi?"),
            Comment(id: 2, user: "Grace", text: "I've never tried sushi before, what would you recommend? I want to experience other dishes")
        ], image: UIImage(named: "sushi")!),
        Post(id: 2, user: "Sarah", text: "Packing for my trip this weekend!", datePosted: "2023/03/18 09:15:00", comments: [
            Comment(id: 1, user: "John", text: "I can give you a ride to the airport"),
            Comment(id: 2, user: "Emily", text: "Have an amazing trip!"),
            Comment(id: 3, user: "Sam", text: "Don't forget to take lots of photos!")
        ], image: UIImage(named: "suitcases")!),
        Post(id: 3, user: "Grace", text: "Just finished reading Ender's Game. What an insane twist ending!", datePosted: "2023/03/17 20:30:00", comments:[], image: UIImage(named: "enders game")!),
        Post(id: 4, user: "Alex", text: "Avocado toast", datePosted: "2023/03/16 18:45:00", comments: [
            Comment(id: 1, user: "Mason", text: "That looks delicious! What's the recipe?"),
            Comment(id: 2, user: "Christopher", text: "I need to make this!"),
            Comment(id: 3, user: "Hazel", text: "I love avocado toast!")
        ], image: UIImage(named: "avocado toast")!),
        Post(id: 5, user: "Mike", text: "My last art project, how does it look?", datePosted: "2023/03/15 11:00:00", comments: [
            Comment(id: 1, user: "Xavier", text: "That's so cool! How long did it take you to make?"),
            Comment(id: 2, user: "Audrey", text: "I wish I could draw like that!"),
            Comment(id: 3, user: "Penelope", text: "You have some serious talent!")
        ], image: UIImage(named: "drawing")!),
        
        Post(id: 6, user: "Lena", text: "Just got back from a hiking trip in the mountains!", datePosted: "2023/04/02 15:40:00", comments: [
            Comment(id: 1, user: "Marcus", text: "Wow, that sounds amazing! How was the weather?"),
            Comment(id: 2, user: "Lily", text: "I love hiking! Did you see any wildlife?"),
            Comment(id: 3, user: "Julia", text: "I bet the views were breathtaking!"),
            Comment(id: 4, user: "Grace", text: "I wish I could go hiking, but I'm not much of an outdoors person."),
        ], image: UIImage(named: "mountains")!),
        Post(id: 7, user: "Jake", text: "Just finished my first marathon!", datePosted: "2023/03/29 11:20:00", comments: [
            Comment(id: 1, user: "Tim", text: "Congratulations! How was the experience?"),
            Comment(id: 2, user: "Ava", text: "That's amazing! How long did it take you to finish?"),
            Comment(id: 3, user: "Sam", text: "I can't even run a mile, you're an inspiration!")
        ], image: UIImage(named: "marathon")!),
        Post(id: 8, user: "Olivia", text: "Just adopted a new puppy!", datePosted: "2023/03/25 16:55:00", comments: [
            Comment(id: 1, user: "Julian", text: "Aww, what's their name?"),
            Comment(id: 2, user: "Leah", text: "I love puppies! What breed is it?"),
            Comment(id: 3, user: "Javier", text: "Congratulations! I can't wait to see more photos of your new furry friend!")
        ], image: UIImage(named: "puppy")!),
        Post(id: 9, user: "Sophie", text: "Just got back from a trip to Paris!", datePosted: "2023/03/22 09:30:00", comments: [
            Comment(id: 1, user: "Kyra", text: "I've always wanted to go to Paris! What was your favorite thing you did there?"),
            Comment(id: 2, user: "Isabella", text: "The city of love! Did you go to any museums?"),
            Comment(id: 4, user: "Connor", text: "How was the weather? It must have been beautiful this time of year."),
            Comment(id: 5, user: "Noah", text: "Did you get to see the Eiffel Tower at night? It's breathtaking!")
        ], image: UIImage(named: "paris")!),
        Post(id: 10, user: "Ben", text: "Just finished my first novel!", datePosted: "2023/03/20 14:15:00", comments: [
            Comment(id: 1, user: "Tyler", text: "That's amazing! What's it about?"),
            Comment(id: 2, user: "Mia", text: "I love reading, I can't wait to read it!"),
            Comment(id: 3, user: "Maya", text: "Congratulations! Writing a novel is such an incredible accomplishment!")
        ], image: UIImage(named: "book")!)
        // Add more mock posts as needed
    ]
}
