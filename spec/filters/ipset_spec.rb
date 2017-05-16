# encoding: utf-8
require 'spec_helper'
require "logstash/filters/ipset"
require "java"

java_import "io.blockr.BlockR"

b = BlockR.new()
b.addIp4("192.168.0.1", 32)

describe LogStash::Filters::Ipset do
  describe "Set to Hello World" do
    let(:config) do <<-CONFIG
      filter {
        ipset {
          message => "Hello World"
        }
      }
    CONFIG
    end

    sample("message" => "some text") do
      expect(subject.get("message")).to eq('Hello World')
      expect(b.contains("192.168.0.1", 32)).to eq(true)
    end
  end
end
