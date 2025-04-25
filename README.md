# Cameek.W3CssJs.Bootstrap

![NuGet](https://img.shields.io/nuget/v/Cameek.W3CssJs.Bootstrap?label=NuGet&logo=nuget)
![.NET](https://img.shields.io/badge/.NET-8.0-blue?logo=dotnet)

**Cameek.W3CssJs.Bootstrap** is a Razor Class Library (RCL) that contains static assets (CSS and JavaScript) for [Bootstrap 5](https://getbootstrap.com/).  
It is intended to be referenced from other Blazor or Razor ASP.NET Core projects to enable easy styling and responsive layout support.

This library supports both Blazor WebAssembly and Blazor Server applications.

---

## ✨ Features

- Includes full Bootstrap 5.3.3 core (minified, maps, and RTL support)
- Includes Grid, Reboot, and Utilities extensions
- Includes JS bundles (standard, ESM, and bundle)
- Ready to use in Blazor WebAssembly or Server via `_content/` static assets
- Includes Bootstrap Icons font support (add separately if needed)

---

## 📦 Installation

Install from NuGet:

```bash
dotnet add package Cameek.W3CssJs.Bootstrap --version 5.3.3
```

Or reference it in your `.csproj`:

```xml
<PackageReference Include="Cameek.W3CssJs.Bootstrap" Version="5.3.3" />
```

---

## 🛠 Usage

In your `index.html` (Blazor WebAssembly) or `_Host.cshtml` (Blazor Server), include:

```html
<link href="_content/Cameek.W3CssJs.Bootstrap/css/bootstrap/bootstrap.min.css" rel="stylesheet" />
<script src="_content/Cameek.W3CssJs.Bootstrap/js/bootstrap/bootstrap.bundle.min.js"></script>
```

You can also use RTL versions or grid/utilities separately:

```html
<link href="_content/Cameek.W3CssJs.Bootstrap/css/bootstrap/bootstrap-grid.min.css" rel="stylesheet" />
<link href="_content/Cameek.W3CssJs.Bootstrap/css/bootstrap/bootstrap-utilities.rtl.min.css" rel="stylesheet" />
```

---

## 📄 License

Licensed under the MIT License. Bootstrap is provided under its original [MIT license](https://github.com/twbs/bootstrap/blob/main/LICENSE).  
See the included `LICENSE-bootstrap.txt` file.

---

## 👤 Author

Created and maintained by [CameekOrg](https://github.com/cameekorg).  
This project is intended for use across internal Cameek solutions.

---

## 📬 Related Projects

- [Cameek.W3CssJs.PrismJs](https://www.nuget.org/packages/Cameek.W3CssJs.PrismJs) – PrismJS packaged for Blazor apps
- [Bootstrap](https://getbootstrap.com/) – Popular front-end open source framework
