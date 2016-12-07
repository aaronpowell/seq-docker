# Seq in Docker

[Seq](https://getseq.net/) is a great logging platform and I wanted a way to demo it without having to install it. To that end I've created a Docker image that runs Seq!

# Usage

```
docker pull aaronpowell/Seq
```

Or you can make the image yourself by cloning this repository and running `docker build`

# Caveats

- This image uses the Windows Server Core base image (`microsoft/windowsservercore`) which is ~9.3gb in size. If/when Seq can be run on mono or .NET core it can be switched to a different base image
- At present this is intended for demos and not running in production
  - The image is fully self contained so when you remove the container you'll lose your logs (there's no VOLUME mapping)
  - There's no way to provide a custom config to Seq
  - You can't provide your license

If you want to fix any of this problems I'm more than happy to take a Pull Request!
