package misc;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

public class Utils {


    public static void writeToFile(String fileName, String content) {
        try {
            File myObj = new File(fileName);
            if (myObj.createNewFile()) {
                System.out.println("File created: " + myObj.getName());
                Files.write(myObj.toPath(), content.getBytes());
                System.out.println("File ==> " + myObj.getAbsolutePath());
            }else{
                System.out.println("FIle already found");
            }
            } catch (IOException ioException) {
            ioException.printStackTrace();

        }
    }
}

