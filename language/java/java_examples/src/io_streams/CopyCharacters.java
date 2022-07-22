package io_streams;

import java.io.FileWriter;
import java.io.FileReader;
import java.io.IOException;

/*
 * Copy xanadu.txt using character streams to another
 * file using FileReader and FileWriter.
 */
public class CopyCharacters {

	public static void main(String[] args) throws IOException{
		
		FileReader fileReader = null;
		FileWriter fileWriter = null;
		
		try {
			fileReader = new FileReader("xanadu.txt");
			fileWriter = new FileWriter("xanada-output.txt");
			
			int data;
			
			while((data = fileReader.read()) != -1) {
				fileWriter.write(data);
			}
		} finally {
			if(fileReader != null) {
				fileReader.close();
			}
			if(fileWriter != null) {
				fileWriter.close();
			}
		}
	}

}
