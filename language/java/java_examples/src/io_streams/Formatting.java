package io_streams;

import java.time.LocalDateTime;

public class Formatting {

	public static void main(String[] args) {

		System.out.print("The value of PI is ");
		System.out.println(Math.PI);

		// | Conversion | Description |
		// | ---------- | --------------------------------------- |
		// | d | Integer as a decimal value |
		// | f | Floating point as a decimal value |
		// | n | Platform-specific line terminator |
		// | x | Integer as a hexadecimal value |
		// | s | String |
		// | tB | Integer as a locale-specific month name |

		System.out.format("Integer = %d %n", 100);
		System.out.format("Floating = %f %n", 100.00);
		System.out.format("Hex = %x %n", 100);
		System.out.format("String = %s %n", "String");
		System.out.format("Month name = %tB %n", LocalDateTime.now());

		// | Element | Description |
		// | ------- | ---------------------- |
		// | % | Begin format specifier |
		// | 1$ | Argument index |
		// | +0 | Flags |
		// | 20 | Width |
		// | .10 | Precision |
		// | f | Conversion |

		System.out.format("%f, %1$+020.10f %n", Math.PI);
	}

}
