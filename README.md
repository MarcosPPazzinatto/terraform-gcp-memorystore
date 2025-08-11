# Terraform GCP Memorystore

This repository contains Terraform configurations to provision and manage **Google Cloud Memorystore** instances.  
It supports both **Redis** and **Memcached** with customizable parameters such as size, region, tier, and network settings.

## Features
- Deploys Redis or Memcached in GCP Memorystore
- Configurable instance size and tier
- Supports custom network and region selection
- Easy integration into existing Terraform projects

## Requirements
- Terraform >= 1.0
- Google Cloud SDK installed and configured
- An active Google Cloud Project with Memorystore API enabled

## Inputs


| Name                 | Description                             | Type     | Default     | Required |
| -------------------- | --------------------------------------- | -------- | ----------- | -------- |
| `name`               | Name of the Memorystore instance        | `string` | n/a         | yes      |
| `tier`               | Service tier (`BASIC` or `STANDARD_HA`) | `string` | `BASIC`     | no       |
| `memory_size_gb`     | Memory size in GB                       | `number` | n/a         | yes      |
| `region`             | GCP region for the instance             | `string` | n/a         | yes      |
| `redis_version`      | Redis version (e.g., `REDIS_6_X`)       | `string` | `REDIS_6_X` | no       |
| `authorized_network` | VPC network to connect the instance     | `string` | n/a         | yes      |

## Outputs

| Name   | Description                  |
| ------ | ---------------------------- |
| `host` | The hostname of the instance |
| `port` | The port number              |


## License

This project is licensed under the MIT License.
