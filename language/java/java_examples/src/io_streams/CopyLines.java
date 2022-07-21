package io_streams;

import java.io.BufferedReader;
import java.io.FileWriter;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

public class CopyLines {

	public static void main(String[] args) throws IOException {

		BufferedReader inputStream = null;
		PrintWriter outputStream = null;

		try {
			FileReader fileReader = new FileReader("xanadu.txt");
			FileWriter fileWriter = new FileWriter("xanada-output.txt");

			inputStream = new BufferedReader(fileReader);
			outputStream = new PrintWriter(fileWriter);

			String line;

			while ((line = inputStream.readLine()) != null) {
				outputStream.println(line);
			}
		} finally {
			if (inputStream != null) {
				inputStream.close();
			}
			if (outputStream != null) {
				outputStream.close();
			}
		}
	}

}
