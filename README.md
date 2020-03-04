# Overview
This is an example application that shows how TestBox could be used with FW/1.
It is not intended to be exhaustive or authoritative. Its primary goal is to produce
an example that shows DI/1 dependencies being satisfied in an application as well as
in TestBox.

# Usage
Run these commands to get started:

	box install
	box server start

# Explanation
This is a typical FW/1 application in terms of structure. The main controller makes
use of the `UserService` to retrieve a list of users. The `UserService` uses `SharedService` to sort the list of users before it's returned. While it may seem
silly to architect the application in this way, I wanted to be sure that service
dependencies are handled appropriately with DI/1 when called from TestBox.

To that end, and to ensure that both the main application and TestBox use the same
bean factory, I created a BeanFactory object in `/core`. This object extends the DI/1
component that comes with the framework and configures it when it is instantiated.
Rather than let FW/1 create the bean factory automatically, you will see some code
in `Application.cfc` that creates the bean factory and gives it to FW/1.
