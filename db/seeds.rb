# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
s1 = Student.create(user_id: "0000000001", status: "Active", firstname: "Tom", lastname: "Haythorn", imagethumbnail: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/george-clooney.jpg", universityname: " University of Sydney", country: "Australia", city: "Sydney", state: "NSW", language: "English", gpa: 3.3, workexperience: 24, livingin: "Australia", monthsspentabroadliving: 6, monthsspentabroadworking: 6, degree: "UG - Bachelor", degreetype: "Business", countryofdegree: "Australia", wantstoworkin: "Professional Services", hasworkexperiencein: "Legal", charitywork: "No", age: 25, permissiontoworkin: "Australia", referencesuponrequest: "Yes", gender:"Male", currentlyemployed: "Yes", worktype: "Full-Time")

s2 = Student.create(user_id: "0000000002", status: "Active", firstname: "Blake", lastname: "Rowley", imagethumbnail: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/george-clooney.jpg", universityname: " University of Melbourne", country: "Australia", city: "Melbourne", state: "VIC", language: "English", gpa: 4.0, workexperience: 24, livingin: "Australia", monthsspentabroadliving: 6, monthsspentabroadworking: 6, degree: "UG - Bachelor", degreetype: "Business", countryofdegree: "Australia", wantstoworkin: "Professional Services", hasworkexperiencein: "Legal", charitywork: "No", age: 25, permissiontoworkin: "Australia", referencesuponrequest: "Yes", gender:"Male", currentlyemployed: "Yes", worktype: "Full-Time")

s3 = State.create(name: "QLD")
s4 = State.create(name: "VIC")
s5 = State.create(name: "NSW")
s6 = State.create(name: "SA")
s7 = State.create(name: "WA")
s8 = State.create(name: "NT")
s9 = State.create(name: "TAS")

City.create(name: 'Sydney', state: 'New South Wales')
City.create(name: 'Melbourne', state: 'Victoria')
City.create(name: 'Brisbane', state: 'Queensland')
City.create(name: 'Perth', state: 'Western Australia')
City.create(name: 'Adelaide', state: 'South Australia')
City.create(name: 'Gold Coast-Tweed Heads', state: 'Queensland/New South Wales')

