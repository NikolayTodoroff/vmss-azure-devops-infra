namespace VmssAdoInfra.SharedLib;

public static class TagHelper
{
    public static string BuildResourceTag(string environment, string component)
    {
        if (string.IsNullOrWhiteSpace(environment))
            throw new ArgumentException("Environment must not be empty.", nameof(environment));
        if (string.IsNullOrWhiteSpace(component))
            throw new ArgumentException("Component must not be empty.", nameof(component));

        return $"{component.Trim().ToLowerInvariant()}-{environment.Trim().ToLowerInvariant()}";
    }
}