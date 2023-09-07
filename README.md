pyth-docker
===========

**Try the updated, hosted version here**:
[https://pyth-docker.azurewebsites.net/](https://pyth-docker.azurewebsites.net/)

See the docs: [https://pyth.readthedocs.org/en/latest/](https://pyth.readthedocs.org/en/latest/)

Pyth is an extremely concise language by isaacg1.
This is a fork of [isaacg1/pyth](https://github.com/isaacg1/pyth) with the goal of providing a docker image running with
an up-to-date Python version (currently 3.11) and dependencies.

## Examples

Some example programs to run:

* Hello world: `"Hello, world!`
* Add two numbers: `+1 1`
* Add two inputs: `+Qvw`
* Check if number is prime: `}QPQ`
* Echo input as output: `z`

Useful links:

* [Esolang entry for Pyth](https://esolangs.org/wiki/Pyth)
* [Tips for golfing in Pyth](https://codegolf.stackexchange.com/questions/40039/tips-for-golfing-in-pyth)
* [Pyth practice](https://codegolf.stackexchange.com/questions/67958/pyth-practice-2)
* [Simple golfing problems](https://gist.github.com/m-ender/61e602f78a247be64ee327a7d119844f)
* [Code golf challenges](https://code.golf/)
* [Code golf challenges on codidact](https://codegolf.codidact.com/)
* [Codeforces problemset](https://codeforces.com/problemset)

## Run the docker image

You can use the pre-built image directly: `docker run -d --name pyth-docker -p 8000:8000 adrianus/pyth-docker`

### Build image

- Build image: `docker build --tag pyth-docker .`
- Run: `docker run -d --name pyth-docker -p 8000:8000 pyth-docker`

After that, open [localhost:8000](http://localhost:8000) in your browser to access it.

## Run locally

You can use Pyth directly from the command line: `python3 pyth.py -c "+1 1"`

You can also run the server + UI directly using Python/Flask, without gunicorn.

- First, install the requirements: `pip3 install -r requirements.txt`
- Start it: `python3 server.py`
- Then, visit [localhost:5000](http://localhost:5000)

### Run tests

To run the test suite: `python3 test.py`
