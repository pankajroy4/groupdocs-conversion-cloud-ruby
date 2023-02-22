 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="pdf_convert_options.rb">
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
  # Options for to PDF conversion
  class PdfConvertOptions

    # Start conversion from FromPage page
    attr_accessor :from_page

    # Number of pages to convert
    attr_accessor :pages_count

    # Convert specific pages. The list contains the page indexes of the pages to be converted
    attr_accessor :pages

    # Desired page width in pixels after conversion
    attr_accessor :width

    # Desired page height in pixels after conversion
    attr_accessor :height

    # Desired page DPI after conversion. The default resolution is: 96dpi
    attr_accessor :dpi

    # Set this property if you want to protect the converted document with a password
    attr_accessor :password

    # Desired page top margin in pixels after conversion
    attr_accessor :margin_top

    # Desired page bottom margin in pixels after conversion
    attr_accessor :margin_bottom

    # Desired page left margin in pixels after conversion
    attr_accessor :margin_left

    # Desired page right margin in pixels after conversion
    attr_accessor :margin_right

    # Set the pdf format of the converted document.
    attr_accessor :pdf_format

    # Remove Pdf-A Compliance
    attr_accessor :remove_pdfa_compliance

    # Specifies the zoom level in percentage. Default is 100.
    attr_accessor :zoom

    # Linearize PDF Document for the Web
    attr_accessor :linearize

    # Link duplicate streams
    attr_accessor :link_duplicate_streams

    # Remove unused objects
    attr_accessor :remove_unused_objects

    # Remove unused streams
    attr_accessor :remove_unused_streams

    # If CompressImages set to true, all images in the document are recompressed. The compression is defined by the ImageQuality property.
    attr_accessor :compress_images

    # Value in percent where 100% is unchanged quality and image size. To decrease the image size, use ImageQuality less than 100             
    attr_accessor :image_quality

    # Make fonts not embedded if set to true
    attr_accessor :unembed_fonts

    # Convert a PDF from RGB colorspace to Grayscale
    attr_accessor :grayscale

    # Specify whether position of the document's window will be centered on the screen. Default: false.
    attr_accessor :center_window

    # Sets reading order of text: L2R (left to right) or R2L (right to left). Default: L2R.
    attr_accessor :direction

    # Specifying whether document's window title bar should display document title. Default: false.
    attr_accessor :display_doc_title

    # Specify whether document window must be resized to fit the first displayed page. Default: false.
    attr_accessor :fit_window

    # Specify whether menu bar should be hidden when document is active. Default: false.
    attr_accessor :hide_menu_bar

    # Specifying whether toolbar should be hidden when document is active. Default: false.
    attr_accessor :hide_tool_bar

    # Specify whether user interface elements should be hidden when document is active. Default: false.
    attr_accessor :hide_window_ui

    # Sets page mode, specifying how to display the document on exiting full-screen mode.
    attr_accessor :non_full_screen_page_mode

    # Sets page layout which shall be used when the document is opened.
    attr_accessor :page_layout

    # Sets page mode, specifying how document should be displayed when opened.
    attr_accessor :page_mode

    # Rotate page
    attr_accessor :rotate

    # Watermark specific options
    attr_accessor :watermark_options
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
        :'width' => :'Width',
        :'height' => :'Height',
        :'dpi' => :'Dpi',
        :'password' => :'Password',
        :'margin_top' => :'MarginTop',
        :'margin_bottom' => :'MarginBottom',
        :'margin_left' => :'MarginLeft',
        :'margin_right' => :'MarginRight',
        :'pdf_format' => :'PdfFormat',
        :'remove_pdfa_compliance' => :'RemovePdfaCompliance',
        :'zoom' => :'Zoom',
        :'linearize' => :'Linearize',
        :'link_duplicate_streams' => :'LinkDuplicateStreams',
        :'remove_unused_objects' => :'RemoveUnusedObjects',
        :'remove_unused_streams' => :'RemoveUnusedStreams',
        :'compress_images' => :'CompressImages',
        :'image_quality' => :'ImageQuality',
        :'unembed_fonts' => :'UnembedFonts',
        :'grayscale' => :'Grayscale',
        :'center_window' => :'CenterWindow',
        :'direction' => :'Direction',
        :'display_doc_title' => :'DisplayDocTitle',
        :'fit_window' => :'FitWindow',
        :'hide_menu_bar' => :'HideMenuBar',
        :'hide_tool_bar' => :'HideToolBar',
        :'hide_window_ui' => :'HideWindowUI',
        :'non_full_screen_page_mode' => :'NonFullScreenPageMode',
        :'page_layout' => :'PageLayout',
        :'page_mode' => :'PageMode',
        :'rotate' => :'Rotate',
        :'watermark_options' => :'WatermarkOptions'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'from_page' => :'Integer',
        :'pages_count' => :'Integer',
        :'pages' => :'Array<Integer>',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'dpi' => :'Float',
        :'password' => :'String',
        :'margin_top' => :'Integer',
        :'margin_bottom' => :'Integer',
        :'margin_left' => :'Integer',
        :'margin_right' => :'Integer',
        :'pdf_format' => :'String',
        :'remove_pdfa_compliance' => :'BOOLEAN',
        :'zoom' => :'Integer',
        :'linearize' => :'BOOLEAN',
        :'link_duplicate_streams' => :'BOOLEAN',
        :'remove_unused_objects' => :'BOOLEAN',
        :'remove_unused_streams' => :'BOOLEAN',
        :'compress_images' => :'BOOLEAN',
        :'image_quality' => :'Integer',
        :'unembed_fonts' => :'BOOLEAN',
        :'grayscale' => :'BOOLEAN',
        :'center_window' => :'BOOLEAN',
        :'direction' => :'String',
        :'display_doc_title' => :'BOOLEAN',
        :'fit_window' => :'BOOLEAN',
        :'hide_menu_bar' => :'BOOLEAN',
        :'hide_tool_bar' => :'BOOLEAN',
        :'hide_window_ui' => :'BOOLEAN',
        :'non_full_screen_page_mode' => :'String',
        :'page_layout' => :'String',
        :'page_mode' => :'String',
        :'rotate' => :'String',
        :'watermark_options' => :'WatermarkOptions'
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

      if attributes.key?(:'MarginTop')
        self.margin_top = attributes[:'MarginTop']
      end

      if attributes.key?(:'MarginBottom')
        self.margin_bottom = attributes[:'MarginBottom']
      end

      if attributes.key?(:'MarginLeft')
        self.margin_left = attributes[:'MarginLeft']
      end

      if attributes.key?(:'MarginRight')
        self.margin_right = attributes[:'MarginRight']
      end

      if attributes.key?(:'PdfFormat')
        self.pdf_format = attributes[:'PdfFormat']
      end

      if attributes.key?(:'RemovePdfaCompliance')
        self.remove_pdfa_compliance = attributes[:'RemovePdfaCompliance']
      end

      if attributes.key?(:'Zoom')
        self.zoom = attributes[:'Zoom']
      end

      if attributes.key?(:'Linearize')
        self.linearize = attributes[:'Linearize']
      end

      if attributes.key?(:'LinkDuplicateStreams')
        self.link_duplicate_streams = attributes[:'LinkDuplicateStreams']
      end

      if attributes.key?(:'RemoveUnusedObjects')
        self.remove_unused_objects = attributes[:'RemoveUnusedObjects']
      end

      if attributes.key?(:'RemoveUnusedStreams')
        self.remove_unused_streams = attributes[:'RemoveUnusedStreams']
      end

      if attributes.key?(:'CompressImages')
        self.compress_images = attributes[:'CompressImages']
      end

      if attributes.key?(:'ImageQuality')
        self.image_quality = attributes[:'ImageQuality']
      end

      if attributes.key?(:'UnembedFonts')
        self.unembed_fonts = attributes[:'UnembedFonts']
      end

      if attributes.key?(:'Grayscale')
        self.grayscale = attributes[:'Grayscale']
      end

      if attributes.key?(:'CenterWindow')
        self.center_window = attributes[:'CenterWindow']
      end

      if attributes.key?(:'Direction')
        self.direction = attributes[:'Direction']
      end

      if attributes.key?(:'DisplayDocTitle')
        self.display_doc_title = attributes[:'DisplayDocTitle']
      end

      if attributes.key?(:'FitWindow')
        self.fit_window = attributes[:'FitWindow']
      end

      if attributes.key?(:'HideMenuBar')
        self.hide_menu_bar = attributes[:'HideMenuBar']
      end

      if attributes.key?(:'HideToolBar')
        self.hide_tool_bar = attributes[:'HideToolBar']
      end

      if attributes.key?(:'HideWindowUI')
        self.hide_window_ui = attributes[:'HideWindowUI']
      end

      if attributes.key?(:'NonFullScreenPageMode')
        self.non_full_screen_page_mode = attributes[:'NonFullScreenPageMode']
      end

      if attributes.key?(:'PageLayout')
        self.page_layout = attributes[:'PageLayout']
      end

      if attributes.key?(:'PageMode')
        self.page_mode = attributes[:'PageMode']
      end

      if attributes.key?(:'Rotate')
        self.rotate = attributes[:'Rotate']
      end

      if attributes.key?(:'WatermarkOptions')
        self.watermark_options = attributes[:'WatermarkOptions']
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

      if @margin_top.nil?
        invalid_properties.push("invalid value for 'margin_top', margin_top cannot be nil.")
      end

      if @margin_bottom.nil?
        invalid_properties.push("invalid value for 'margin_bottom', margin_bottom cannot be nil.")
      end

      if @margin_left.nil?
        invalid_properties.push("invalid value for 'margin_left', margin_left cannot be nil.")
      end

      if @margin_right.nil?
        invalid_properties.push("invalid value for 'margin_right', margin_right cannot be nil.")
      end

      if @pdf_format.nil?
        invalid_properties.push("invalid value for 'pdf_format', pdf_format cannot be nil.")
      end

      if @remove_pdfa_compliance.nil?
        invalid_properties.push("invalid value for 'remove_pdfa_compliance', remove_pdfa_compliance cannot be nil.")
      end

      if @zoom.nil?
        invalid_properties.push("invalid value for 'zoom', zoom cannot be nil.")
      end

      if @linearize.nil?
        invalid_properties.push("invalid value for 'linearize', linearize cannot be nil.")
      end

      if @link_duplicate_streams.nil?
        invalid_properties.push("invalid value for 'link_duplicate_streams', link_duplicate_streams cannot be nil.")
      end

      if @remove_unused_objects.nil?
        invalid_properties.push("invalid value for 'remove_unused_objects', remove_unused_objects cannot be nil.")
      end

      if @remove_unused_streams.nil?
        invalid_properties.push("invalid value for 'remove_unused_streams', remove_unused_streams cannot be nil.")
      end

      if @compress_images.nil?
        invalid_properties.push("invalid value for 'compress_images', compress_images cannot be nil.")
      end

      if @image_quality.nil?
        invalid_properties.push("invalid value for 'image_quality', image_quality cannot be nil.")
      end

      if @unembed_fonts.nil?
        invalid_properties.push("invalid value for 'unembed_fonts', unembed_fonts cannot be nil.")
      end

      if @grayscale.nil?
        invalid_properties.push("invalid value for 'grayscale', grayscale cannot be nil.")
      end

      if @center_window.nil?
        invalid_properties.push("invalid value for 'center_window', center_window cannot be nil.")
      end

      if @direction.nil?
        invalid_properties.push("invalid value for 'direction', direction cannot be nil.")
      end

      if @display_doc_title.nil?
        invalid_properties.push("invalid value for 'display_doc_title', display_doc_title cannot be nil.")
      end

      if @fit_window.nil?
        invalid_properties.push("invalid value for 'fit_window', fit_window cannot be nil.")
      end

      if @hide_menu_bar.nil?
        invalid_properties.push("invalid value for 'hide_menu_bar', hide_menu_bar cannot be nil.")
      end

      if @hide_tool_bar.nil?
        invalid_properties.push("invalid value for 'hide_tool_bar', hide_tool_bar cannot be nil.")
      end

      if @hide_window_ui.nil?
        invalid_properties.push("invalid value for 'hide_window_ui', hide_window_ui cannot be nil.")
      end

      if @non_full_screen_page_mode.nil?
        invalid_properties.push("invalid value for 'non_full_screen_page_mode', non_full_screen_page_mode cannot be nil.")
      end

      if @page_layout.nil?
        invalid_properties.push("invalid value for 'page_layout', page_layout cannot be nil.")
      end

      if @page_mode.nil?
        invalid_properties.push("invalid value for 'page_mode', page_mode cannot be nil.")
      end

      if @rotate.nil?
        invalid_properties.push("invalid value for 'rotate', rotate cannot be nil.")
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
      return false if @margin_top.nil?
      return false if @margin_bottom.nil?
      return false if @margin_left.nil?
      return false if @margin_right.nil?
      return false if @pdf_format.nil?
      pdf_format_validator = EnumAttributeValidator.new('String', ["Default", "PdfA_1A", "PdfA_1B", "PdfA_2A", "PdfA_3A", "PdfA_2B", "PdfA_2U", "PdfA_3B", "PdfA_3U", "v1_3", "v1_4", "v1_5", "v1_6", "v1_7", "PdfX_1A", "PdfX3"])
      return false unless pdf_format_validator.valid?(@pdf_format)
      return false if @remove_pdfa_compliance.nil?
      return false if @zoom.nil?
      return false if @linearize.nil?
      return false if @link_duplicate_streams.nil?
      return false if @remove_unused_objects.nil?
      return false if @remove_unused_streams.nil?
      return false if @compress_images.nil?
      return false if @image_quality.nil?
      return false if @unembed_fonts.nil?
      return false if @grayscale.nil?
      return false if @center_window.nil?
      return false if @direction.nil?
      direction_validator = EnumAttributeValidator.new('String', ["L2R", "R2L"])
      return false unless direction_validator.valid?(@direction)
      return false if @display_doc_title.nil?
      return false if @fit_window.nil?
      return false if @hide_menu_bar.nil?
      return false if @hide_tool_bar.nil?
      return false if @hide_window_ui.nil?
      return false if @non_full_screen_page_mode.nil?
      non_full_screen_page_mode_validator = EnumAttributeValidator.new('String', ["UseNone", "UseOutlines", "UseThumbs", "FullScreen", "UseOC", "UseAttachments"])
      return false unless non_full_screen_page_mode_validator.valid?(@non_full_screen_page_mode)
      return false if @page_layout.nil?
      page_layout_validator = EnumAttributeValidator.new('String', ["Default", "SinglePage", "OneColumn", "TwoColumnLeft", "TwoColumnRight", "TwoPageLeft", "TwoPageRight"])
      return false unless page_layout_validator.valid?(@page_layout)
      return false if @page_mode.nil?
      page_mode_validator = EnumAttributeValidator.new('String', ["UseNone", "UseOutlines", "UseThumbs", "FullScreen", "UseOC", "UseAttachments"])
      return false unless page_mode_validator.valid?(@page_mode)
      return false if @rotate.nil?
      rotate_validator = EnumAttributeValidator.new('String', ["None", "On90", "On180", "On270"])
      return false unless rotate_validator.valid?(@rotate)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pdf_format Object to be assigned
    def pdf_format=(pdf_format)
      validator = EnumAttributeValidator.new('String', ["Default", "PdfA_1A", "PdfA_1B", "PdfA_2A", "PdfA_3A", "PdfA_2B", "PdfA_2U", "PdfA_3B", "PdfA_3U", "v1_3", "v1_4", "v1_5", "v1_6", "v1_7", "PdfX_1A", "PdfX3"])
      if pdf_format.to_i == 0
        unless validator.valid?(pdf_format)
          raise ArgumentError, "invalid value for 'pdf_format', must be one of #{validator.allowable_values}."
        end
        @pdf_format = pdf_format
      else
        @pdf_format = validator.allowable_values[pdf_format.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] direction Object to be assigned
    def direction=(direction)
      validator = EnumAttributeValidator.new('String', ["L2R", "R2L"])
      if direction.to_i == 0
        unless validator.valid?(direction)
          raise ArgumentError, "invalid value for 'direction', must be one of #{validator.allowable_values}."
        end
        @direction = direction
      else
        @direction = validator.allowable_values[direction.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] non_full_screen_page_mode Object to be assigned
    def non_full_screen_page_mode=(non_full_screen_page_mode)
      validator = EnumAttributeValidator.new('String', ["UseNone", "UseOutlines", "UseThumbs", "FullScreen", "UseOC", "UseAttachments"])
      if non_full_screen_page_mode.to_i == 0
        unless validator.valid?(non_full_screen_page_mode)
          raise ArgumentError, "invalid value for 'non_full_screen_page_mode', must be one of #{validator.allowable_values}."
        end
        @non_full_screen_page_mode = non_full_screen_page_mode
      else
        @non_full_screen_page_mode = validator.allowable_values[non_full_screen_page_mode.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] page_layout Object to be assigned
    def page_layout=(page_layout)
      validator = EnumAttributeValidator.new('String', ["Default", "SinglePage", "OneColumn", "TwoColumnLeft", "TwoColumnRight", "TwoPageLeft", "TwoPageRight"])
      if page_layout.to_i == 0
        unless validator.valid?(page_layout)
          raise ArgumentError, "invalid value for 'page_layout', must be one of #{validator.allowable_values}."
        end
        @page_layout = page_layout
      else
        @page_layout = validator.allowable_values[page_layout.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] page_mode Object to be assigned
    def page_mode=(page_mode)
      validator = EnumAttributeValidator.new('String', ["UseNone", "UseOutlines", "UseThumbs", "FullScreen", "UseOC", "UseAttachments"])
      if page_mode.to_i == 0
        unless validator.valid?(page_mode)
          raise ArgumentError, "invalid value for 'page_mode', must be one of #{validator.allowable_values}."
        end
        @page_mode = page_mode
      else
        @page_mode = validator.allowable_values[page_mode.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rotate Object to be assigned
    def rotate=(rotate)
      validator = EnumAttributeValidator.new('String', ["None", "On90", "On180", "On270"])
      if rotate.to_i == 0
        unless validator.valid?(rotate)
          raise ArgumentError, "invalid value for 'rotate', must be one of #{validator.allowable_values}."
        end
        @rotate = rotate
      else
        @rotate = validator.allowable_values[rotate.to_i]
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
          width == other.width &&
          height == other.height &&
          dpi == other.dpi &&
          password == other.password &&
          margin_top == other.margin_top &&
          margin_bottom == other.margin_bottom &&
          margin_left == other.margin_left &&
          margin_right == other.margin_right &&
          pdf_format == other.pdf_format &&
          remove_pdfa_compliance == other.remove_pdfa_compliance &&
          zoom == other.zoom &&
          linearize == other.linearize &&
          link_duplicate_streams == other.link_duplicate_streams &&
          remove_unused_objects == other.remove_unused_objects &&
          remove_unused_streams == other.remove_unused_streams &&
          compress_images == other.compress_images &&
          image_quality == other.image_quality &&
          unembed_fonts == other.unembed_fonts &&
          grayscale == other.grayscale &&
          center_window == other.center_window &&
          direction == other.direction &&
          display_doc_title == other.display_doc_title &&
          fit_window == other.fit_window &&
          hide_menu_bar == other.hide_menu_bar &&
          hide_tool_bar == other.hide_tool_bar &&
          hide_window_ui == other.hide_window_ui &&
          non_full_screen_page_mode == other.non_full_screen_page_mode &&
          page_layout == other.page_layout &&
          page_mode == other.page_mode &&
          rotate == other.rotate &&
          watermark_options == other.watermark_options
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [from_page, pages_count, pages, width, height, dpi, password, margin_top, margin_bottom, margin_left, margin_right, pdf_format, remove_pdfa_compliance, zoom, linearize, link_duplicate_streams, remove_unused_objects, remove_unused_streams, compress_images, image_quality, unembed_fonts, grayscale, center_window, direction, display_doc_title, fit_window, hide_menu_bar, hide_tool_bar, hide_window_ui, non_full_screen_page_mode, page_layout, page_mode, rotate, watermark_options].hash
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
