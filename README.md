# Docker-Jupyterlab-Dev

Dockerfile for Jupyterlab 3. It has the custom  settings:

- yapf code formatter
- collapse headings
- xeus-python
- python-language-server
- python's nbdev

## Usage

Create an image by running on the root folder:

```bash
docker build -t jupylab-dev . 
```

## Author

Enrique Jimenez
