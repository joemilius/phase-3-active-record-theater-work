class Audition < ActiveRecord::Base
  belongs_to :role

  def call_back
    self.update_column :hired, true
  end

end