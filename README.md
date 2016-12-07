# Seq in Docker

[Seq](https://getseq.net/) is a great logging platform and I wanted a way to demo it off without having to install it, so to that end I've created a Docker image that runs Seq!

# Usage

```
docker pull aaronpowell/Seq
```

Or you can make the image yourself by cloning this repository and running a `docker build`

# Caviates

- This image uses the Windows Server Core base image (`microsoft/windowsservercore`) is is ~9.3gb in size. If/when Seq can be run on mono or .NET core it could be switched to a different base image
- At present this is intended for demos and not running in production
  - The image is fully self contained so when you kill the container you lose your logs
  - There's no way to provide custom config to Seq
  - You can't provide your license

If you want to fix any of this caviates I'm more than happy to take a Pull Request!
