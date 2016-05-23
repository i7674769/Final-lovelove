import Foundation

class Video {
    
    var title: String!
    var description: String!
    var id: String!
    
}




func buildVideos() -> [Video] {
    var videos = [Video]()
    
    
    let videoOne = Video()
    videoOne.title = "JOSS STONE – ‘THE HIGH ROAD'"
    videoOne.description = "We were commissioned by US record companies Stone’d records and S curve to provide the post production and VFX for Joss Stone’s music video ‘The High Road’. We had an extremely quick turn around of eight days. The video had been shot by an LA based company during the daytime and they had used heavy amounts of smoke and ran into problems with post production and VFX . The management, labels and artist wanted the video to be at night and for us to composite an array of VFX and 3D animation into the video. We were therefore commissioned to take over from the LA production company."
    videoOne.id = "CfFgoBzKXIk"
    videos.append(videoOne)
    
    
    let videoTwo = Video()
    videoTwo.title = "JOSS STONE – THE LOVE WE HAD"
    videoTwo.description = "The brief \n After succesfully completing two projects for Stone’d Records, LoveLove Films were contacted with the opportunity to create a music video from concept to completion for the record label’s prime artist Joss Stone. The label came to us with the most popular track on her latest album The Love We Had, wanting us to complete the video in time to coincide with the song’s worldwide release as a single. /n"
    
    videoTwo.id = "RRyk8rEQFOY"
    videos.append(videoTwo)
    
    
    let videoThree = Video()
    videoThree.title = "THE MAGIC POTTIES"
    videoThree.description = "Lovelove Films were approached by Amanda Jenner, Managing Director of both My Carry Potty and the Potty Training Academy, to produce an educational animation for children and parents on Potty training. “The Magic Potties”, is an informative and educational animated film and DVD, complete with extra features, such as a potty training quiz. Amanda is widely known as the UK’s foremost potty training expert and is a Huggies Training ambassador. Since inventing My Carry Potty over 15 years ago and launching into stores worldwide 5 years ago, Amanda has also written a book and is always looking for further inventive ways of teaching important developmental lessons to children."
    videoThree.id = "NOYtDOZ3_kk"
    videos.append(videoThree)
    
    let videoFour = Video()
    videoFour.title = "LINSAR"
    videoFour.description = "LoveLove Films have continued their relationship with Linsar, which previously saw the creation of Loveloves’ Linsar film at the Euronics Showcase. Linsar needed help to produce a product demonstration video, which would throw their new Linsar product range into the world. The product demo needed to highlight the key benefits of their televisions including Smart TV, Freeview HD, Full HD 1080p, USB Pause/Record and their free five year guarantee. They also needed to increase brand awareness as well as promote their latest products; we needed to ensure that all of this was reflected in the product demonstration video"
    videoFour.id = "sQDN4cSKD2k"
    videos.append(videoFour)
    
    
    let videoFive = Video()
    videoFive.title = "Taste the Passion"
    videoFive.description = "An early project; LoveLove Films decided to enter the “King of Ads” competition ran by Pepsico for the crisp company Doritos, that tasked production companies to make an advert for their crisps; the winner of which would have their video selected as their next television advert."
    videoFive.id = "uVANCRZhdQA"
    videos.append(videoFive)
    
    let videoSix = Video()
    videoSix.title = "Bespoke"
    videoSix.description = "Needs description."
    videoSix.id = "Zw7LjDKqnio"
    videos.append(videoSix)
    
    
    let videoSeven = Video()
    videoSeven.title = "Touch Surgery"
    videoSeven.description = "Dorset based Recruitment Company TeamJobs came to LoveLove Films wanting a new video that would revitalise their image, bring their services to a wider audience, and show that they were in fact the “agency with personality.”"
    videoSeven.id = "SAXP6Vf08"
    videos.append(videoSeven)
    
    let videoEight = Video()
    videoEight.title = "TeamJobs"
    videoEight.description = "Need description."
    videoEight.id = "GhEYNzeqoDE"
    videos.append(videoEight)
    
    let videoNine = Video()
    videoNine.title = "VISIT DORSET FALL IN LOVE WITH DORSET"
    videoNine.description = "Visit Dorset commissioned LoveLove Films to create a video that would showcase the diversity and range of activities that can be undertaken in Dorset in a completely unique way.We suggested using parallax animation of photographs to give the video a fresh and innovative visual appeal."
    videoNine.id = "W29u18eKBiE"
    videos.append(videoNine)
    
    let videoTen = Video()
    videoTen.title = "GABBY YOUNG & OTHER ANIMALS – I’VE IMPROVED"
    videoTen.description = "LoveLove were approached by Gabby Young & the Other Animals to produce a second music video for the band. Their first single ‘I’ve Improved’ is to be released off of their upcoming album ‘One foot in front of the other’. LoveLove were contracted to produce the music video from concept to completion.”"
    videoTen.id = "m8ny-8rgN9Y"
    videos.append(videoTen)
    
    
    let videoEleven = Video()
    videoEleven.title = "CREDITPLUS TV COMMERCIAL"
    videoEleven.description = "LoveLove were approached by Creditplus to produce a TV Commercial. Creditplus desired a TV commercial that would be a friendly and open introduction to their car finance services. Through concept meetings with the client, it was decided that a fun style of animation would suit the brand and through ‘Benny’s Story’ showcase their service."
    videoEleven.id = "wOHtcinQP"
    videos.append(videoEleven)
    
    let videoTwelve = Video()
    videoTwelve.title = "BOURNEMOUTH TOURISM COASTAL DRONE "
    videoTwelve.description = "After the highly successful Study English in the UK project, Bournemouth Tourism once again commissioned LoveLove Films to produce an aerial photography video that also tied in with the Britain is Great Campaign.Bournemouth Tourism approached LoveLove Films with a desire for a video that was exclusively aerial footage, with the objective to showcase Bournemouth’s and Poole’s coastline as an area of extreme natural beauty."
    videoTwelve.id = "YSjd-m-O1A0"
    videos.append(videoTwelve)
    
    let videoThirteen = Video()
    videoThirteen.title = "BOURNEMOUTH COUNCIL – BRITAIN IS GREAT"
    videoThirteen.description = "Bournemouth Tourism commissioned LoveLove Films to create a video that would encourage central and southern American students to study English in Bournemouth and Poole. They wanted a video that would show off the positive elements of Bournemouth, but which would also be emotional and relatable. Additionally, they wanted a video that would fit in with the Britain is GREAT campaign."
    videoThirteen.id = "xoGQ4_jsJng"
    videos.append(videoThirteen)
    
    
    let videoFourteen = Video()
    videoFourteen.title = "CISCO – CREATING GLOBAL PROBLEM SOLVERS"
    videoFourteen.description = "LoveLove Films was approached by American technology company Cisco, and asked to produce a visually engaging corporate animation that aimed to showcase the crucial work the company does in helping set up networks and connect people in various regions across the globe. The video was to be used to convey a range of key projects that Cisco run throughout the world, including their NetHope disaster relief project that helped aid workers during the recent Ebola crisis in Africa, as well as their NetAcademy scheme which helps provide IT skills development and future job opportunities for those people who live in under-developed countries."
    videoFourteen.id = "NOrPe-1lgC8"
    videos.append(videoFourteen)
    
    let videoFifteen = Video()
    videoFifteen.title = "GABBY YOUNG & OTHER ANIMALS – ‘IN YOUR HEAD’"
    videoFifteen.description = "We were commissioned to produce a music video for artist Gabby Young & Other Animals. We had a completely open brief to create a music video for the track ‘In Your Head’."
    videoFifteen.id = "yOCf-UzU6gs"
    videos.append(videoFifteen)
    
    return videos
}