package ch.jmildner.test;

import java.util.Properties;
import javax.naming.InitialContext;
import ch.jmildner.interfaces.*;

public class TestFirst
{

	public static void main(String args[]) throws Exception
	{
		try
		{
			System.out.println("Test mit JBOSS");

			Properties properties = new Properties();
			properties.put("java.naming.factory.initial", "org.jnp.interfaces.NamingContextFactory");
			//properties.put("java.naming.factory.url.pkgs", "org.jboss.naming:org.jnp.interfaces");
			properties.put("java.naming.provider.url", "localhost:1099");

			InitialContext ctx = new InitialContext(properties);

			FirstRemote ejb = (FirstRemote) ctx.lookup("first");

			String hallo = ejb.sagHallo();

			System.out.println("\n\n\t" + hallo + "\n");
		}
		catch (Exception e)
		{
			System.out.println("\n\n\t geht nicht\n" +e);
		}
	}
}
