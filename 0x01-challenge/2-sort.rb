###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i
    
    # insert result at the right position
    is_inserted = false
    pipo = 0
    l = result.size
    while !is_inserted && pipo < l do
        if result[pipo] < i_arg
            pipo += 1
        else
            result.insert(pipo - 1, i_arg)
            is_inserted = true
            break
        end
    end
    result << i_arg if !is_inserted
end

puts result
