#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd">
#    Copyright (c) 2003-2024 Aspose Pty Ltd
# </copyright>
# <summary>
#   Permission is hereby granted, free of charge, to any person obtaining a copy
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

  require_relative './../../lib/groupdocs_conversion_cloud'
  require_relative './../test_context'
  require_relative './../test_file'

  class TestInfoApi < TestContext
    
    def test_get_supported_conversion_types
      request = GetSupportedConversionTypesRequest.new
      
      response = @info_api.get_supported_conversion_types(request)

      assert_operator response.size, :>, 0  
      response.each do |format|
        assert_equal false, format.source_format.empty? 
        assert_operator format.target_formats.size, :>, 0 
      end
    end

    def test_get_document_metadata
      request = GetDocumentMetadataRequest.new TestFile.four_pages_docx.path
      
      response = @info_api.get_document_metadata(request)

      assert_equal 4, response.page_count
    end

    def test_GetInfoReturnsFileNotFound
      request = GetDocumentMetadataRequest.new(TestFile.not_exist.path)
      error = assert_raises ApiClientError do
        @info_api.get_document_metadata(request)
      end
      assert_equal true, error.message.include?("AmazonS3 Storage exception: The specified key does not exist.")
    end        

  end
end
