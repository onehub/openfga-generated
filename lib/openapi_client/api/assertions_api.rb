=begin
#OpenFGA

#A high performance and flexible authorization/permission engine built for developers and inspired by Google Zanzibar.

The version of the OpenAPI document: 1.x
Contact: community@openfga.dev
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module OpenapiClient
  class AssertionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Read assertions for an authorization model ID
    # The ReadAssertions API will return, for a given authorization model id, all the assertions stored for it. An assertion is an object that contains a tuple key, and the expectation of whether a call to the Check API of that tuple key will return true or false. 
    # @param store_id [String] 
    # @param authorization_model_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [ReadAssertionsResponse]
    def read_assertions(store_id, authorization_model_id, opts = {})
      data, _status_code, _headers = read_assertions_with_http_info(store_id, authorization_model_id, opts)
      data
    end

    # Read assertions for an authorization model ID
    # The ReadAssertions API will return, for a given authorization model id, all the assertions stored for it. An assertion is an object that contains a tuple key, and the expectation of whether a call to the Check API of that tuple key will return true or false. 
    # @param store_id [String] 
    # @param authorization_model_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReadAssertionsResponse, Integer, Hash)>] ReadAssertionsResponse data, response status code and response headers
    def read_assertions_with_http_info(store_id, authorization_model_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssertionsApi.read_assertions ...'
      end
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling AssertionsApi.read_assertions"
      end
      # verify the required parameter 'authorization_model_id' is set
      if @api_client.config.client_side_validation && authorization_model_id.nil?
        fail ArgumentError, "Missing the required parameter 'authorization_model_id' when calling AssertionsApi.read_assertions"
      end
      # resource path
      local_var_path = '/stores/{store_id}/assertions/{authorization_model_id}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s)).sub('{' + 'authorization_model_id' + '}', CGI.escape(authorization_model_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ReadAssertionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AssertionsApi.read_assertions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssertionsApi#read_assertions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upsert assertions for an authorization model ID
    # The WriteAssertions API will upsert new assertions for an authorization model id, or overwrite the existing ones. An assertion is an object that contains a tuple key, and the expectation of whether a call to the Check API of that tuple key will return true or false. 
    # @param store_id [String] 
    # @param authorization_model_id [String] 
    # @param body [WriteAssertionsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def write_assertions(store_id, authorization_model_id, body, opts = {})
      write_assertions_with_http_info(store_id, authorization_model_id, body, opts)
      nil
    end

    # Upsert assertions for an authorization model ID
    # The WriteAssertions API will upsert new assertions for an authorization model id, or overwrite the existing ones. An assertion is an object that contains a tuple key, and the expectation of whether a call to the Check API of that tuple key will return true or false. 
    # @param store_id [String] 
    # @param authorization_model_id [String] 
    # @param body [WriteAssertionsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def write_assertions_with_http_info(store_id, authorization_model_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssertionsApi.write_assertions ...'
      end
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling AssertionsApi.write_assertions"
      end
      # verify the required parameter 'authorization_model_id' is set
      if @api_client.config.client_side_validation && authorization_model_id.nil?
        fail ArgumentError, "Missing the required parameter 'authorization_model_id' when calling AssertionsApi.write_assertions"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AssertionsApi.write_assertions"
      end
      # resource path
      local_var_path = '/stores/{store_id}/assertions/{authorization_model_id}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s)).sub('{' + 'authorization_model_id' + '}', CGI.escape(authorization_model_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AssertionsApi.write_assertions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssertionsApi#write_assertions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
