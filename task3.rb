#!/usr/bin/ruby

# THIRD TASK - Наибольший общий делитель

def nod(a, b)
    if (b == 0)
        return a
    end
    return nod(b, a.divmod(b)[1])
end

puts(nod(ARGV[0].to_i, ARGV[1].to_i))