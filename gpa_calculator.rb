
#For me

current_qps = 354.671
current_gpa_hours = 93

remaining_gpa_hours = 24 


grade_transitions = {:A => 16, :Aminus => 14.668, :Bplus =>13.332, :B => 12}

remaining_grade_distribution = [:Bplus, :Bplus, :Bplus, :Bplus, :Bplus, :Bplus]

sum_of_new_grades = 0

remaining_grade_distribution.each {|x| sum_of_new_grades+= grade_transitions[x]}

# + 4 quality points and +1 gpa hours for eloquent presenter assuming a get an A
print((current_qps + sum_of_new_grades + 4)/(current_gpa_hours + remaining_gpa_hours + 1))


"""
* All assuming an :A in eloquent presenter

To get a 3.85:

- :A x 6 


To get 3.80:

- :A x 3
- :Aminus x 2
- :Bplus x 1

or 

- :Ax4
- :Aminus x 1
- :B x 1


To get 3.7+

- pretty much everything else

"""


