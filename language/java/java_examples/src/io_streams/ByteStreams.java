package io_streams;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class ByteStreams {
    public static void main(String[] args) throws IOException {

        FileInputStream fileInput = null;
        FileOutputStream fileOutput = null;

        try {
            fileInput = new FileInputStream("xanadu.txt");
            fileOutput = new FileOutputStream("xanadu-output.txt");
            int data;         

            while ((data = fileInput.read()) != -1) {
                fileOutput.write(data);
            }
        } finally {
            if (fileInput != null) {
                fileInput.close();
            }
            if (fileOutput != null) {
                fileOutput.close();
            }
        }
    }
}