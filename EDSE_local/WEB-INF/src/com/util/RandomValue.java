package com.util;

import java.math.BigInteger;
import java.util.Random;

public class RandomValue {
	
	               /*Random Value Generation*/
	
		
	
	
	public static String  HashKeyValue()
	{
		
		String alphaNumerics = "abcdef1234567890";
		String t = "";
		
	
		for (int i = 0; i < 16; i++) 
		{
		    t += alphaNumerics.charAt((int) (Math.random() * alphaNumerics.length()));
		}
		
		
		return t;
	}
	
	
}
