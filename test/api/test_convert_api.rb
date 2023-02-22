#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd">
#    Copyright (c) 2003-2023 Aspose Pty Ltd
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

  class TestConvertApi < TestContext
    
    def test_convert_document      
      settings = ConvertSettings.new 
      settings.file_path = file = TestFile.four_pages_docx.path
      settings.format = "jpg"
      settings.output_path = "converted"
      settings.convert_options = ConvertOptions.new
      request = ConvertDocumentRequest.new settings
      
      response = @convert_api.convert_document(request)

      assert_operator response.size, :>, 0  
      assert_operator response[0].size, :>, 0
    end

    def test_convert_document_download
      settings = ConvertSettings.new 
      settings.file_path = file = TestFile.four_pages_docx.path
      settings.format = "pdf"      
      settings.convert_options = ConvertOptions.new
      request = ConvertDocumentRequest.new settings
      
      response = @convert_api.convert_document(request)

      assert_operator response.length, :>, 0  
    end

    def test_convert_document_direct
      test_file = TestFile.four_pages_docx
      format = "pdf"      
      file = File.open(get_test_path() + test_file.path, "r")

      request = ConvertDocumentDirectRequest.new format, file
      
      response = @convert_api.convert_document_direct(request)

      assert_operator response.length, :>, 0  
    end    

    def test_convert_document_direct_opts
      test_file = TestFile.password_protected_docx
      format = "pdf"      
      file = File.open(get_test_path() + test_file.path, "r")

      load_options = DocxLoadOptions.new
      load_options.format = "docx"
      load_options.password = test_file.password

      request = ConvertDocumentDirectRequest.new format, file, nil, nil, load_options
      
      response = @convert_api.convert_document_direct(request)

      assert_operator response.length, :>, 0  
    end    

  end
end
