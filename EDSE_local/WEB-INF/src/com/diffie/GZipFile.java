package com.diffie;


import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;

public class GZipFile
{
    private static final String OUTPUT_GZIP_FILE = "D:/file1.gz";
    private static final String SOURCE_FILE = "D:/Rlease.txt";


   /* public static void main( String[] args )
    {
    	GZipFile gZip = new GZipFile();
    	gZip.gzipIt();
    }

    *//**
     * GZip it
     * @param zipFile output GZip file location
     */
    public static boolean gzipIt(String inputfile,String outputfile){

     byte[] buffer = new byte[1024];

     try{

    	GZIPOutputStream gzos =
    		new GZIPOutputStream(new FileOutputStream(outputfile));

        FileInputStream in =
            new FileInputStream(inputfile);

        int len;
        while ((len = in.read(buffer)) > 0) {
        	gzos.write(buffer, 0, len);
        }

        in.close();

    	gzos.finish();
    	gzos.close();

    	System.out.println("Done");

    }catch(IOException ex){
       ex.printStackTrace();
    }
	return true;
   }

}