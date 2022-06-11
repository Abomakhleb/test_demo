
package com.diffie;


public class DiffehellmanDec {



    

    public static boolean DiffieHellmanDecyption(String input,String output,String key) {
      boolean fg=true;
        

        final Person alice = new Person();
        final Person bob   = new Person();

      
       Person.receiveAndDecryptMessage(input, output,key);
    

        bob.whisperTheSecretMessage();
		return fg;

      
    }
}
