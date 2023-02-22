 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="convert_settings.rb">
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
  # Defines conversion request
  class ConvertSettings

    # StorageName which contains the file
    attr_accessor :storage_name

    # Gets or sets absolute path to a file in the storage
    attr_accessor :file_path

    # Gets or sets requested conversion format
    attr_accessor :format

    # Gets or sets format specific load options for source file
    attr_accessor :load_options

    # Gets or sets format specific convert options for output file
    attr_accessor :convert_options

    # Gets or sets converted file save path
    attr_accessor :output_path

    # The path to directory containing custom fonts in storage
    attr_accessor :fonts_path

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'storage_name' => :'StorageName',
        :'file_path' => :'FilePath',
        :'format' => :'Format',
        :'load_options' => :'LoadOptions',
        :'convert_options' => :'ConvertOptions',
        :'output_path' => :'OutputPath',
        :'fonts_path' => :'FontsPath'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'storage_name' => :'String',
        :'file_path' => :'String',
        :'format' => :'String',
        :'load_options' => :'LoadOptions',
        :'convert_options' => :'ConvertOptions',
        :'output_path' => :'String',
        :'fonts_path' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'StorageName')
        self.storage_name = attributes[:'StorageName']
      end

      if attributes.key?(:'FilePath')
        self.file_path = attributes[:'FilePath']
      end

      if attributes.key?(:'Format')
        self.format = attributes[:'Format']
      end

      if attributes.key?(:'LoadOptions')
        self.load_options = attributes[:'LoadOptions']
      end

      if attributes.key?(:'ConvertOptions')
        self.convert_options = attributes[:'ConvertOptions']
      end

      if attributes.key?(:'OutputPath')
        self.output_path = attributes[:'OutputPath']
      end

      if attributes.key?(:'FontsPath')
        self.fonts_path = attributes[:'FontsPath']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @file_path.nil?
        invalid_properties.push("invalid value for 'file_path', file_path cannot be nil.")
      end

      if @file_path.to_s.length < 1
        invalid_properties.push("invalid value for 'file_path', the character length must be great than or equal to 1.")
      end

      if @format.nil?
        invalid_properties.push("invalid value for 'format', format cannot be nil.")
      end

      if @format.to_s.length < 1
        invalid_properties.push("invalid value for 'format', the character length must be great than or equal to 1.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @file_path.nil?
      return false if @file_path.to_s.length < 1
      return false if @format.nil?
      return false if @format.to_s.length < 1
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] file_path Value to be assigned
    def file_path=(file_path)
      if file_path.nil?
        raise ArgumentError, "file_path cannot be nil"
      end

      if file_path.to_s.length < 1
        raise ArgumentError, "invalid value for 'file_path', the character length must be great than or equal to 1."
      end

      @file_path = file_path
    end

    # Custom attribute writer method with validation
    # @param [Object] format Value to be assigned
    def format=(format)
      if format.nil?
        raise ArgumentError, "format cannot be nil"
      end

      if format.to_s.length < 1
        raise ArgumentError, "invalid value for 'format', the character length must be great than or equal to 1."
      end

      @format = format
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          storage_name == other.storage_name &&
          file_path == other.file_path &&
          format == other.format &&
          load_options == other.load_options &&
          convert_options == other.convert_options &&
          output_path == other.output_path &&
          fonts_path == other.fonts_path
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [storage_name, file_path, format, load_options, convert_options, output_path, fonts_path].hash
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
