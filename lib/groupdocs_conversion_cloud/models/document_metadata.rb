 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="document_metadata.rb">
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
  # Contains a document metadata 
  class DocumentMetadata

    # Document file type
    attr_accessor :file_type

    # Gets pages count if applicable to the current document format
    attr_accessor :page_count

    # Document bytes size
    attr_accessor :size

    # Returns detected width if applicable to the current document format
    attr_accessor :width

    # Returns detected height if applicable to the current document format
    attr_accessor :height

    # Returns detected horizontal resolution if applicable to the current document format
    attr_accessor :horizontal_resolution

    # Returns detected vertical resolution if applicable to the current document format
    attr_accessor :vertical_resolution

    # Returns detected bits per pixel if applicable to the current document format
    attr_accessor :bits_per_pixel

    # Returns document title width if applicable to the current document format
    attr_accessor :title

    # Returns detected document author if applicable to the current document format
    attr_accessor :author

    # Returns detected document creation date if it's applicable to the current document format
    attr_accessor :created_date

    # Returns detected document modification date if applicable to the current document format
    attr_accessor :modified_date

    # Returns list of layer names if applicable to the current document format
    attr_accessor :layers

    # Is document password protected
    attr_accessor :is_password_protected

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file_type' => :'FileType',
        :'page_count' => :'PageCount',
        :'size' => :'Size',
        :'width' => :'Width',
        :'height' => :'Height',
        :'horizontal_resolution' => :'HorizontalResolution',
        :'vertical_resolution' => :'VerticalResolution',
        :'bits_per_pixel' => :'BitsPerPixel',
        :'title' => :'Title',
        :'author' => :'Author',
        :'created_date' => :'CreatedDate',
        :'modified_date' => :'ModifiedDate',
        :'layers' => :'Layers',
        :'is_password_protected' => :'IsPasswordProtected'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'file_type' => :'String',
        :'page_count' => :'Integer',
        :'size' => :'Integer',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'horizontal_resolution' => :'Integer',
        :'vertical_resolution' => :'Integer',
        :'bits_per_pixel' => :'Integer',
        :'title' => :'String',
        :'author' => :'String',
        :'created_date' => :'DateTime',
        :'modified_date' => :'DateTime',
        :'layers' => :'Array<String>',
        :'is_password_protected' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'FileType')
        self.file_type = attributes[:'FileType']
      end

      if attributes.key?(:'PageCount')
        self.page_count = attributes[:'PageCount']
      end

      if attributes.key?(:'Size')
        self.size = attributes[:'Size']
      end

      if attributes.key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.key?(:'Height')
        self.height = attributes[:'Height']
      end

      if attributes.key?(:'HorizontalResolution')
        self.horizontal_resolution = attributes[:'HorizontalResolution']
      end

      if attributes.key?(:'VerticalResolution')
        self.vertical_resolution = attributes[:'VerticalResolution']
      end

      if attributes.key?(:'BitsPerPixel')
        self.bits_per_pixel = attributes[:'BitsPerPixel']
      end

      if attributes.key?(:'Title')
        self.title = attributes[:'Title']
      end

      if attributes.key?(:'Author')
        self.author = attributes[:'Author']
      end

      if attributes.key?(:'CreatedDate')
        self.created_date = attributes[:'CreatedDate']
      end

      if attributes.key?(:'ModifiedDate')
        self.modified_date = attributes[:'ModifiedDate']
      end

      if attributes.key?(:'Layers')
        if (value = attributes[:'Layers']).is_a?(Array)
          self.layers = value
        end
      end

      if attributes.key?(:'IsPasswordProtected')
        self.is_password_protected = attributes[:'IsPasswordProtected']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @page_count.nil?
        invalid_properties.push("invalid value for 'page_count', page_count cannot be nil.")
      end

      if @size.nil?
        invalid_properties.push("invalid value for 'size', size cannot be nil.")
      end

      if @width.nil?
        invalid_properties.push("invalid value for 'width', width cannot be nil.")
      end

      if @height.nil?
        invalid_properties.push("invalid value for 'height', height cannot be nil.")
      end

      if @horizontal_resolution.nil?
        invalid_properties.push("invalid value for 'horizontal_resolution', horizontal_resolution cannot be nil.")
      end

      if @vertical_resolution.nil?
        invalid_properties.push("invalid value for 'vertical_resolution', vertical_resolution cannot be nil.")
      end

      if @bits_per_pixel.nil?
        invalid_properties.push("invalid value for 'bits_per_pixel', bits_per_pixel cannot be nil.")
      end

      if @created_date.nil?
        invalid_properties.push("invalid value for 'created_date', created_date cannot be nil.")
      end

      if @modified_date.nil?
        invalid_properties.push("invalid value for 'modified_date', modified_date cannot be nil.")
      end

      if @is_password_protected.nil?
        invalid_properties.push("invalid value for 'is_password_protected', is_password_protected cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @page_count.nil?
      return false if @size.nil?
      return false if @width.nil?
      return false if @height.nil?
      return false if @horizontal_resolution.nil?
      return false if @vertical_resolution.nil?
      return false if @bits_per_pixel.nil?
      return false if @created_date.nil?
      return false if @modified_date.nil?
      return false if @is_password_protected.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          file_type == other.file_type &&
          page_count == other.page_count &&
          size == other.size &&
          width == other.width &&
          height == other.height &&
          horizontal_resolution == other.horizontal_resolution &&
          vertical_resolution == other.vertical_resolution &&
          bits_per_pixel == other.bits_per_pixel &&
          title == other.title &&
          author == other.author &&
          created_date == other.created_date &&
          modified_date == other.modified_date &&
          layers == other.layers &&
          is_password_protected == other.is_password_protected
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [file_type, page_count, size, width, height, horizontal_resolution, vertical_resolution, bits_per_pixel, title, author, created_date, modified_date, layers, is_password_protected].hash
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
