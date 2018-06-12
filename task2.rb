#!/usr/bin/ruby

# SECOND TASK - Максимальная подстрока

def count_substr(working_string, substring)
    counter = 0
    for n in 0..(working_string.length - substring.length)
        if (working_string[n, substring.length] == substring)
            counter += 1
        end
    end
    return counter
end

def find_substr(working_string)
    for n in (working_string.length - 1).downto(1)
        for m in 0..(working_string.length - n)
            if (count_substr(working_string, working_string[m, n]) > 1)
                return working_string[m, n]
            end
        end
    end
    return nil
end

if ((ARGV[0] != nil) && (ARGV[0].length > 1) && (ARGV[0].length <= 100) && (ARGV[0].match(/[^[:lower:]]/) == nil))
    result = find_substr(ARGV[0])
    if (result != nil)
        puts(result)
    end
end