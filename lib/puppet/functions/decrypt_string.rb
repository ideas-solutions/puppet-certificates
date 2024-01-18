
Puppet::Functions.create_function(:decrypt_string) do
    dispatch :create_function do
      param 'String', :input_string
      return_type 'String'
    end
  
    def create_function(input_string)
      # Generate command to run
      if input_string.include? "ENC["
        cmd = "eyaml decrypt -s '#{input_string}'"
        # Run command
        `#{cmd}`
      else
        return input_string
      end
      
    end
  end
  