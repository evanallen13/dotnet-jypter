#!/bin/bash
# Script to test if the C# Jupyter environment is properly set up
# This script can be used to verify the installation after codespace creation

echo "🔍 Testing C# Jupyter Notebook Setup"
echo "====================================="

# Check if .NET is installed
echo -n "✅ Checking .NET installation: "
if command -v dotnet &> /dev/null; then
    dotnet --version
else
    echo "❌ .NET not found"
    exit 1
fi

# Check if dotnet-interactive is installed
echo -n "✅ Checking .NET Interactive: "
if dotnet tool list -g | grep -q "dotnet-interactive"; then
    echo "Installed"
else
    echo "❌ Not installed"
    exit 1
fi

# Check if Jupyter kernel is registered
echo -n "✅ Checking Jupyter C# kernel: "
if jupyter kernelspec list 2>/dev/null | grep -q ".net-csharp"; then
    echo "Registered"
else
    echo "❌ Not registered"
    exit 1
fi

# Check if the sample notebook exists
echo -n "✅ Checking sample notebook: "
if [ -f "HelloWorld.ipynb" ]; then
    echo "Found"
else
    echo "❌ Not found"
    exit 1
fi

echo ""
echo "🎉 All checks passed! Your C# Jupyter environment is ready."
echo ""
echo "To get started:"
echo "1. Open HelloWorld.ipynb in VS Code"
echo "2. Select the .NET (C#) kernel"
echo "3. Run the cells to execute C# code"