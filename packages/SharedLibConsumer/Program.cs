namespace VmssAdoInfra.SharedLib;

class Program
{
    static void Main()
    {
        var tag = TagHelper.BuildResourceTag("dev", "vnet");
        Console.WriteLine($"Resolved tag from restored package: {tag}");
    }
}