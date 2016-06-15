// SoccerCoordinator

let player1: [String: String] = [
    "Name": "Joe Smith",
    "Height": "42",
    "Soccer Experience": "YES",
    "Guardian Name(s)": "Jim and Jan Smith"
]

let player2: [String: String] = [
    "Name": "Jill Tanner",
    "Height": "36",
    "Soccer Experience": "YES",
    "Guardian Name(s)": "Clara Tanner"
]

let player3: [String: String] = [
    "Name": "Bill Bon",
    "Height": "43",
    "Soccer Experience": "YES",
    "Guardian Name(s)": "Sara and Jenny Bon"
]

let player4: [String: String] = [
    "Name": "Eva Gordon",
    "Height": "45",
    "Soccer Experience": "NO",
    "Guardian Name(s)": "Wendy and Mike Gordon"
]

let player5: [String: String] = [
    "Name": "Matt Gill",
    "Height": "40",
    "Soccer Experience": "NO",
    "Guardian Name(s)": "Charles and Sylvia Gill"
]

let player6: [String: String] = [
    "Name": "Kimmy Stein",
    "Height": "41",
    "Soccer Experience": "NO",
    "Guardian Name(s)": "Bill and Hillary Stein"
]

let player7: [String: String] = [
    "Name": "Sammy Adams",
    "Height": "45",
    "Soccer Experience": "NO",
    "Guardian Name(s)": "Jeff Adams"
]

let player8: [String: String] = [
    "Name": "Karl Saygan",
    "Height": "42",
    "Soccer Experience": "YES",
    "Guardian Name(s)": "Heather Bledsoe"
]

let player9: [String: String] = [
    "Name": "Suzane Greenberg",
    "Height": "44",
    "Soccer Experience": "YES",
    "Guardian Name(s)": "Henrietta Dumas"
]

let player10: [String: String] = [
    "Name": "Sal Dali",
    "Height": "41",
    "Soccer Experience": "NO",
    "Guardian Name(s)": "Gala Dali"
]

let player11: [String: String] = [
    "Name": "Joe Kavalier",
    "Height": "39",
    "Soccer Experience": "NO",
    "Guardian Name(s)": "Sam and Elaine Kavalier"
]

let player12: [String: String] = [
    "Name": "Ben Finkelstein",
    "Height": "44",
    "Soccer Experience": "NO",
    "Guardian Name(s)": "Aaron and Jill Finkelstein"
]

let player13: [String: String] = [
    "Name": "Diego Soto",
    "Height": "41",
    "Soccer Experience": "YES",
    "Guardian Name(s)": "Robin and Sarika Soto"
]

let player14: [String: String] = [
    "Name": "Chloe Alaska",
    "Height": "47",
    "Soccer Experience": "NO",
    "Guardian Name(s)": "David and Jamie Alaska"
]

let player15: [String: String] = [
    "Name": "Arnold Willis",
    "Height": "43",
    "Soccer Experience": "NO",
    "Guardian Name(s)": "Claire Willis"
]

let player16: [String: String] = [
    "Name": "Phillip Helm",
    "Height": "44",
    "Soccer Experience": "YES",
    "Guardian Name(s)": "Thomas Helm and Eva Jones"
]

let player17: [String: String] = [
    "Name": "Les Clay",
    "Height": "42",
    "Soccer Experience": "YES",
    "Guardian Name(s)": "Wynonna Brown"
]

let player18: [String: String] = [
    "Name": "Herschel Krustofski",
    "Height": "45",
    "Soccer Experience": "YES",
    "Guardian Name(s)": "Hyman and Rachel Krustofski"
]

// Saving the players in playarsData
var playersData = [
    player1,
    player2,
    player3,
    player4,
    player5,
    player6,
    player7,
    player8,
    player9,
    player10,
    player11,
    player12,
    player13,
    player14,
    player15,
    player16,
    player17,
    player18
]


// Initializing teams 

var sharks: [Dictionary<String, String>] = []
var dragons: [Dictionary<String, String>] = []
var raptors: [Dictionary<String, String>] = []

var exp_team_1 = 0; // Experienced players in Sharks
var exp_team_2 = 0; // Experienced players in Dragons
var exp_team_3 = 0; // Experienced players in Raptors

var no_exp_team_1 = 0; // Non Experienced players in Sharks
var no_exp_team_2 = 0; // Non Experienced players in Dragons
var no_exp_team_3 = 0; // Non Experienced players in Raptors

// Pushing Players in Teams
for player in playersData{
    
    if(player["Soccer Experience"]=="YES"){
       
        if (exp_team_1 < 3) {
            sharks.append(player)
            exp_team_1 = exp_team_1 + 1
        } else if (exp_team_2 < 3) {
            dragons.append(player)
            exp_team_2 = exp_team_2 + 1
        } else{
            raptors.append(player)
            exp_team_3 = exp_team_3 + 1
        }
    }else{
        if(no_exp_team_1<3){
            sharks.append(player)
            no_exp_team_1 += 1
        } else if(no_exp_team_2<3){
            dragons.append(player)
            no_exp_team_2 += 1
        } else{
            raptors.append(player)
            no_exp_team_3 += 1
        }
    }
}


func print_letter(players: [Dictionary<String, String>]){
    for player in players{
        print("Hello \(player["Guardian Name(s)"]!): The player \(player["Name"]!) was selected by Sharks.  His first team practice is on June 14th ")
    }
}

print_letter(sharks)
print("---------")
print_letter(dragons)
print("---------")
print_letter(raptors)


