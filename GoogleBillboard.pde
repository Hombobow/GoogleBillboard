public final static String newE = "27182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";
public void setup()
{
  //double dubE = Double.parseDouble(e);
  //for (int i = 0; i < e.length() - 2; i++)
  //{
  //  dubE *= 10;
  //}
  //System.out.println(dubE);

  //String newE = Double.toString(dubE);

  double firstTenPrime = 0;

  for (int i = 0; i < newE.length() - 10; i++)
  {
    double num = Double.parseDouble(newE.substring(i, i+10));
    if (isPrime(num))
    {
      firstTenPrime = num;
      break;
    }
  }

  System.out.println(firstTenPrime);
}

public boolean isPrime(double dNum)
{
  if (dNum < 2)
  {
    return false;
  }
  for (int i = 2; i < Math.sqrt(dNum); i++)
  {
    if (dNum % i == 0)
    {
      return false;
    }
  }
  return true;
}
