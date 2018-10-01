# frozen_string_literal: true

# Extend module with the additional accessor utility.
class Module
  # Creates a combined accessor that allows getting and setting from the
  # same endpoint. It will operate in getter mode if you don't pass any
  # arguments when calling it, otherwise it will work in setter mode. The
  # setter mode returns self. This is really super useful when needing to
  # chain methods (you can't chain standard attr_writer methods because
  # of the `= something` part) or when trying to create a nice looking DSL.
  #
  # We also create the usual writer though so you can use both.
  def attr_combined_accessor(*syms)
    syms.each do |sym|
      add_attr_combined_accessor(sym)
      attr_writer(sym)
    end
  end

  private

  def add_attr_combined_accessor(sym)
    define_method(sym) do |*args|
      if args.empty?
        instance_variable_get(:"@#{sym}")
      else
        instance_variable_set(:"@#{sym}", *args)
        self
      end
    end
  end
end
