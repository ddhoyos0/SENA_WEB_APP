module ActiveRecord
  class Base
    def initialize(params = {})
      params.each do |key, value|
        instance_variable_set("@#{key}", value)
        self.class.send(:define_method, key) do
          instance_variable_get("@#{key}")
        end
      end
    end

    def self.create(params)
      colums = params.keys.join(",")
      values = params.values.map { |v| "'#{v}'" }.join(", ")
      query = "INSERT INTO #{table_name}(#{colums})VALUES (#{values});"
      execute_query(query)
    end

    def self.client
      $client ||= ActiveRecord::Client.new
    end

    def self.execute_query(query = "")
      client.execute_query(query)
    end

    def self.find(id)
      results = execute_query("select *from #{table_name} where id=#{id};")

      raise("RecordNotFound") if results.cmd_tuples.zero?

      new(results.each.first)
    end

    def self.all
      result = client.execute_query("select *from #{table_name};")

      result.each.map { |row| new(row) }
    end

    def self.destroy(id)
      results = execute_query("delete from #{table_name} where id = #{id};")

      raise("RecordNotFound") if results.cmd_tuples.zero?

      true
    end

    def self.table_name
      raise("NotImplementedError")
    end
  end
end
