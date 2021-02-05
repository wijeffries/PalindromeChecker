public void setup()
{
  String lines[] = {"rotator", "test", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = onlyLetters(word);
  word = lowerCase(word);
  if (reverse(word).equals(word)) {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String letter = new String();
    String total = new String();
    for (int i = 0; i < str.length(); i++) {
      letter = str.substring((str.length()-1)-i, str.length()-i);
      total = total + letter;
    }
    total = onlyLetters(total);
    total = lowerCase(total);
  return total;
}
public String lowerCase(String str)
{
  str = str.toLowerCase();
  return str;
}
public String  onlyLetters(String str) 
{
  String total = new String();
  for (int i = 0; i < str.length(); i++) {
    if (Character.isLetter(str.charAt(i)) == true) {
      total = total + str.charAt(i);
    }
  }
  return total;
}
