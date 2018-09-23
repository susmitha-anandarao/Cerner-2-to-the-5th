//Returns longest palindrome in a given string, if no palindrome exists returns the first letter
// cerner_2^5_2018
public class LongestPalindromeFinder {

	public static void main(String[] args) {
		System.out.println(longestPalindromeString("Susmitha"));
	}

	private static String intermediatePalindrome(String s, int left, int right) {
		if (left > right) return null;
		while (left >= 0 && right < s.length()
				&& s.charAt(left) == s.charAt(right)) {
			left--;
			right++;
		}
		return s.substring(left + 1, right);
	}

	private static String longestPalindromeString(String s) {
		if (s == null) return null;
      	s = s.toLowerCase();
		String longest = s.substring(0, 1);
		for (int i = 0; i < s.length() - 1; i++) {
			String palindrome = intermediatePalindrome(s, i, i);
			if (palindrome.length() > longest.length()) {
				longest = palindrome;
			}
			palindrome = intermediatePalindrome(s, i, i + 1);
			if (palindrome.length() > longest.length()) {
				longest = palindrome;
			}
		}
		return longest;
	}
}