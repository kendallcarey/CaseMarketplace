class Kase < ActiveRecord::Base
  enum type: [ :car, :medical, :fall, :other ]
end
