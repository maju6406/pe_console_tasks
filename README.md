[![Build Status](https://travis-ci.org/maju6406/pe_console_tasks.svg?branch=master)](https://travis-ci.org/maju6406/pe_console_tasks)


# pe_console_tasks

#### Table of Contents

1. [Description](#description)
2. [Requirements](#requirements)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Getting help - Some Helpful commands](#getting-help)

## Description

This module provides the pe_console_tasks task. This task installs a collection of tasks that perform common Puppet Enterprise operations.

## Requirements
This module is compatible with Puppet Enterprise and Puppet Bolt.

* To run tasks with Puppet Enterprise, PE 2017.3 or later must be installed on the machine from which you are running task commands. Machines receiving task requests must be Puppet agents.

* To run tasks with Puppet Bolt, Bolt 0.5 or later must be installed on the machine from which you are running task commands. Machines receiving task requests must have SSH or WinRM services enabled. If using Bolt, the puppet agent must already installed.

## Usage

### Usage

You can also run the Puppet Task from the command line using:

```
puppet task run pe_console_tasks -n master.corp.net
```

Or using bolt:

```
bolt task run pe_console_tasks -n master.corp.net
```
**NOTE** The task can take a few minutes to run.

## Reference

To view the available actions and parameters, on the command line, run `puppet task show pe_console_tasks` or see the pe_console_tasks module page on the [Forge](https://forge.puppet.com/beersy/pe_console_tasks/tasks).

## Getting Help

To display help for the pe_console_tasks task, run `puppet task show pe_console_tasks::run`

To show help for the task CLI, run `puppet task run --help` or `bolt task run --help`

## Limitations
This task can only be targeted to the master node

## Release Notes/Contributors/Etc.
