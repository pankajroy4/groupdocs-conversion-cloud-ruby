# -----------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="info.rb">
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
# -----------------------------------------------------------------------------------

require 'uri'
require 'date'

module GroupDocsConversionCloud
  #
  # GroupDocs.Conversion Cloud API
  #
  class InfoApi
    attr_accessor :config

    #make InfoApi.new private 
    private_class_method :new

    # Initializes new instance of InfoApi
    #
    # @param [config] Configuration 
    # @return [InfoApi] New instance of InfoApi
    def initialize(config)
      @config = config
      @api_client = ApiClient.new(config)
      @access_token = nil
    end

    # Initializes new instance of InfoApi
    #
    # @param [app_sid] Application identifier (App SID)
    # @param [app_key] Application private key (App Key)
    # @return [InfoApi] New instance of InfoApi
    def self.from_keys(app_sid, app_key)
      config = Configuration.new(app_sid, app_key)
      return new(config)
    end

    # Initializes new instance of InfoApi
    #
    # @param [config] Configuration 
    # @return [InfoApi] New instance of InfoApi
    def self.from_config(config)
      return new(config)
    end

    # Returns metadata for provided document
    # 
    # @param request get_document_metadata_request
    # @return [DocumentMetadata]
    def get_document_metadata(request)
      data, _status_code, _headers = get_document_metadata_with_http_info(request)
      data
    end

    # Returns metadata for provided document
    # 
    # @param request get_document_metadata_request
    # @return [Array<(DocumentMetadata, Fixnum, Hash)>]
    # DocumentMetadata data, response status code and response headers
    def get_document_metadata_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentMetadataRequest

      @api_client.config.logger.debug 'Calling API: InfoApi.get_document_metadata ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/conversion/info'

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('FilePath') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FilePath') + '}', request.file_path.to_s)
      else
        query_params[downcase_first_letter('FilePath')] = request.file_path unless request.file_path.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('StorageName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StorageName') + '}', request.storage_name.to_s)
      else
        query_params[downcase_first_letter('StorageName')] = request.storage_name unless request.storage_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'DocumentMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        InfoApi#get_document_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns all supported conversion types
    # 
    # @param request get_supported_conversion_types_request
    # @return [Array<SupportedFormat>]
    def get_supported_conversion_types(request)
      data, _status_code, _headers = get_supported_conversion_types_with_http_info(request)
      data
    end

    # Returns all supported conversion types
    # 
    # @param request get_supported_conversion_types_request
    # @return [Array<(Array<SupportedFormat>, Fixnum, Hash)>]
    # Array<SupportedFormat> data, response status code and response headers
    def get_supported_conversion_types_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetSupportedConversionTypesRequest

      @api_client.config.logger.debug 'Calling API: InfoApi.get_supported_conversion_types ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/conversion/formats'

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('FilePath') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FilePath') + '}', request.file_path.to_s)
      else
        query_params[downcase_first_letter('FilePath')] = request.file_path unless request.file_path.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('StorageName') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StorageName') + '}', request.storage_name.to_s)
      else
        query_params[downcase_first_letter('StorageName')] = request.storage_name unless request.storage_name.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('format') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('format') + '}', request.format.to_s)
      else
        query_params[downcase_first_letter('format')] = request.format unless request.format.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'Array<SupportedFormat>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        InfoApi#get_supported_conversion_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    #
    # Helper method to convert first letter to downcase
    #
    private def downcase_first_letter(str)
      value = str[0].downcase + str[1..-1]
      value
    end
                 
    #
    # Retrieves access token
    #
    private def get_access_token
        if @access_token.nil? then
          request_access_token
        end
        
        @access_token  
    end

    #
    # Gets a access token from server
    #
    private def request_access_token
        auth_config = Configuration.new(@config.app_sid, @config.app_key)
        auth_config.api_base_url = @config.api_base_url
        auth_config.debugging = @config.debugging
        auth_config.logger = @config.logger
        auth_config.temp_folder_path = @config.temp_folder_path
        auth_config.client_side_validation = @config.client_side_validation
        auth_config.api_version = ''

        auth_api_client = ApiClient.new(auth_config)

        request_url = "/connect/token"
        post_data = "grant_type=client_credentials&client_id=#{@config.app_sid}&client_secret=#{@config.app_key}"

        data, _status_code, _header = auth_api_client.call_api(:POST, request_url, :body => post_data, :return_type => 'Object')
        
        @access_token = data[:access_token]

        expires_in_seconds = data[:expires_in].to_i - 5 * 60 
        expires_in_days = Rational(expires_in_seconds, 60 * 60 * 24)
        @access_token_expires_at = DateTime.now + expires_in_days
    end
    
    # requires all files inside a directory from current dir
    # @param _dir can be relative path like '/lib' or "../lib"
    private def require_all(_dir)
      Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), _dir)) + "/*.rb"].each do |file|
        require file
      end
    end
  end
end
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="get_document_metadata_request.rb">
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

module GroupDocsConversionCloud

  #
  # Request model for get_document_metadata operation.
  #
  class GetDocumentMetadataRequest

        # Absolute path to a document in the storage
        attr_accessor :file_path
        # StorageName which contains the document
        attr_accessor :storage_name
	
        #
        # Initializes a new instance.
        # @param file_path Absolute path to a document in the storage
        # @param storage_name StorageName which contains the document
        def initialize(file_path = nil, storage_name = nil)
           self.file_path = file_path
           self.storage_name = storage_name
        end
  end
end
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="get_supported_conversion_types_request.rb">
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

module GroupDocsConversionCloud

  #
  # Request model for get_supported_conversion_types operation.
  #
  class GetSupportedConversionTypesRequest

        # Absolute path to a document in the storage
        attr_accessor :file_path
        # StorageName which contains the document
        attr_accessor :storage_name
        # If provided only supported conversions for specified format will be returned
        attr_accessor :format
	
        #
        # Initializes a new instance.
        # @param file_path Absolute path to a document in the storage
        # @param storage_name StorageName which contains the document
        # @param format If provided only supported conversions for specified format will be returned
        def initialize(file_path = nil, storage_name = nil, format = nil)
           self.file_path = file_path
           self.storage_name = storage_name
           self.format = format
        end
  end
end
