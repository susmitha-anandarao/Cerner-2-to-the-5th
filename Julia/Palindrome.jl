# cerner_2^5_2018
function palindrome(input)
    if (input == reverse(input))
        println("Palindrome")
    else
        println("Not a palindrome")
    end
end

palindrome("tattarrattat")
