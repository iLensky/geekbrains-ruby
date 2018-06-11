#!/usr/bin/ruby

# SECOND TASK - Максимальная подстрока

def find_str(working_string)
    for n in (working_string.length).downto(1)
        for m in 0..(working_string.length - n)
            if (working_string.index(working_string[m, n], m + 1) != nil)
                return working_string[m, n]
            end
        end
    end
    return nil
end

if (ARGV[0] != nil)
    result = find_str(ARGV[0])
    if (result != nil)
        puts(result)
    end
end