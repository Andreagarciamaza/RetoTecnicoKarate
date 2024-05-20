## Introduction

In this project the most common examples of testing with the Karate framework are applied.
To apply the test cases we will use the test website https://reqres.in/, which provides several endpoints on which you can make GET, PUT, POST and DELETE requests.

## Testing API with Karate framework

Karate is the only open source tool that combines API test automation, mocks, performance testing and even UI automation into a single unified framework. 
The BDD syntax popularized by Cucumber is language-neutral, and easy even for non-programmers. Powerful JSON assertions are built in, and you can run tests in parallel for speed.

## Content

- Prerequisites
- Your favorite IDE, including
- Clone repository
- Execution by terminal

## Prerequisites

The project is developed in Java with Gradle so it will install the following software:
Oracle Java 8 SDK 
Jdk 17 
Gradle 
Git 

## Your favorite IDE, including :
visual studio code: To run features or scenarios tests it will configure:

## Clone repository

In the main branch [master](https://github.com/Andreagarciamaza/RetoTecnicoKarate) you can clone the repository.

## Execution by runner

To run te project from the runner, navigate to the following path: src/test/java/com/api/test/runners/ParallelTest.java and execute it.

## Execution by terminal

To run and generate the live documentation, just run the following line through a terminal in the path where the project is located:

`./gradlew clean test -Dtest=Parallel_Test --info`.

Once executed, you can verify the evidences in the karate path:

`./build/karate-reports/karate-summary.html`

or also in the cucumber path

`./build/cucumber-html-reports/overview-features.html`



