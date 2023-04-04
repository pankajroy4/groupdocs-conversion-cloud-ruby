 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="odt_convert_options.rb">
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
  # Odt convert options
  class OdtConvertOptions

    # Start conversion from FromPage page
    attr_accessor :from_page

    # Number of pages to convert
    attr_accessor :pages_count

    # Convert specific pages. The list contains the page indexes of the pages to be converted
    attr_accessor :pages

    # Watermark specific options
    attr_accessor :watermark_options

    # Desired page width after conversion
    attr_accessor :width

    # Desired page height after conversion
    attr_accessor :height

    # Desired page DPI after conversion. The default resolution is: 96dpi
    attr_accessor :dpi

    # Set this property if you want to protect the converted document with a password
    attr_accessor :password

    # Specifies the zoom level in percentage. Default is 100. Default zoom is supported till Microsoft Word 2010. Starting from Microsoft Word 2013 default zoom is no longer set to document, instead it appears to use the zoom factor of the last document that was opened.
    attr_accessor :zoom

    # Recognition mode when converting from pdf
    attr_accessor :pdf_recognition_mode

    # Page size
    attr_accessor :page_size

    # Specifies page orientation
    attr_accessor :page_orientation
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
        :'from_page' => :'FromPage',
        :'pages_count' => :'PagesCount',
        :'pages' => :'Pages',
        :'watermark_options' => :'WatermarkOptions',
        :'width' => :'Width',
        :'height' => :'Height',
        :'dpi' => :'Dpi',
        :'password' => :'Password',
        :'zoom' => :'Zoom',
        :'pdf_recognition_mode' => :'PdfRecognitionMode',
        :'page_size' => :'PageSize',
        :'page_orientation' => :'PageOrientation'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'from_page' => :'Integer',
        :'pages_count' => :'Integer',
        :'pages' => :'Array<Integer>',
        :'watermark_options' => :'WatermarkOptions',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'dpi' => :'Float',
        :'password' => :'String',
        :'zoom' => :'Integer',
        :'pdf_recognition_mode' => :'String',
        :'page_size' => :'String',
        :'page_orientation' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'FromPage')
        self.from_page = attributes[:'FromPage']
      end

      if attributes.key?(:'PagesCount')
        self.pages_count = attributes[:'PagesCount']
      end

      if attributes.key?(:'Pages')
        if (value = attributes[:'Pages']).is_a?(Array)
          self.pages = value
        end
      end

      if attributes.key?(:'WatermarkOptions')
        self.watermark_options = attributes[:'WatermarkOptions']
      end

      if attributes.key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.key?(:'Height')
        self.height = attributes[:'Height']
      end

      if attributes.key?(:'Dpi')
        self.dpi = attributes[:'Dpi']
      end

      if attributes.key?(:'Password')
        self.password = attributes[:'Password']
      end

      if attributes.key?(:'Zoom')
        self.zoom = attributes[:'Zoom']
      end

      if attributes.key?(:'PdfRecognitionMode')
        self.pdf_recognition_mode = attributes[:'PdfRecognitionMode']
      end

      if attributes.key?(:'PageSize')
        self.page_size = attributes[:'PageSize']
      end

      if attributes.key?(:'PageOrientation')
        self.page_orientation = attributes[:'PageOrientation']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @from_page.nil?
        invalid_properties.push("invalid value for 'from_page', from_page cannot be nil.")
      end

      if @pages_count.nil?
        invalid_properties.push("invalid value for 'pages_count', pages_count cannot be nil.")
      end

      if @width.nil?
        invalid_properties.push("invalid value for 'width', width cannot be nil.")
      end

      if @height.nil?
        invalid_properties.push("invalid value for 'height', height cannot be nil.")
      end

      if @dpi.nil?
        invalid_properties.push("invalid value for 'dpi', dpi cannot be nil.")
      end

      if @zoom.nil?
        invalid_properties.push("invalid value for 'zoom', zoom cannot be nil.")
      end

      if @pdf_recognition_mode.nil?
        invalid_properties.push("invalid value for 'pdf_recognition_mode', pdf_recognition_mode cannot be nil.")
      end

      if @page_size.nil?
        invalid_properties.push("invalid value for 'page_size', page_size cannot be nil.")
      end

      if @page_orientation.nil?
        invalid_properties.push("invalid value for 'page_orientation', page_orientation cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @from_page.nil?
      return false if @pages_count.nil?
      return false if @width.nil?
      return false if @height.nil?
      return false if @dpi.nil?
      return false if @zoom.nil?
      return false if @pdf_recognition_mode.nil?
      pdf_recognition_mode_validator = EnumAttributeValidator.new('String', ["Textbox", "Flow"])
      return false unless pdf_recognition_mode_validator.valid?(@pdf_recognition_mode)
      return false if @page_size.nil?
      page_size_validator = EnumAttributeValidator.new('String', ["Default", "A3", "Statement", "Quarto", "Paper11x17", "Paper10x14", "Letter", "Legal", "Ledger", "Folio", "Executive", "EnvelopeDL", "Custom", "B5", "B4", "A5", "A4", "Tabloid"])
      return false unless page_size_validator.valid?(@page_size)
      return false if @page_orientation.nil?
      page_orientation_validator = EnumAttributeValidator.new('String', ["Default", "Landscape", "Portrait"])
      return false unless page_orientation_validator.valid?(@page_orientation)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pdf_recognition_mode Object to be assigned
    def pdf_recognition_mode=(pdf_recognition_mode)
      validator = EnumAttributeValidator.new('String', ["Textbox", "Flow"])
      if pdf_recognition_mode.to_i == 0
        unless validator.valid?(pdf_recognition_mode)
          raise ArgumentError, "invalid value for 'pdf_recognition_mode', must be one of #{validator.allowable_values}."
        end
        @pdf_recognition_mode = pdf_recognition_mode
      else
        @pdf_recognition_mode = validator.allowable_values[pdf_recognition_mode.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] page_size Object to be assigned
    def page_size=(page_size)
      validator = EnumAttributeValidator.new('String', ["Default", "A3", "Statement", "Quarto", "Paper11x17", "Paper10x14", "Letter", "Legal", "Ledger", "Folio", "Executive", "EnvelopeDL", "Custom", "B5", "B4", "A5", "A4", "Tabloid"])
      if page_size.to_i == 0
        unless validator.valid?(page_size)
          raise ArgumentError, "invalid value for 'page_size', must be one of #{validator.allowable_values}."
        end
        @page_size = page_size
      else
        @page_size = validator.allowable_values[page_size.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] page_orientation Object to be assigned
    def page_orientation=(page_orientation)
      validator = EnumAttributeValidator.new('String', ["Default", "Landscape", "Portrait"])
      if page_orientation.to_i == 0
        unless validator.valid?(page_orientation)
          raise ArgumentError, "invalid value for 'page_orientation', must be one of #{validator.allowable_values}."
        end
        @page_orientation = page_orientation
      else
        @page_orientation = validator.allowable_values[page_orientation.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          from_page == other.from_page &&
          pages_count == other.pages_count &&
          pages == other.pages &&
          watermark_options == other.watermark_options &&
          width == other.width &&
          height == other.height &&
          dpi == other.dpi &&
          password == other.password &&
          zoom == other.zoom &&
          pdf_recognition_mode == other.pdf_recognition_mode &&
          page_size == other.page_size &&
          page_orientation == other.page_orientation
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [from_page, pages_count, pages, watermark_options, width, height, dpi, password, zoom, pdf_recognition_mode, page_size, page_orientation].hash
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
