Campus.create! campus_name: "GA London", location: "9 Back Hill, London", about: "GA's first London office"
Campus.create! campus_name: "GA New York East", location: "902 Broadway, New York, NY", about: "GA NY East"
Campus.create! campus_name: "GA New York West", location: "10 East 21st Street, 4th Floor , New York, NY", about: "GA NY West"
Campus.create! campus_name: "GA DC", location: "1133 15th Street NW, The Penthouse, Washington DC", about: "GA DC @1776"


Room.create! room_name: "glass house", seats: "10"
Room.create! room_name: "Madison Square Park", seats: "20"
Room.create! room_name: "Mcpherson Square", seats: "30"
Room.create! room_name: "Union Square", seats: "40"


# # NY West Office
Course.create! course_name: "Essential Things To Know When Forming Your Startup", room_id: "Madison Square Park", instructor_id: "Aaron Holiday", about: "These workshops will provide founders and entrepreneurs with a practical understanding of the essential things to know in order to navigate through the early stage of a company's existence. Topics will include: essential components of starting a scalable company, raising capital, startup finance and creating materials for fundraising."

# # London Office
Course.create! course_name: "How To Build a Minimum Viable Product (MVP)", room_id: "glass house", instructor_id: "Jock Busuttil", about: "In this workshop, you’ll learn how to use the MVP (Minimum Viable Product) philosophy to test and validate your ideas with the least amount of work required. The ultimate goal is to get to product/market fit. Take your idea and get moving in the right direction quickly and efficiently."

# # DC Office
Course.create! course_name: "Intro to the DC Startup Community", room_id: "Mcpherson Square", instructor_id: "Peter Corbett", about: "This class is an orientation to help newcomers to the startup scene get acquainted with the exciting world of tech in DC. We will give you the inside scoop on DC's key events and meetups, people, companies, VCs, blogs, programs, and more. This class is best attended by those who are already in business and either have employees or are consultant/freelancers looking to step up their game."


User.create! first_name: "Peter", last_name: "Corbett", role: "instructor"
User.create! first_name: "Jock", last_name: "Busuttil", role: "instructor"
User.create! first_name: "Aaron", last_name: "Holiday", role: "instructor"
User.create! first_name: "Jon", last_name: "Chambers", role: "instructor"
User.create! first_name: "Geraud", last_name: "Mathe", role: "instructor"
User.create! first_name: "Neha", last_name: "Shah", role: "student"
User.create! first_name: "Alex", last_name: "Hamlin", role: "student"
User.create! first_name: "Adam", last_name: "Buchan", role: "student"
User.create! first_name: "Jonny", last_name: "Adshead", role: "student"
User.create! first_name: "Oli", last_name: "Peate", role: "student"
User.create! first_name: "Ralph", last_name: "Reid", role: "student"
User.create! first_name: "Rob", last_name: "Forbes", role: "student"
User.create! first_name: "Winna", last_name: "Bridgewater", role: "student"
User.create! first_name: "John", last_name: "Marzabadi", role: "student"
User.create! first_name: "Bren", last_name: "Belovarac", role: "student"
User.create! first_name: "Molly", last_name: "Purcell", role: "student"
User.create! first_name: "Gordon", last_name: "MacRae", role: "staff"
User.create! first_name: "Paul", last_name: "Connor", role: "staff"
User.create! first_name: "Matt", last_name: "Cinnamon", role: "admin"