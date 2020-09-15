# git-demo

An interactive git crash course created by the Aerial Robotics Club at NC
State!

As part of ARC's onboarding procedure, we try to get new members up to speed
with our tech stack as fast as possible, including git. This is the interactive
demo that corresponds to a demo about git basics, such as committing, branches,
and merging.

## Usage

This demo uses [GoTTY](https://github.com/yudai/gotty) to share a Docker
container's tty via the web. Run the following command to start the interactive
component of the demo.

```sh
$ docker build -t git-demo .
$ gotty -w docker run -it --rm git-demo
```

This will make GoTTY start listening on `0.0.0.0:8080`. If you go to your web
browser to `localhost:8080` you should be able to see and interact with an
interactive bash session. People on other machines will have to replace
`localhost` with your machine's IP, but otherwise it should be the same.
