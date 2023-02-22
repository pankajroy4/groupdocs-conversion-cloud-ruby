 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="dotm_load_options.rb">
 #   Copyright (c) 2003-2023 Aspose Pty Ltd
 # </copyright>
 # <summary>
 #  Permission is hereby granted, free of charge, to any person obtaining a copy
 #  of this software and associated documentation files (the "Software"), to deal
 #  in the Software without restriction, including without limitation the rights
 #  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 #  copies of the Software, and to permit persons to whom the Software is
 #  furnished to do so, subject to the following conditions:
 #
 #  The above copyright notice and this permission notice shall be included in all
 #  copies or substantial portions of the Software.
 #
 #  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 #  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 #  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 #  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 #  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 #  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 #  SOFTWARE.
 # </summary>
 # --------------------------------------------------------------------------------------------------------------------
 #

require 'date'

module GroupDocsConversionCloud
  # Dotm load options
  class DotmLoadOptions

    # The format of input file, (\"docx\", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions. In regular conversion, the input file format taken from the input file name and this field ignored.
    attr_accessor :format

    # Default font for Words document. The following font will be used if a font is missing.
    attr_accessor :default_font

    # If AutoFontSubstitution is disabled, GroupDocs.Conversion uses the DefaultFont for the substitution of missing fonts. If AutoFontSubstitution is enabled, GroupDocs.Conversion evaluates all the related fields in FontInfo (Panose, Sig etc) for the missing font and finds the closest match among the available font sources. Note that font substitution mechanism will override the DefaultFont in cases when FontInfo for the missing font is available in the document. The default value is True.
    attr_accessor :auto_font_substitution

    # Substitute specific fonts when converting Words document.
    attr_accessor :font_substitutes

    # Set password to unprotect protected document
    attr_accessor :password

    # Hide markup and track changes for Word documents
    attr_accessor :hide_word_tracked_changes

    # Hide comments
    attr_accessor :hide_comments

    # Specifies the default level in the document outline at which to display Word bookmarks. Default is 0. Valid range is 0 to 9.
    attr_accessor :bookmarks_outline_level

    # Specifies how many levels of headings (paragraphs formatted with the Heading styles) to include in the document outline. Default is 0. Valid range is 0 to 9.
    attr_accessor :headings_outline_levels

    # Specifies how many levels in the document outline to show expanded when the file is viewed. Default is 0. Valid range is 0 to 9. Note that this options will not work when saving to XPS.
    attr_accessor :expanded_outline_levels

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'format' => :'Format',
        :'default_font' => :'DefaultFont',
        :'auto_font_substitution' => :'AutoFontSubstitution',
        :'font_substitutes' => :'FontSubstitutes',
        :'password' => :'Password',
        :'hide_word_tracked_changes' => :'HideWordTrackedChanges',
        :'hide_comments' => :'HideComments',
        :'bookmarks_outline_level' => :'BookmarksOutlineLevel',
        :'headings_outline_levels' => :'HeadingsOutlineLevels',
        :'expanded_outline_levels' => :'ExpandedOutlineLevels'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'format' => :'String',
        :'default_font' => :'String',
        :'auto_font_substitution' => :'BOOLEAN',
        :'font_substitutes' => :'Hash<String, String>',
        :'password' => :'String',
        :'hide_word_tracked_changes' => :'BOOLEAN',
        :'hide_comments' => :'BOOLEAN',
        :'bookmarks_outline_level' => :'Integer',
        :'headings_outline_levels' => :'Integer',
        :'expanded_outline_levels' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'Format')
        self.format = attributes[:'Format']
      end

      if attributes.key?(:'DefaultFont')
        self.default_font = attributes[:'DefaultFont']
      end

      if attributes.key?(:'AutoFontSubstitution')
        self.auto_font_substitution = attributes[:'AutoFontSubstitution']
      end

      if attributes.key?(:'FontSubstitutes')
        if (value = attributes[:'FontSubstitutes']).is_a?(Hash)
          self.font_substitutes = value
        end
      end

      if attributes.key?(:'Password')
        self.password = attributes[:'Password']
      end

      if attributes.key?(:'HideWordTrackedChanges')
        self.hide_word_tracked_changes = attributes[:'HideWordTrackedChanges']
      end

      if attributes.key?(:'HideComments')
        self.hide_comments = attributes[:'HideComments']
      end

      if attributes.key?(:'BookmarksOutlineLevel')
        self.bookmarks_outline_level = attributes[:'BookmarksOutlineLevel']
      end

      if attributes.key?(:'HeadingsOutlineLevels')
        self.headings_outline_levels = attributes[:'HeadingsOutlineLevels']
      end

      if attributes.key?(:'ExpandedOutlineLevels')
        self.expanded_outline_levels = attributes[:'ExpandedOutlineLevels']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @auto_font_substitution.nil?
        invalid_properties.push("invalid value for 'auto_font_substitution', auto_font_substitution cannot be nil.")
      end

      if @hide_word_tracked_changes.nil?
        invalid_properties.push("invalid value for 'hide_word_tracked_changes', hide_word_tracked_changes cannot be nil.")
      end

      if @hide_comments.nil?
        invalid_properties.push("invalid value for 'hide_comments', hide_comments cannot be nil.")
      end

      if @bookmarks_outline_level.nil?
        invalid_properties.push("invalid value for 'bookmarks_outline_level', bookmarks_outline_level cannot be nil.")
      end

      if @headings_outline_levels.nil?
        invalid_properties.push("invalid value for 'headings_outline_levels', headings_outline_levels cannot be nil.")
      end

      if @expanded_outline_levels.nil?
        invalid_properties.push("invalid value for 'expanded_outline_levels', expanded_outline_levels cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @auto_font_substitution.nil?
      return false if @hide_word_tracked_changes.nil?
      return false if @hide_comments.nil?
      return false if @bookmarks_outline_level.nil?
      return false if @headings_outline_levels.nil?
      return false if @expanded_outline_levels.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          format == other.format &&
          default_font == other.default_font &&
          auto_font_substitution == other.auto_font_substitution &&
          font_substitutes == other.font_substitutes &&
          password == other.password &&
          hide_word_tracked_changes == other.hide_word_tracked_changes &&
          hide_comments == other.hide_comments &&
          bookmarks_outline_level == other.bookmarks_outline_level &&
          headings_outline_levels == other.headings_outline_levels &&
          expanded_outline_levels == other.expanded_outline_levels
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [format, default_font, auto_font_substitution, font_substitutes, password, hide_word_tracked_changes, hide_comments, bookmarks_outline_level, headings_outline_levels, expanded_outline_levels].hash
    end

    # Downcases first letter.
    # @return downcased string
    def uncap(str)
      str[0, 1].downcase + str[1..-1]
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        pname = uncap(self.class.attribute_map[key]).intern
        value = attributes[pname]
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not                    
          if value.is_a?(Array)
            self.send("#{key}=", value.map { |v| _deserialize($1, v) })
          end
        elsif !value.nil?
          self.send("#{key}=", _deserialize(type, value))
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        Date.parse value
      when :Date
        Date.parse value
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else
      # model
        temp_model = GroupDocsConversionCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
