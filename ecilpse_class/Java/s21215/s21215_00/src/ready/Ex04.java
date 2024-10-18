package ready;

import java.util.Scanner;
import java.util.Stack;

public class Ex04 {

    public static void main(String[] args) {

        // 30P4T5M51

        Scanner sc = new Scanner(System.in);

        Stack<String> stack = new Stack<>();
        String str = sc.nextLine();
        String strs[] = str.replace("P", " + ").replace("M", " - ").replace("T", " * ").split(" ");
        String nums[] = str.replace("P", " ").replace("M", " ").replace("T", " ").split(" ");
        String result = strs[0];

        for (int i = 1; i < strs.length; i++)
        {
            switch (strs[i])
            {
                case "+":
                {
                    if (stack.isEmpty())
                    {
                        stack.push("+");
                    }
                    else
                    {
                        if (stack.peek().equals("*"))
                        {
                            for (int j = 0; j < stack.size(); j++) result += stack.pop();
                            stack.push("+");
                        }
                    }
                    break;
                }
                case "-":
                {
                    if (stack.isEmpty())
                    {
                        stack.push("-");
                    }
                    else
                    {
                        if (stack.peek().equals("*"))
                        {
                            for (int j = 0; j < stack.size() + 1; j++) result += stack.pop();
                            stack.push("-");
                        }
                    }
                    break;
                }
                case "*":
                {
                    stack.push("*");
                break;
                }
                default:
                {
                    result += strs[i];
                    break;
                }

            }
        }
        if (!stack.isEmpty()) for (int j = 0; j < stack.size() + 1; j++) result += stack.pop();
        
        System.out.println(result);
        char[] chs = result.toCharArray();

        for (int i = 0; i < chs.length; i++)
        {
            if (chs[i] == '*' && chs[i] == '+' && chs[i] == '-')
            {
            	int b = Integer.parseInt(stack.pop());
                int a = Integer.parseInt(stack.pop());
                switch (chs[i]) {
                    case '+':
                        stack.push(String.valueOf(a + b));
                        break;
                    case '-':
                        stack.push(String.valueOf(a - b));
                        break;
                    case '*':
                        stack.push(String.valueOf(a * b));
                        break;
                }
            }
            else
            {
                stack.push(String.valueOf(chs[i]));
            }
        }

        System.out.println(stack.pop());

    }
}
