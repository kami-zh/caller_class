require 'caller_class/version'

module CallerClass
  PATTERN = /\<class\:(\w+)\>/

  def caller_class
    klass = caller.detect { |c| c =~ PATTERN }
    klass.match(PATTERN)[1] if klass
  end
end
