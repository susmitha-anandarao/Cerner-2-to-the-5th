// Sample program to check if a user entered number is palindrome
// cerner_2^5_2018
fun main(args: Array<String>) {
    if (args.size == 0) {
        println("Please provide a name as a command-line argument")
        return
    }
	var num: Int
    num = args[0].toInt()
    var reversedInteger = 0
    var remainder: Int
    val originalInteger: Int
	originalInteger = num

    while (num != 0) {
        remainder = num % 10
        reversedInteger = reversedInteger * 10 + remainder
        num /= 10
    }
    if (originalInteger == reversedInteger)
        println("$originalInteger is a palindrome.")
    else
        println("$originalInteger is not a palindrome.")
}
