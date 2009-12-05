module YARD
  module Tags
    class Tag
      attr_accessor :tag_name, :text, :types, :name, :object

      ##
      # Creates a new tag object with a tag name and text. Optionally, formally declared types
      # and a key name can be specified.
      #
      # Types are mainly for meta tags that rely on type information, such as +param+, +return+, etc.
      # 
      # Key names are for tags that declare meta data for a specific key or name, such as +param+,
      # +raise+, etc.
      #
      # @param tag_name                the tag name to create the tag for
      # @param [String] text           the descriptive text for this tag
      # @param [Array<String>] types   optional type list of formally declared types
      #                                for the tag
      # @param [String] name           optional key name which the tag refers to
      def initialize(tag_name, text, types = nil, name = nil)
        @tag_name, @text, @name, @types = tag_name.to_s, text, name, (types ? [types].flatten.compact : nil)
      end

      ##
      # Convenience method to access the first type specified. This should mainly
      # be used for tags that only specify one type.
      #
      # @return [String] the first of the list of specified types 
      # @see #types
      def type
        types.first
      end
    end
  end
end