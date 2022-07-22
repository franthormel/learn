package io_streams;

import java.io.Console;
import java.io.IOException;
import java.util.Arrays;

public class ConsolePassword {

    public static void main(String args[]) throws IOException {

        // 1. Attempt to retrieve the Console object. If the object is not available,
        // abort.
        Console console = System.console();

        if (console == null) {
            System.err.println("No console.");
            System.exit(1);
        }

        // 2. Invoke Console.readLine to prompt for and read the user's login name.
        String login = console.readLine("Enter your login: ");

        // 3. Invoke Console.readPassword to prompt for and read the user's existing
        // password.
        char[] oldPassword = console.readPassword("Enter your old password: ");

        // 4. Invoke verify to confirm that the user is authorized to change the
        // password. (In this example, verify is a dummy method that always returns
        // true.)
        if (verify(login, oldPassword)) {

            boolean noMatch;

            // 5. Repeat the following steps until the user enters the same password twice:
            do {
                // 5.a. Invoke Console.readPassword twice to prompt for and read a new password.
                char[] newPassword = console.readPassword("Enter your new password: ");
                char[] newPasswordConfirm = console.readPassword("Enter new password again: ");

                // 5.b. If the user entered the same password both times, invoke change to
                // change it. (Again, change is a dummy method.)
                noMatch = !Arrays.equals(newPassword, newPasswordConfirm);

                if (noMatch) {
                    console.format("Passwords don't match. Try again.%n");
                } else {
                    change(login, newPassword);
                    console.format("Password for %s changed.%n", login);
                }

                // 5.c. Overwrite both passwords with blanks.
                Arrays.fill(newPassword, ' ');
                Arrays.fill(newPasswordConfirm, ' ');

            } while (noMatch);
        }

        // 6. Overwrite the old password with blanks.
        Arrays.fill(oldPassword, ' ');
    }

    // Dummy change method.
    static boolean verify(String login, char[] password) {
        // This method always returns
        // true in this example.
        // Modify this method to verify
        // password according to your rules.
        return true;
    }

    // Dummy change method.
    static void change(String login, char[] password) {
        // Modify this method to change
        // password according to your rules.
    }
}