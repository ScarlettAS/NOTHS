## Implementation of Tests

Due to my level of test automation knowledge. To complete this step I’ve had to spend a big chunk of time learning more about Selenium web driver, Cucumber and Ruby.

As Automation is new to me, I’ve only had time to complete the implementation of the `ExampleProduct_DeliveryInformation.feature` file.

## Setup:

In order to run the feature file, you'll need to install [Cucumber](http://cucumber.io/).

    gem install cucumber

Once this is installed, run the .feature file through cucumber.

    cucumber ./features/ExampleProduct_DeliveryInformation.feature
    
In order to output a report, run cucumber with the feature `pretty`.

    cucumber ./features/ExampleProduct_DeliveryInformation.feature -f pretty -f html -o reports/report.html
    
Open this file in your browser to view the results.