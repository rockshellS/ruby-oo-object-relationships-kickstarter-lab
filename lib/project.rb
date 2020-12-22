require 'pry'

class Project

    attr_reader :title

    def initialize(title)
        @title = title


    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def current_backer
        ProjectBacker.all.select do |pb_instance|
            pb_instance.project == self
        end
    end


#     Project - backers
#   returns an array of backers associated with this Project instance 

    def backers 
       current_backer.map do |project_instance|
       project_instance.backer
     end
    end



    # def backers
    #     project_backers = ProjectBacker.all.select do |pb| 
    #       pb.project == self
    #     end
    #     project_backers.map do |pb|
    #       pb.backer
    #     end
    #   end
    # end	end





end