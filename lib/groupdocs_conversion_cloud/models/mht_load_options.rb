 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="mht_load_options.rb">
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
  # Mht load options
  class MhtLoadOptions

    # The format of input file, (\"docx\", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions. In regular conversion, the input file format taken from the input file name and this field ignored.
    attr_accessor :format

    # Option to display or hide the email header. Default: true
    attr_accessor :display_header

    # Option to display or hide \"from\" email address. Default: true
    attr_accessor :display_from_email_address

    # Option to display or hide email address. Default: true
    attr_accessor :display_email_address

    # Option to display or hide \"to\" email address. Default: true
    attr_accessor :display_to_email_address

    # Option to display or hide \"Cc\" email address. Default: false
    attr_accessor :display_cc_email_address

    # Option to display or hide \"Bcc\" email address. Default: false
    attr_accessor :display_bcc_email_address

    # Gets or sets the Coordinated Universal Time (UTC) offset for the message dates. This property defines the time zone difference, between the localtime and UTC.
    attr_accessor :time_zone_offset

    # Option to convert attachments in source email or not. Default: false.
    attr_accessor :convert_attachments

    # The mapping between email message field and field text representation
    attr_accessor :field_labels

    # Defines whether need to keep original date header string in mail message when saving or not (Default value is true)
    attr_accessor :preserve_original_date

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'format' => :'Format',
        :'display_header' => :'DisplayHeader',
        :'display_from_email_address' => :'DisplayFromEmailAddress',
        :'display_email_address' => :'DisplayEmailAddress',
        :'display_to_email_address' => :'DisplayToEmailAddress',
        :'display_cc_email_address' => :'DisplayCcEmailAddress',
        :'display_bcc_email_address' => :'DisplayBccEmailAddress',
        :'time_zone_offset' => :'TimeZoneOffset',
        :'convert_attachments' => :'ConvertAttachments',
        :'field_labels' => :'FieldLabels',
        :'preserve_original_date' => :'PreserveOriginalDate'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'format' => :'String',
        :'display_header' => :'BOOLEAN',
        :'display_from_email_address' => :'BOOLEAN',
        :'display_email_address' => :'BOOLEAN',
        :'display_to_email_address' => :'BOOLEAN',
        :'display_cc_email_address' => :'BOOLEAN',
        :'display_bcc_email_address' => :'BOOLEAN',
        :'time_zone_offset' => :'String',
        :'convert_attachments' => :'BOOLEAN',
        :'field_labels' => :'Array<FieldLabel>',
        :'preserve_original_date' => :'BOOLEAN'
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

      if attributes.key?(:'DisplayHeader')
        self.display_header = attributes[:'DisplayHeader']
      end

      if attributes.key?(:'DisplayFromEmailAddress')
        self.display_from_email_address = attributes[:'DisplayFromEmailAddress']
      end

      if attributes.key?(:'DisplayEmailAddress')
        self.display_email_address = attributes[:'DisplayEmailAddress']
      end

      if attributes.key?(:'DisplayToEmailAddress')
        self.display_to_email_address = attributes[:'DisplayToEmailAddress']
      end

      if attributes.key?(:'DisplayCcEmailAddress')
        self.display_cc_email_address = attributes[:'DisplayCcEmailAddress']
      end

      if attributes.key?(:'DisplayBccEmailAddress')
        self.display_bcc_email_address = attributes[:'DisplayBccEmailAddress']
      end

      if attributes.key?(:'TimeZoneOffset')
        self.time_zone_offset = attributes[:'TimeZoneOffset']
      end

      if attributes.key?(:'ConvertAttachments')
        self.convert_attachments = attributes[:'ConvertAttachments']
      end

      if attributes.key?(:'FieldLabels')
        if (value = attributes[:'FieldLabels']).is_a?(Array)
          self.field_labels = value
        end
      end

      if attributes.key?(:'PreserveOriginalDate')
        self.preserve_original_date = attributes[:'PreserveOriginalDate']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @display_header.nil?
        invalid_properties.push("invalid value for 'display_header', display_header cannot be nil.")
      end

      if @display_from_email_address.nil?
        invalid_properties.push("invalid value for 'display_from_email_address', display_from_email_address cannot be nil.")
      end

      if @display_email_address.nil?
        invalid_properties.push("invalid value for 'display_email_address', display_email_address cannot be nil.")
      end

      if @display_to_email_address.nil?
        invalid_properties.push("invalid value for 'display_to_email_address', display_to_email_address cannot be nil.")
      end

      if @display_cc_email_address.nil?
        invalid_properties.push("invalid value for 'display_cc_email_address', display_cc_email_address cannot be nil.")
      end

      if @display_bcc_email_address.nil?
        invalid_properties.push("invalid value for 'display_bcc_email_address', display_bcc_email_address cannot be nil.")
      end

      if @convert_attachments.nil?
        invalid_properties.push("invalid value for 'convert_attachments', convert_attachments cannot be nil.")
      end

      if @preserve_original_date.nil?
        invalid_properties.push("invalid value for 'preserve_original_date', preserve_original_date cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @display_header.nil?
      return false if @display_from_email_address.nil?
      return false if @display_email_address.nil?
      return false if @display_to_email_address.nil?
      return false if @display_cc_email_address.nil?
      return false if @display_bcc_email_address.nil?
      return false if @convert_attachments.nil?
      return false if @preserve_original_date.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          format == other.format &&
          display_header == other.display_header &&
          display_from_email_address == other.display_from_email_address &&
          display_email_address == other.display_email_address &&
          display_to_email_address == other.display_to_email_address &&
          display_cc_email_address == other.display_cc_email_address &&
          display_bcc_email_address == other.display_bcc_email_address &&
          time_zone_offset == other.time_zone_offset &&
          convert_attachments == other.convert_attachments &&
          field_labels == other.field_labels &&
          preserve_original_date == other.preserve_original_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [format, display_header, display_from_email_address, display_email_address, display_to_email_address, display_cc_email_address, display_bcc_email_address, time_zone_offset, convert_attachments, field_labels, preserve_original_date].hash
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
