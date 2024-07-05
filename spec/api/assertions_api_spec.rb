=begin
#OpenFGA

#A high performance and flexible authorization/permission engine built for developers and inspired by Google Zanzibar.

The version of the OpenAPI document: 1.x
Contact: community@openfga.dev
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::AssertionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AssertionsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::AssertionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AssertionsApi' do
    it 'should create an instance of AssertionsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::AssertionsApi)
    end
  end

  # unit tests for read_assertions
  # Read assertions for an authorization model ID
  # The ReadAssertions API will return, for a given authorization model id, all the assertions stored for it. An assertion is an object that contains a tuple key, and the expectation of whether a call to the Check API of that tuple key will return true or false. 
  # @param store_id 
  # @param authorization_model_id 
  # @param [Hash] opts the optional parameters
  # @return [ReadAssertionsResponse]
  describe 'read_assertions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for write_assertions
  # Upsert assertions for an authorization model ID
  # The WriteAssertions API will upsert new assertions for an authorization model id, or overwrite the existing ones. An assertion is an object that contains a tuple key, and the expectation of whether a call to the Check API of that tuple key will return true or false. 
  # @param store_id 
  # @param authorization_model_id 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'write_assertions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
