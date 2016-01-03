class Search < ActiveRecord::Base
    
 belongs_to :user


    
    def search_students
        
        students = Student.all
 
        
        #students = students.where(["status == "Active""])
        students = students.where(["firstname LIKE ?", "%#{firstname}%"]) if firstname.present?
        students = students.where(["state LIKE ?", "%#{state}%"]) if state.present?
        students = students.where(["city LIKE ?", "%#{city}%"]) if city.present?
        students = students.where(["age >= ?", age]) if age.present?
        students = students.where(["gender LIKE ?", "%#{gender}%"]) if gender.present?
        students = students.where(["language LIKE ?", "%#{language}%"]) if language.present?
        students = students.where(["livingin LIKE ?", "%#{livingin}%"]) if livingin.present?

        students = students.where(["gpa >= ?", min_gpa]) if min_gpa.present?
        students = students.where(["gpa <= ?", max_gpa]) if max_gpa.present?
        students = students.where(["universityname LIKE ?", "%#{universityname}%"]) if universityname.present?
        students = students.where(["degree LIKE ?", "%#{degree}%"]) if degree.present?
        students = students.where(["degreetype LIKE ?", "%#{degreetype}%"]) if degreetype.present?
        students = students.where(["countryofdegree LIKE ?", "%#{countryofdegree}%"]) if countryofdegree.present?


        students = students.where(["workexperience >= ?", workexperience]) if workexperience.present?
        students = students.where(["monthsspentabroadliving >= ?", monthsspentabroadliving]) if monthsspentabroadliving.present?
        students = students.where(["monthsspentabroadworking => ?", monthsspentabroadworking]) if monthsspentabroadworking.present?

       
        students = students.where(["wantstoworkin LIKE ?", "%#{wantstoworkin}%"]) if wantstoworkin.present?
        students = students.where(["hasworkexperiencein LIKE ?", "%#{hasworkexperiencein}%"]) if hasworkexperiencein.present?
        students = students.where(["permissiontoworkin LIKE ?", "%#{permissiontoworkin}%"]) if permissiontoworkin.present?
        students = students.where(["currentlyemployed LIKE ?", "%#{currentlyemployed}%"]) if currentlyemployed.present?
        students = students.where(["referencesuponrequest LIKE ?", "%#{referencesuponrequest}%"]) if referencesuponrequest.present?
        students = students.where(["worktype LIKE ?", "%#{worktype}%"]) if worktype.present?

        
        students = students.where(["charitywork LIKE ?", "%#{charitywork}%"]) if charitywork.present?

    return students
    
    end
end
