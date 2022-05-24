# OpenK9 Helm Charts

This repository contains the Helm Charts and other elements that allow you to install OpenK9:

- in a local K3s (this is a lightweight Kubernets installation ideal for a local development environment)
- in a standard Kubernets installed in the Cloud or On-Premises
- in a locally installed OpenShift "CodeReady Containers"
- in a standard OpenShift installed in the Cloud or On-Premises

### OpenK9 pre-requisites

OpenK9 depends on other standard products which are also installed using the helm charts.

In the `00-requirements` folder we find, for each of these products, the yaml files that allow you to adapt them to the chosen scenario.

It is recommended to respect the numerical sequence for installation.

### OpenK9 Core

In the `01-core-charts` folder we find the specific charts of the core elements of OpenK9. They are complete charts.

For each element there is also the `scenarios` folder with the yaml that specialize the chart.

### OpenK9 Parsers

In the `02-parsers` folder we find the charts of parser OpenK9 elements whose installation depends on the specific customer scenario.

For each element there is also the `scenarios` folder with the yaml that specialize the chart.

### OpenK9 Enrichers

In the `03-enrichers` folder we find the charts of enrich OpenK9 elements whose installation depends on the specific customer scenario.

For each element there is also the `scenarios` folder with the yaml that specialize the chart.

### Extras

In the `extras` folder we find generic supporting material. Like, for example, the yaml to define a "star" certificate in a local K3s context.