package com.diffie;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.GZIPInputStream;

public class GDeCompressZipFile
{
  /*  private static final String INPUT_GZIP_FILE = "D:/file1.gz";
    private static final String OUTPUT_FILE = "D:/decompress.txt";*/

   /* public static void main( String[] args )
    {
    	GDeCompressZipFile gZip = new GDeCompressZipFile();
    	gZip.gunzipIt();
    }
*/
    /**
     * GunZip it
     */
    public static boolean gunzipIt(String input,String output){

     byte[] buffer = new byte[1024];

     try{

    	 GZIPInputStream gzis =
    		new GZIPInputStream(new FileInputStream(input));

    	 FileOutputStream out =
            new FileOutputStream(output);

        int len;
        while ((len = gzis.read(buffer)) > 0) {
        	out.write(buffer, 0, len);
        }

        gzis.close();
    	out.close();

    	System.out.println("Done");

    }catch(IOException ex){
       ex.printStackTrace();
    }
	return true;
   }
}