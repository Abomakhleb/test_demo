
package com.diffie;


public class Diffeencdec {



    

    public static boolean DiffieHellman(String filepath,String seckey,String encpath) {
      boolean fg=true;
        // 1. ------------------------------------------------------------------
        // This is Alice and Bob
        // Alice and Bob want to chat securely. But how?

        final Person alice = new Person();
        final Person bob   = new Person();

        // 5. ------------------------------------------------------------------
        // Alice encrypts message using the secret key and sends to Bob

       alice.encryptAndSendMessage(filepath,seckey, bob,encpath);
      //  alice.encryptAndSendMessage("shanu", bob);
        //
        //    O                                        O
        //   /|\ []-------------------------------->  /|\
        //   / \                                      / \
        //
        //  ALICE                                     BOB
        //  + public key                              + public key
        //  + private key                             + private key
        //  + public key                              + public key
        //  + secret key                              + secret key
        //  + message                                 _ MESSAGE

        // 6. ------------------------------------------------------------------
        // Bob receives the important message and decrypts with secret key.

       /* bob.whisperTheSecretMessage();*/
		return fg;

        //
        //    O                     (((   (((   (((   \O/   )))
        //   /|\                                       |
        //   / \                                      / \
        //
        //  ALICE                                     BOB
        //  + public key                              + public key
        //  + private key                             + private key
        //  + public key                              + public key
        //  + secret key                              + secret key
        //  + message                                 + message
      
    }
}
