
package com.diffie;


public class Main {



    

    public static boolean keygen(String filepathalice,String filepathbob,String ownerid) {
boolean fg=false;
        // 1. ------------------------------------------------------------------
        // This is Alice and Bob
        // Alice and Bob want to chat securely. But how?

        final Person alice = new Person();
        final Person bob   = new Person();

        //    ?                                        ?
        //
        //    O                                        O
        //   /|\                                      /|\
        //   / \                                      / \
        //
        //  ALICE                                     BOB

        // 2. ------------------------------------------------------------------
        // Alice and Bob generate public and private keys.

        alice.generateKeys();
        bob.generateKeys();

        //
        //    O                                        O
        //   /|\                                      /|\
        //   / \                                      / \
        //
        //  ALICE                                     BOB
        //  _ PUBLIC KEY                              _ PUBLIC KEY
        //  _ PRIVATE KEY                             _ PRIVATE KEY

        // 3. ------------------------------------------------------------------
        // Alice and Bob exchange public keys with each other.

        alice.receivePublicKeyFrom(bob);
        bob.receivePublicKeyFrom(alice);

        //
        //    O                                        O
        //   /|\                                      /|\
        //   / \                                      / \
        //
        //  ALICE                                     BOB
        //  + public key                              + public key
        //  + private key                             + private key
        //  _ PUBLIC KEY <------------------------->  _ PUBLIC KEY

        // 4. ------------------------------------------------------------------
        // Alice generates common secret key via using her private key and Bob's public key.
        // Bob generates common secret key via using his private key and Alice's public key.
        // Both secret keys are equal without TRANSFERRING. This is the magic of Diffie-Helman algorithm.

       boolean flg1= alice.generateCommonSecretKey(filepathalice,ownerid);
       boolean flg2=  bob.generateCommonSecretKey1(filepathbob,ownerid);
       
       
       
       if(flg1 && flg2)
       {
    	   fg=true; 
       }
	return fg;
		
      
    }
}
