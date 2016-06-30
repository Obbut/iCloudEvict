# UPDATE: iCloud Control

I have created a small finder extension that provides the same functionaltiy, but is easier to use: https://github.com/Obbut/iCloud-Control

# iCloudEvict
This code (more a proof of concept than an actual app) instructs the system to download or evict files from iCloud. I use it with an Automator workflow (which I may or may not add later) as a system service; that way you can secondary click a file in iCloud Drive and choose 'Evict' or 'Download'.

Make sure the evict file is executable and that you have the Swift command line tools installed. Then just run the thing from a terminal (`./evict evict <blah blah long path that you should drop from the finder`) and you should be good to go.

## Usage

To evict (stop from downloading) a file:

`./evict evict /full/path/to/file`

To download an evicted file:

`./evict download /full/path/to/file`

To publish a file and get a HTTP URL:

`./evict publish /full/path/to/file`
