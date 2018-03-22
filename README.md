## BDD Feature File(s) for User Stories

All feature files for the user stories can be found in the "features" directory.

## Implementation of Tests

Due to my level of test automation knowledge. To complete this step, I’ve spent a big chunk of time learning more about Selenium WebDriver, Cucumber and Ruby.

As Automation is new to me, I’ve only had time to complete the implementation of the `ExampleProduct_DeliveryInformation.feature` file.


## Setup:

In order to run the feature file, you'll need to install [Cucumber](http://cucumber.io/) for Ruby.

    gem install cucumber
    
In addition, you'll need to install the Selenium WebDriver

    gem install selenium-webdriver
    
And finally, you'll need to install the [ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/) and place it into the `/usr/local/bin` directory.

Once this is completed, run the .feature file through cucumber.

    cucumber ./features/ExampleProduct_DeliveryInformation.feature
    
In order to output a report, run cucumber with the feature `pretty`.

    cucumber ./features/ExampleProduct_DeliveryInformation.feature -f pretty -f html -o reports/report.html
    
Open this file in your browser to view the results.