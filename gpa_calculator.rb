
#qps --> quality points, gpa_hours --> gpa hours | from "grades" in mynortheastern
#remainint grade distribution --> array of grades we plan to get

def get_gpa(current_qps: , current_gpa_hours:, remaining_grade_distribution:)
    #Add more grades if neccessary
    grade_transitions = {A: 16, Aminus: 14.668, Bplus: 13.332, B: 12}
    remaining_gpa_hours = remaining_grade_distribution.length * 4
    sum_of_new_grades = 0
    remaining_grade_distribution.each {|x| sum_of_new_grades+= grade_transitions[x]}

    # "+ 4" quality points and "+1" gpa hours for eloquent presenter assuming a get an A --> I removed this
    print((current_qps + sum_of_new_grades)/(current_gpa_hours + remaining_gpa_hours))
end


current_qps = 386.671
current_gpa_hours = 101.000
remaining_grade_distribution = [:A, :A, :A, :A]
get_gpa(current_qps: current_qps, current_gpa_hours: current_gpa_hours, remaining_grade_distribution: remaining_grade_distribution)



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


