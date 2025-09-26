# dotnet-jypter

A C# Jupyter notebook environment ready for GitHub Codespaces.

## Quick Start

1. **Open in Codespaces**: Click the "Code" button and select "Create codespace on main"
2. **Wait for setup**: The devcontainer will automatically install .NET 8.0, Python, and Jupyter dependencies
3. **Open the notebook**: Open `HelloWorld.ipynb` in VS Code
4. **Run cells**: Execute the C# code cells to see the output

## What's Included

- **devcontainer.json**: Configures the codespace with .NET 8.0 and Jupyter support
- **HelloWorld.ipynb**: Sample C# Jupyter notebook with examples
- **VS Code Extensions**: 
  - C# extension for .NET development
  - Jupyter extension for notebook support
  - .NET Interactive extension for C# in Jupyter

## Features

- ✅ C# code execution in Jupyter cells
- ✅ IntelliSense and syntax highlighting
- ✅ Interactive development environment
- ✅ Pre-configured with .NET 8.0
- ✅ Ready-to-use in GitHub Codespaces

## Example Usage

```csharp
// Simple Hello World
Console.WriteLine("Hello, World from C# Jupyter Notebook!");

// Working with variables and calculations
string name = "Developer";
int result = 10 + 20;
Console.WriteLine($"Hello, {name}! Result: {result}");
```

The notebook includes examples of:
- Basic C# syntax and output
- Variable declarations and string interpolation
- Mathematical calculations
- Working with collections and LINQ