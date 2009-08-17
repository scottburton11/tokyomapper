module TokyoMapper
  include TokyoCabinet
  
  module ClassMethods

    def connection(&block)
      if block_given?
        begin
          open_db
          payload = yield db
        rescue => e
          puts "There was an error: #{e}"
        ensure
          close_db          
        end
        return payload
      else
        db
      end
    end
    
    def db(&block)
      @db ||= TokyoCabinet::TDB::new
    end

    def open_db
      db.open(self.db_name, TokyoCabinet::TDB::OWRITER | TokyoCabinet::TDB::OCREAT)
    end

    def close_db
      db.close
    end

    def all
      connection do |db|
        db.keys.map{|k| self.new(self.symbolize_keys(db.get(k)))}
      end
    end
    
    def symbolize_keys(original_hash)
      new_hash = {}
      original_hash.each_pair do |k,v|
        new_hash[k.to_sym] = v
      end
      return new_hash
    end
    
    def stringify_keys(original_hash)
      new_hash = {}
      original_hash.each_pair do |k,v|
        new_hash[k.to_s] = v
      end
      return new_hash
    end
    
    def db_name
      "#{self.name.downcase.pluralize}.tdb"
    end
    
  end
  
  module InstanceMethods
        
    def save
      self.class.connection { |db| db.put(db.genuid, self.class.stringify_keys(self.instance_values))}
    end
    
  end
  
  def self.included(receiver)
    receiver.extend         ClassMethods
    receiver.send :include, InstanceMethods
  end
  
end