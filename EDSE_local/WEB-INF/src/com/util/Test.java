package com.util;

public class Test
{
public static void main(String[] args) {
	String s="kannan";
	System.out.println("========String ========="+s);
	for(int i=1;i<4;i++)
	{
		System.out.println("=================");
		String i1=String.valueOf(i);
		String enc=Hashing.HashingFunction(s, i1);
		//System.out.println("enc :"+i+"####"+enc);
		
	}
		
	
}
}
