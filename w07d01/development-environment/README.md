# devEnvironment
This is test evironment that allow us to set up a quick virtual machine using some of DevOps tools.


## Summary of set up
* Configuration
* Dependencies
* Database configuration
* How to run tests
* Deployment instructions


#Configuration 
1. First download the vagrant from the link --> [Vagrant](http://https://www.vagrantup.com/)
2. Download the Virtual box from a official link --> [Virtualbox](https://www.virtualbox.org/)
3. After install the software that are need for this test environment
4. we need some command line configuration:

#### command-line interface configurations
>> * vagrant init
>> This will create vagrant environment and a file named vagrantfile open in your text-editor.
>> * Open "vagrantfile".
>> * Specify the OS that is going to be used in the vagrant box,
>> you can do it going to the page [Atlas](http://https://atlas.hashicorp.com/boxes/search?vagrantcloud=1)  and choose the OS, puttig the name of the operating system inside double coutes.
>> ```  config.vm.box = "ubuntu/trusty64"```.

>> * Then another line of code is needed to have a ip address setup for this environmrnt test lab.
>>  ```config.vm.network "private_network", ip: "192.168.10.100"```

>> * The we use a DNS inside the machine to name it using 'alias' and give it a name instead of type the ip address we can remember it as "development.local/".
>> The line of code bellow will solve the problem of remembert the ip address.
>>  ``` config.hostsupdater.aliases = ["develoment.local"]```.
>> 
>>##### The complete code should look like this now:

>>``` 
>> Vagrant.configure("2") do |config|
>> 
>>  config.vm.box = "ubuntu/trusty64"
>>  config.vm.network "private_network", ip: "192.168.10.100"
>>  config.hostsupdater.aliases = ["develoment.local"]
>>
>>end 
>>```

### These lines of code bellow is also needed as every time the virtual machine is up some plugins are required.

``` 
required_plugins = %w( vagrant-hostsupdater )
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin};vagrant #{ARGV.join(" ")}" unless Vagrant.has_plugin? plugin || ARGV[0] == 'plugin'
end
```


## Run tests with vagrant
>> To create a virtual machine with all the configuration passed, type:

>>``` vagrant up ```


>> This will SSH into a running Vagrant machine and give you access to a shell:

>> ``` vagrant ssh ```
>> ### The vistual machine with the OS chose will be running now...






