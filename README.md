# Server Observability Platform

A DevOps-focused .NET monitoring application for observing application
health and system performance.

This project is a customized version of an open-source .NET web
application. The work here focuses on local deployment, monitoring,
health checks, containerization, and DevOps-oriented experimentation.

Project Goal

The main goal is to provide a lightweight platform that helps a DevOps
engineer:

Monitor application and system health

View CPU and memory usage

Perform basic health checks

Simulate high CPU usage for monitoring tests

Trigger error scenarios for troubleshooting

Run the application locally

Prepare the application for Docker and Kubernetes deployment

Key Features

System Information

Displays application and runtime information and helps identify the
environment in which the application is running.

Monitoring

Provides real-time CPU load and memory working-set information through
the application's monitoring interface.

Testing Tools

Provides tools for generating high CPU load and testing error/exception
scenarios so that monitoring and troubleshooting workflows can be
demonstrated.

Container & Kubernetes Readiness

The project includes Docker and Kubernetes-related configuration for
experimenting with containerized deployment.

Technology Stack

C# / .NET 6

ASP.NET Core Razor Pages

Bootstrap

Chart.js

Docker

Kubernetes

GitHub Actions

Azure (deployment configuration)

REST APIs

Architecture

User
  |
  v
ASP.NET Core Web Application
  |
  +---- System Information
  |
  +---- Monitoring API
  |        |
  |        +---- CPU metrics
  |        +---- Memory metrics
  |
  +---- Testing Tools
  |        |
  |        +---- CPU load simulation
  |        +---- Error simulation
  |
  +---- Docker / Kubernetes deployment

Local Setup

Requirements

.NET 6 SDK

Git

Docker (optional, for container deployment)

Kubernetes tools (optional, for Kubernetes deployment)

Clone

git clone https://github.com/MopuruRoshini/Server_Observability_Platform.git
cd Server_Observability_Platform

Run the application

Go to the application directory:

cd src

Restore dependencies:

dotnet restore

Build:

dotnet build

Run:

dotnet run

The application runs locally on:

http://localhost:5000

HTTPS is also available through the ASP.NET Core development
configuration.

Monitoring Workflow

The basic monitoring workflow is:

Application
    |
    v
Collect runtime/system information
    |
    v
Monitoring API
    |
    v
CPU & Memory Metrics
    |
    v
Monitoring Dashboard
    |
    v
DevOps Engineer
    |
    +---- Investigate abnormal usage
    +---- Check application behavior
    +---- Perform troubleshooting
    +---- Escalate when required

Example Troubleshooting Scenario

If CPU usage becomes unusually high:

CPU usage increases
        |
        v
Monitoring page shows abnormal usage
        |
        v
DevOps engineer investigates
        |
        v
Check application behavior / logs
        |
        v
Identify the cause
        |
        +---- Fix the issue
        |
        +---- Or escalate with relevant details

This workflow is useful for practicing first-level production monitoring
and troubleshooting.

Docker

The repository contains a Dockerfile for containerizing the application.

After configuring Docker, the application can be built into a container
image and exposed on port 5000.

Example:

docker build -t server-observability-platform .
docker run --rm -p 5000:5000 server-observability-platform

Then open:

http://localhost:5000

Kubernetes

Kubernetes configuration is included for experimenting with deployment
of the application in a container orchestration environment.

The Kubernetes configuration can be used to practice:

Application deployment

Service exposure

Container health

Scaling concepts

Operational monitoring

CI/CD

The repository contains GitHub Actions configuration that can be used to
practice automated build and deployment workflows.

A typical workflow is:

Git Push
   |
   v
GitHub Actions
   |
   v
Build
   |
   v
Test
   |
   v
Container / Deployment

DevOps Use Case

This project demonstrates a practical monitoring and operations
workflow:

Monitor → Detect → Investigate → Troubleshoot → Resolve / Escalate

It is particularly useful for practicing foundational DevOps
responsibilities such as system monitoring, health checks, application
troubleshooting, container deployment, and operational workflows.

Project Repository

GitHub:

https://github.com/MopuruRoshini/Server_Observability_Platform


Current Status

Local .NET application: Working

Build: Successful

Local monitoring interface: Working

Docker configuration: Available

Kubernetes configuration: Available

CI/CD configuration: Available