# BuildDotnetPackageAction

This action builds a zipfile in the working directory named `release.zip` of a self-contained `linux-x64` dotnet app.

## Inputs

## `project-name`

**Required** The name of the project being built. i.e (<<projectName>>.csproj)

## Example usage

  uses: focusonthefamily/CreateDotnetPackageAction@v1\
  with:\
    project-name: PingOne.AspNetCore.Oidc
