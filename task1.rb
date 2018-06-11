#!/usr/bin/ruby

# FIRST TASK - Системы счисления

def toDecimal(number_string, base)
    symbol_to_dec = Hash.new
    temp = 0
    for n in '0'..'9'
        symbol_to_dec[n] = temp
        temp += 1
    end
    for n in 'a'..'z'
        symbol_to_dec[n] = temp
        temp += 1
    end

    temp = 0
    for n in 0..(number_string.length - 1)
        temp += symbol_to_dec[number_string[n]] * (base ** (number_string.length - 1 - n))
    end
    return temp
end

def fromDecimal(number, base)
    dec_to_symbol = Hash.new
    temp = 0
    for n in '0'..'9'
        dec_to_symbol[temp] = n
        temp += 1
    end
    for n in 'a'..'z'
        dec_to_symbol[temp] = n
        temp += 1
    end

    number_working = number
    temp_str = ""
    while (number_working.divmod(base)[0] >= base) do
        temp_str += dec_to_symbol[number_working.divmod(base)[1]]
        number_working = number_working.divmod(base)[0]
    end
    temp_str += dec_to_symbol[number_working.divmod(base)[1]]
    if (dec_to_symbol[number_working.divmod(base)[0]] != "0")
        temp_str += dec_to_symbol[number_working.divmod(base)[0]]
    end
    return temp_str.reverse!
end

puts(fromDecimal(toDecimal(ARGV[0], ARGV[1].to_i), ARGV[2].to_i))