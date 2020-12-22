require 'pry'

class Backer
 attr_reader :name

    def initialize(name)
        @name = name
    end


def back_project(project)
    ProjectBacker.new(project, self)
    end


def current_projectbacker
    ProjectBacker.all.select do |pb| 
        pb.backer == self
    end
    end


def backed_projects
    current_projectbacker.map  do |backer_instance| 
        backer_instance.project
    end
end


end