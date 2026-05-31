using System;
using System.Collections.Generic;

abstract class AbominacaoCosmica
{
    public string Nome { get; set; }

    public abstract void Manifestar();
}

class Shoggoth : AbominacaoCosmica
{
    public override void Manifestar()
    {
        Console.WriteLine(Nome + ": A massa de protoplasma se arrasta borbulhando, moldando órgãos e olhos conforme avança.");
    }
}

class CacadorAlado : AbominacaoCosmica
{
    public override void Manifestar()
    {
        Console.WriteLine(Nome + ": A criatura bate suas asas membranosas, mergulhando do vácuo estelar em um voo silencioso.");
    }
}

class Program
{
    static void Main(string[] args)
    {
        List<AbominacaoCosmica> criaturas = new List<AbominacaoCosmica>();

        Shoggoth s = new Shoggoth();
        s.Nome = "Shoggoth Ancestral";

        CacadorAlado c = new CacadorAlado();
        c.Nome = "Morte Alada";

        criaturas.Add(s);
        criaturas.Add(c);

        foreach (var criatura in criaturas)
        {
            criatura.Manifestar();
        }
    }
}