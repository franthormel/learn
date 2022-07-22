package io_streams;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

/*
 * Reads the individual words in xanadu.txt
 * and prints them out, one per line. 
 */
public class ScanXanadu {

	public static void main(String[] args) throws IOException {
		
		Scanner scanner = null;
		
		try {
			FileReader fileReader = new FileReader("xanadu.txt");
			BufferedReader bufferedReader = new BufferedReader(fileReader);
			scanner = new Scanner(bufferedReader);
			
			while(scanner.hasNext()) {
				System.out.println(scanner.next());
			}
			
		} finally {
			if(scanner != null) {
				scanner.close();
			}
		}
	}

}
