package ch.jmb.sonstiges;

import java.io.Console;

public class ConsolTest
{

	public static void main(String[] args)
	{
		Console c = System.console();
		
		String name = c.readLine("bitte %s eingeben > ","name");
		String addr = c.readLine("bitte %s eingeben > ","addr");
		
		System.out.println(name + "/" + addr);
		
		char[] passwort = c.readPassword("bitte %s eingeben > ","Passwort");
		
		System.out.println(passwort);

		c.readLine("***");
	}

}
