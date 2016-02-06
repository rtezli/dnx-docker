# dnx docker

## Intro

[.NET Core](https://dotnet.github.io/about/) is a cross-platform implementation of .NET that is primarily being driven by ASP.NET 5 workloads, but also by the need and desire to have a modern runtime that is modular and whose features and libraries can be cherry picked based on the application’s needs. You can learn more about .NET Core and how and where you can use it in the CoreCLR is open source blog post.

.NET Core consists of the CoreCLR runtime and the CoreFX framework libraries. A set of cross-platform tooling can be found in the .NET CLI. The Roslyn compiler and LLILC compiler are sibling projects that support .NET Core. These projects are active on GitHub. You can participate by creating issues or collaborate on development. The main goal of the project is to create a modular, performant and cross-platform execution environment for modern applications.

## Image

DNX (coreclr-linux-x64, 1.0.0-rc1-update1)

Based on: Debian (Wheezy)

Virtual size: 216.1 MB (102 MB)

Apt packages: procps

## Usage

To bo used as base image for .i.e. ASP.NET Core
