package io_streams;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Locale;
import java.util.Scanner;

public class ScanSum {
    public static void main(String[] args) throws IOException {

        Scanner scanner = null;
        double sum = 0;

        try {
        	FileReader fileReader = new FileReader("usnumbers.txt");
        	BufferedReader bufferedReader = new BufferedReader(fileReader);
            scanner = new Scanner(bufferedReader);
            
            scanner.useLocale(Locale.US);

            while (scanner.hasNext()) {
                if (scanner.hasNextDouble()) {
                    sum += scanner.nextDouble();
                } else {
                    scanner.next();
                }   
            }
        } finally {
            scanner.close();
        }

        System.out.println(sum);
    }
}
