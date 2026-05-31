using System;
using System.Collections.Generic;

class ReliquiaMagica
{
    public string NomeItem { get; set; }

    public ReliquiaMagica(string nome)
    {
        NomeItem = nome;
    }
}

class BauDeReliquias
{
    private List<ReliquiaMagica> reliquias = new List<ReliquiaMagica>();

    public void GuardarItem(ReliquiaMagica item)
    {
        reliquias.Add(item);
    }

    public void ListarReliquias()
    {
        Console.WriteLine("Relíquias no baú:");
        foreach (var r in reliquias)
        {
            Console.WriteLine("- " + r.NomeItem);
        }
        Console.WriteLine();
    }
}

class ItemDeAcampamento
{
    public string Nome { get; set; }

    public ItemDeAcampamento(string nome)
    {
        Nome = nome;
    }
}

class Maga
{
    public string Nome { get; set; }

    public BauDeReliquias Bau { get; private set; }

    public List<ItemDeAcampamento> ItensAcampamento { get; set; }

    public Maga(string nome, List<ItemDeAcampamento> itens)
    {
        Nome = nome;
        Bau = new BauDeReliquias(); 
        ItensAcampamento = itens;   
    }
}

class Program
{
    static void Main(string[] args)
    {
        List<ItemDeAcampamento> itens = new List<ItemDeAcampamento>()
        {
            new ItemDeAcampamento("Saco de Dormir"),
            new ItemDeAcampamento("Pote de Cozinha")
        };

        Maga frieren = new Maga("Frieren", itens);

        frieren.Bau.GuardarItem(new ReliquiaMagica("Anel de Prata"));
        frieren.Bau.GuardarItem(new ReliquiaMagica("Grimório Antigo"));

        Console.WriteLine("Itens de Acampamento de " + frieren.Nome + ":");
        foreach (var item in frieren.ItensAcampamento)
        {
            Console.WriteLine("- " + item.Nome);
        }

        Console.WriteLine();

        frieren.Bau.ListarReliquias();
    }
}