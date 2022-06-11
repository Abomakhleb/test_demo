
package com.diffie;

import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.spec.SecretKeySpec;

import com.Database.UserDAO;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;



public class Person {



    //~ --- [INSTANCE FIELDS] ------------------------------------------------------------------------------------------

    private PrivateKey privateKey;
    private PublicKey  publicKey;
    private PublicKey  receivedPublicKey;
    private static byte[]     secretKey;
    private static String     secretMessage;



    //~ --- [METHODS] --------------------------------------------------------------------------------------------------

    public void encryptAndSendMessage(String filename,String secret, final Person person,String encpath) {

        try {
        	secretKey = secret.getBytes();
        	
        	byte[] odata_by = ConversionProcess.toByteArray(new File(filename));
        	
               
        	
        	

            // You can use Blowfish or another symmetric algorithm but you must adjust the key size.
            final SecretKeySpec keySpec = new SecretKeySpec(secretKey, "DES");
            final Cipher        cipher  = Cipher.getInstance("DES/ECB/PKCS5Padding");

            cipher.init(Cipher.ENCRYPT_MODE, keySpec);

            final byte[] encryptedMessage = cipher.doFinal(odata_by);
            
            
            System.out.println("Encrypted: " + new String(encryptedMessage));
            
            
          
    		
    		File file = new File(encpath);

     		// if file doesnt exists, then create it
     		if (!file.exists()) {
     			file.createNewFile();
     		}
    		FileOutputStream fileOut1;
			try 
			{
				fileOut1 = new FileOutputStream(file);
				
				fileOut1.write(encryptedMessage);
				fileOut1.flush();
				fileOut1.close();
				
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    		
    		//==========================================
    		
                 
                 
                 
                 
          //person.receiveAndDecryptMessage("D:\\vv.txt");
        // person.receiveAndDecryptMessage("D:\\vv.txt");
           
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    //~ ----------------------------------------------------------------------------------------------------------------

    public boolean generateCommonSecretKey(String fileName,String ownerid) {
    	boolean  flg=false;
        try {
            final KeyAgreement keyAgreement = KeyAgreement.getInstance("DH");
            keyAgreement.init(privateKey);
            keyAgreement.doPhase(receivedPublicKey, true);

            secretKey = shortenSecretKey(keyAgreement.generateSecret());
            String s = new String(secretKey);
            
            
            System.out.println("secrete key of alice"+s );
            
            
            FileWriter fileWriter =
                    new FileWriter(fileName);

                // Always wrap FileWriter in BufferedWriter.
                BufferedWriter bufferedWriter =
                    new BufferedWriter(fileWriter);

                // Note that write() does not automatically
                // append a newline character.
                bufferedWriter.write(s);
               
                // Always close files.
                bufferedWriter.close();
                 flg = UserDAO.updatealiceseckey(s,ownerid);
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
		return flg;
    }

    public boolean generateCommonSecretKey1(String filename,String ownerid) {
    	boolean flg=false;
        try {
        	
        	
            final KeyAgreement keyAgreement = KeyAgreement.getInstance("DH");
            keyAgreement.init(privateKey);
            keyAgreement.doPhase(receivedPublicKey, true);

            secretKey = shortenSecretKey(keyAgreement.generateSecret());
            String s = new String(secretKey);
 System.out.println("secrete key of bob"+s );
            
            
            FileWriter fileWriter =
                    new FileWriter(filename);

                // Always wrap FileWriter in BufferedWriter.
                BufferedWriter bufferedWriter =
                    new BufferedWriter(fileWriter);

                // Note that write() does not automatically
                // append a newline character.
                bufferedWriter.write(s);
               
                // Always close files.
                bufferedWriter.close();
                 flg = UserDAO.updatealiceseckey1(s,ownerid);
                 
                
            
        } catch (Exception e) {
            e.printStackTrace();
        }
		return flg;
    }


    //~ ----------------------------------------------------------------------------------------------------------------

    public void generateKeys() {

        try {
            final KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("DH");
            keyPairGenerator.initialize(1024);

            final KeyPair keyPair = keyPairGenerator.generateKeyPair();

            privateKey = keyPair.getPrivate();
            
           // byte[] data = privateKey.getEncoded();
            //String str = new String(data);
            
            System.out.println("private key of alice "+privateKey);
            
            publicKey  = keyPair.getPublic();
            
            System.out.println("publicKey key of alice "+publicKey);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    //~ ----------------------------------------------------------------------------------------------------------------

    public PublicKey getPublicKey() {

        return publicKey;
    }



    //~ ----------------------------------------------------------------------------------------------------------------

 //  public void receiveAndDecryptMessage(final byte[] message) {
     public static void receiveAndDecryptMessage(String filename,String output,String secret){
        try {
        	
        	
        	secretKey = secret.getBytes();
        
        	
        	System.out.println("========SSSSSSSSSSSSSSSSSSSSS=================,,,,,,,,,,,,,,,,,,,=======================KKKKKKKKKKKKKKKKP[[[[[[[[[[[[[[[[");
        	
        	
        	byte[] odata_by1 = ConversionProcess.toByteArray(new File(filename));
        	
        	

            // You can use Blowfish or another symmetric algorithm but you must adjust the key size.
            final SecretKeySpec keySpec = new SecretKeySpec(secretKey, "DES");
            final Cipher        cipher  = Cipher.getInstance("DES/ECB/PKCS5Padding");

            cipher.init(Cipher.DECRYPT_MODE, keySpec);
           
            secretMessage = new String(cipher.doFinal(odata_by1));
            System.out.println("===================MMMMMMMMMMMMM======="+secretMessage);
            File file = new File(output);

     		// if file doesnt exists, then create it
     		if (!file.exists()) {
     			file.createNewFile();
     		}
    		FileOutputStream fileOut1;
			try 
			{
				fileOut1 = new FileOutputStream(file);
				
				fileOut1.write(secretMessage.getBytes());
				fileOut1.flush();
				fileOut1.close();
				
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

           
       
       
        	
        }
        catch (Exception e) {
			// TODO: handle exception
		}
        
     }
       



    //~ ----------------------------------------------------------------------------------------------------------------

    /**
     * In a real life example you must serialize the public key for transferring.
     *
     * @param  person
     */
    public void receivePublicKeyFrom(final Person person) {

        receivedPublicKey = person.getPublicKey();
    }



    //~ ----------------------------------------------------------------------------------------------------------------

    public void whisperTheSecretMessage()
    {

        System.out.println("secreat message is >>>>>>>>>>>>>>>"+secretMessage);
    }



    //~ ----------------------------------------------------------------------------------------------------------------

    /**
     * 1024 bit symmetric key size is so big for DES so we must shorten the key size. You can get first 8 longKey of the
     * byte array or can use a key factory
     *
     * @param   longKey
     *
     * @return
     */
    private byte[] shortenSecretKey(final byte[] longKey) {

        try {

            // Use 8 bytes (64 bits) for DES, 6 bytes (48 bits) for Blowfish
            final byte[] shortenedKey = new byte[8];

            System.arraycopy(longKey, 0, shortenedKey, 0, shortenedKey.length);

            return shortenedKey;

            // Below lines can be more secure
            // final SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
            // final DESKeySpec       desSpec    = new DESKeySpec(longKey);
            //
            // return keyFactory.generateSecret(desSpec).getEncoded();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }
}
