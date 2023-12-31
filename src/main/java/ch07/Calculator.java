package ch07;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Calculator {
	private int n1;
	private int n2;
	private String op;
	
	public long calc() {
		long result = 0;
		
		switch (op) {
		case "+":
			result = n1 + n2;
			break;
		case "-":
			result = n1 - n2;
			break;
		case "*":
			result = n1 * n2;
			break;
		case "/":
			result = n1 / n2;
			break;
		default:
			break;
		}
		return result;
	}

}
