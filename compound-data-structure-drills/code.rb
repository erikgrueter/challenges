# people =
# {
#   "Alia O'Conner PhD" => {
#          "phone" => "538.741.1841",
#        "company" => "Leuschke-Stiedemann",
#       "children" => [
#           "Simone",
#           "Cindy",
#           "Jess"
#       ]
#   },
#            "Ike Haag" => {
#          "phone" => "(661) 663-8352",
#        "company" => "Carter Inc",
#       "children" => [
#           "Joe",
#           "Ofelia",
#           "Deron"
#       ]
#   },
#        "Brian Heller" => {
#          "phone" => "1-288-601-5886",
#        "company" => "O'Conner Group",
#       "children" => [
#           "Renee"
#       ]
#   },
#        "Maryse Johns" => {
#          "phone" => "218-571-8774",
#        "company" => "Kuhlman Group",
#       "children" => [
#           "Domenick",
#           "Trycia"
#       ]
#   },
#   "Dr. Adela DuBuque" => {
#         "phone" => "1-203-483-1226",
#       "company" => "Heidenreich, Nitzsche and Dickinson"
#   }
# }


# Write Ruby code to find out the answers to the following questions:

# * How many people are in `people` (excluding children)?

# arr = []
# people.each do |names, data|
#   arr << names
# end
# puts "There are #{arr.count} people here"
#
# * What are the names of all the people?
#
# people.each do |names, data|
#   puts names
# end
#
# * What is the phone number of Alia O'Conner PhD?
#
# people.each do |name, description|
#   if name == "Alia O'Conner PhD"
#     puts description["phone"]
#   end
# end
#
#
# * How many children does Brian Heller have?
#
# people.each do |name, description|
#   if name == "Brian Heller"
#     puts description['children'].count
#   end
# end
#
#
# * What company does Dr. Adela DuBuque work for?
#
# people.each do |name, description|
#   if name == "Dr. Adela DuBuque"
#     puts name["company"]
#   end
# end
#
# * What are the names of the people who have children?
#
# people.each do |name, description|
#     if description['children'] != nil
#       puts name
#     end
# end
#
# * What are the names of the people who do not have children?
#
#
# people.each do |name, description|
#     if description['children'] == nil
#       puts name
#     end
# end
#
# * What is Brian Heller's child's name?
#
# people.each do |name, description|
#   if name == name["Brian Heller"]
#     puts description["children"]
#   end
# end
#
# * What is Maryse Johns' first child's name?
#
# people.each do |name, description|
#   if name == name["Maryse Johns"]
#     puts description["children"][0]
#   end
# end

# * Dr. Adela DuBuque just had a baby named Tomas. How would you update the hash for this information?

#people["Dr. Adela DuBuque"]["children"] = "Tomas"

# sets_of_people =
# [
#   {
#          "Bernard Feil" => {
#              "phone" => "(880) 434-0630",
#            "company" => "Maggio Inc",
#           "children" => [
#               "Nikki"
#           ]
#       },
#           "Ruby Hessel" => {
#              "phone" => "1-467-852-4981",
#            "company" => "Kemmer Inc",
#           "children" => [
#               "Sydney"
#           ]
#       },
#           "Savanah Toy" => {
#              "phone" => "440-632-0287",
#            "company" => "Hudson, Stehr and Lind",
#           "children" => [
#               "Garth"
#           ]
#       },
#       "Casandra Kemmer" => {
#             "phone" => "1-515-759-7470",
#           "company" => "Davis, Bernier and Hermann"
#       },
#              "Edd Rath" => {
#             "phone" => "(522) 829-3164",
#           "company" => "Mosciski LLC"
#       }
#   },
#   {
#          "Dagmar Brakus" => {
#              "phone" => "1-881-313-1173",
#            "company" => "Mitchell, Schmitt and Haley",
#           "children" => [
#               "Reuben"
#           ]
#       },
#          "Einar Effertz" => {
#             "phone" => "(265) 857-5141",
#           "company" => "Pfeffer, Klocko and Von"
#       },
#       "Dr. Sigrid Nader" => {
#              "phone" => "707.762.7870",
#            "company" => "Weissnat, Hayes and Dickinson",
#           "children" => [
#               "Israel",
#               "Elyse",
#               "Wilfredo"
#           ]
#       }
#   }
# ]

# Write Ruby code to find out the answers to the following questions:

# * How many people are in the first set of people?

# arr = []
# sets_of_people[0].each do |name,data|
#   arr << name
# end
# puts arr.count

# * How many people are in the second set of people?

# arr = []
# sets_of_people[1].each do |name,data|
#   arr << name
# end
# puts arr.count

# * What is Ruby Hessel's phone number?

# sets_of_people.each do |data| #why is this throwing an error?
#   data.each do |name,desc|
#     if name["Ruby Hessel"]
#       puts desc["phone"]
#     end
#   end
# end

# * What are the names of Dr. Sigrid Nader's children?

# sets_of_people.each do |data|
#   data.each do |name, description|
#     if name["Dr. Sigrid Nader"]
#       puts description["children"]
#     end
#   end
# end

# * What is Bernard Feil's child's name?

# sets_of_people.each do |data|
#   data.each do |name, desc|
#     if name["Bernard Feil"]
#       puts desc["children"]
#     end
#   end
# end

# * What company does Casandra Kemmer work for?

# sets_of_people.each do |data|
#   data.each do |name, desc|
#     if name["Casandra Kemmer"]
#       puts desc["company"]
#     end
#   end
# end

# * Who are all the people in the first set that have an `m` in their Company names?

# sets_of_people[1].each do |name, description|
#   if description["company"].include?("m")
#     puts name
#   end
# end
