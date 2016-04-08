class Case < ActiveRecord::Base
  enum type: [ :car, :medical, :fall, :other ]
end
