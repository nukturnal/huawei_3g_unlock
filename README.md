# Huawei 3G Unlock

A ruby implementation of Huawei 3G modem unlock/flash code generator. Tested on E1550 Models, I am positive it might work on other similar models. Comes also with a commandline tool(huawei3g) to quickly generate codes by specifying modems IMEI number.

## Installation

Add this line to your application's Gemfile:

    gem 'huawei_3g_unlock'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install huawei_3g_unlock

## Gem Usage

Using the gem within your ruby application

	Huawei3gUnlock.generate("IMEI-NUMBER-HERE")
	Huawei3gUnlock.generate("353443043648141")

The gem version returns an array upon successful completion. The first index is the unlock code and the last index is the flash code. The command-line tool

	[66493133,56295728]
	
## Command-line Usage

This gem automatically installs a command-line utility (huawei3g) for quick code generations

	huawei3g IMEI-NUMBER-HERE
	huawei3g 353443043648141

Result will be similar to the results below

	UNLOCK CODE:	66493133
	FLASH CODE:		56295728
	
## Tests

This has been tested on Huawei E1550 Model using ruby 1.8.7. Should work fine on other similar Huawei models

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
