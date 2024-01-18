 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="txt_load_options.rb">
 #   Copyright (c) 2003-2024 Aspose Pty Ltd
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
  # Txt document load options
  class TxtLoadOptions

    # The format of input file, (\"docx\", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions. In regular conversion, the input file format taken from the input file name and this field ignored.
    attr_accessor :format

    # Allows to specify how numbered list items are recognized when plain text document is converted. The default value is true.
    attr_accessor :detect_numbering_with_whitespaces

    # Gets or sets preferred option of a trailing space handling. Default value is Trim.
    attr_accessor :trailing_spaces_options

    # Gets or sets preferred option of a leading space handling. Default value is ConvertToIndent.
    attr_accessor :leading_spaces_options

    # Gets or sets the encoding that will be used when loading Txt document. Can be null. Default is null.
    attr_accessor :encoding
    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'format' => :'Format',
        :'detect_numbering_with_whitespaces' => :'DetectNumberingWithWhitespaces',
        :'trailing_spaces_options' => :'TrailingSpacesOptions',
        :'leading_spaces_options' => :'LeadingSpacesOptions',
        :'encoding' => :'Encoding'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'format' => :'String',
        :'detect_numbering_with_whitespaces' => :'BOOLEAN',
        :'trailing_spaces_options' => :'String',
        :'leading_spaces_options' => :'String',
        :'encoding' => :'String'
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

      if attributes.key?(:'DetectNumberingWithWhitespaces')
        self.detect_numbering_with_whitespaces = attributes[:'DetectNumberingWithWhitespaces']
      end

      if attributes.key?(:'TrailingSpacesOptions')
        self.trailing_spaces_options = attributes[:'TrailingSpacesOptions']
      end

      if attributes.key?(:'LeadingSpacesOptions')
        self.leading_spaces_options = attributes[:'LeadingSpacesOptions']
      end

      if attributes.key?(:'Encoding')
        self.encoding = attributes[:'Encoding']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @detect_numbering_with_whitespaces.nil?
        invalid_properties.push("invalid value for 'detect_numbering_with_whitespaces', detect_numbering_with_whitespaces cannot be nil.")
      end

      if @trailing_spaces_options.nil?
        invalid_properties.push("invalid value for 'trailing_spaces_options', trailing_spaces_options cannot be nil.")
      end

      if @leading_spaces_options.nil?
        invalid_properties.push("invalid value for 'leading_spaces_options', leading_spaces_options cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @detect_numbering_with_whitespaces.nil?
      return false if @trailing_spaces_options.nil?
      trailing_spaces_options_validator = EnumAttributeValidator.new('String', ["Preserve", "Trim"])
      return false unless trailing_spaces_options_validator.valid?(@trailing_spaces_options)
      return false if @leading_spaces_options.nil?
      leading_spaces_options_validator = EnumAttributeValidator.new('String', ["ConvertToIndent", "Preserve", "Trim"])
      return false unless leading_spaces_options_validator.valid?(@leading_spaces_options)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trailing_spaces_options Object to be assigned
    def trailing_spaces_options=(trailing_spaces_options)
      validator = EnumAttributeValidator.new('String', ["Preserve", "Trim"])
      if trailing_spaces_options.to_i == 0
        unless validator.valid?(trailing_spaces_options)
          raise ArgumentError, "invalid value for 'trailing_spaces_options', must be one of #{validator.allowable_values}."
        end
        @trailing_spaces_options = trailing_spaces_options
      else
        @trailing_spaces_options = validator.allowable_values[trailing_spaces_options.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] leading_spaces_options Object to be assigned
    def leading_spaces_options=(leading_spaces_options)
      validator = EnumAttributeValidator.new('String', ["ConvertToIndent", "Preserve", "Trim"])
      if leading_spaces_options.to_i == 0
        unless validator.valid?(leading_spaces_options)
          raise ArgumentError, "invalid value for 'leading_spaces_options', must be one of #{validator.allowable_values}."
        end
        @leading_spaces_options = leading_spaces_options
      else
        @leading_spaces_options = validator.allowable_values[leading_spaces_options.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          format == other.format &&
          detect_numbering_with_whitespaces == other.detect_numbering_with_whitespaces &&
          trailing_spaces_options == other.trailing_spaces_options &&
          leading_spaces_options == other.leading_spaces_options &&
          encoding == other.encoding
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [format, detect_numbering_with_whitespaces, trailing_spaces_options, leading_spaces_options, encoding].hash
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
