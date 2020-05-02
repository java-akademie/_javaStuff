package ch.jmildner.beans;

import javax.ejb.Stateful;

import ch.jmildner.interfaces.FirstRemote;

@Stateful(mappedName = "first")
public class FirstBean implements FirstRemote
{

	public String sagHallo()
	{
		System.out.println("hallo welt");
		return "Hallo Welt";
	}

}
