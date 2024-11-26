module visible
  extend ActiveSupport::Consern

  VALID_STATUES = [ "private", "public", "archived" ]

  included do 
    validates :status, inclusion : { in: VALID_STATUES }
  end

  class_method do
    def public_count
      where(status: "public").count
    end
  end

  def archived
    status == "archived"
  end
end