# BuildDotnetPackageAction

This action builds a zipfile in the working directory named `release.zip` of a self-contained `linux-x64` dotnet app.

This action assumes there is a `.sln` file and that the project you want to package is contained in a directory by the projects name.

## Inputs

## `project-name`

**Required** The name of the project being built. i.e (**projectName**.csproj)

## Example usage

```
uses: focusonthefamily/CreateDotnetPackageAction@v1
with:
  project-name: PingOne.AspNetCore.Oidc
```
