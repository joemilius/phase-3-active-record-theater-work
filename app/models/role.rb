class Role < ActiveRecord::Base
    has_many :auditions, dependent: :destroy

    def actors
        auditions.pluck(:actor)
    end

    def locations
        auditions.pluck(:location)
    end

    def lead
        if auditions.where("hired = 't'").first
            auditions.where("hired = 't'").first
        else
            'no actor has been hired for this role'
        end
    end

    def understudy
        if auditions.where("hired = 't'").second
            auditions.where("hired = 't'").second
        else
            'no actor has been hired for this role'
        end
    end

end