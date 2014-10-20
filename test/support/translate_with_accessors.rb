module TranslatesWithAccessors

  def translates(*params)
    options = params.extract_options!
    options.reverse_merge!(:globalize_accessors => true)
    accessors = options.delete(:globalize_accessors)
    super
    globalize_accessors if accessors
  end

end

ActiveRecord::Base.extend( TranslatesWithAccessors )
