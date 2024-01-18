# GroupDocs.Conversion Cloud Ruby SDK
Ruby gem for communicating with the GroupDocs.Conversion Cloud API

## Installation

A gem of groupdocs_conversion_cloud is available at [rubygems.org](https://rubygems.org). You can install it with:

```shell
gem install groupdocs_conversion_cloud
```    

To add dependency to your app copy following into your Gemfile and run `bundle install`:

```
gem "groupdocs_conversion_cloud", "~> 24.1"
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'groupdocs_conversion_cloud'

# Get your app_sid and app_key at https://dashboard.groupdocs.cloud (free registration is required).
app_sid = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
app_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

# Create instance of the API class
api = GroupDocsConversionCloud::InfoApi.from_keys(app_sid, app_key)

# Retrieve supported converison types
request = GroupDocsConversionCloud::GetSupportedConversionTypesRequest.new
response = api.get_supported_conversion_types(request)

# Print out supported conversion types
puts("Supported file-formats:")
response.each do |format|
puts("#{format.source_format} to [#{format.target_formats.join(', ')}]")
```

## Licensing
GroupDocs.Conversion Cloud Ruby SDK licensed under [MIT License](LICENSE).

## Resources
+ [**Website**](https://www.groupdocs.cloud)
+ [**Product Home**](https://products.groupdocs.cloud/conversion)
+ [**Documentation**](https://docs.groupdocs.cloud/display/conversioncloud/Home)
+ [**Free Support Forum**](https://forum.groupdocs.cloud/c/conversion)
+ [**Blog**](https://blog.groupdocs.cloud/category/conversion)

## Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://forum.groupdocs.cloud/c/conversion).