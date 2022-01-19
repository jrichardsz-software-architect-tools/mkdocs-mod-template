# MkDocs with Login
Markdown Docs with Material Theme.

## For Python developers (without login)

```
pip install -IU -r requirements.txt
mkdocs serve --dev-addr=0.0.0.0:8000
```

Open http://localhost:8000/

## For Docker developers (without login)

```
docker build -f Dockerfile.dev -t mydocs-dev .
docker run --name mydocs-dev -it --rm -p 8000:8000 -v $(pwd):/usr/src/app mydocs-dev
```

## Server deploy with Docker (without login)

```
docker build -f Dockerfile.public -t mydocs .
docker run --name mydocs -it --rm -p 8000:8000 mydocs
```

## Server deploy with Docker + Login

```
docker build -t mydocs .
docker run --name mydocs  -e "USER_admin=secret" -it --rm -p 8000:8000 mydocs
```

- Check [this](https://github.com/jrichardsz-software-architect-tools/nodeboot-web-security-starter#microsoft-login) to add microsoft login to your mkdocs

## Simple deploy with nodejs + Login

Install nodejs >= 12

```
npm install
mkdocs build
```

Add these variables in the formar `USER_name=password` :

```
export USER_jane=changeme
export USER_nasly=supersecret
```

npm run start

# Advanced Settings

- https://squidfunk.github.io/mkdocs-material/getting-started/
- https://squidfunk.github.io/mkdocs-material/setup/setting-up-navigation/#navigation-tabs
- https://github.com/mkdocs/mkdocs/issues/81
- https://github.com/artemv/authenticated-docs

# Contributors

<table>
  <tbody>
    <td>
      <img src="https://avatars0.githubusercontent.com/u/3322836?s=460&v=4" width="100px;"/>
      <br />
      <label><a href="http://jrichardsz.github.io/">JRichardsz</a></label>
      <br />
    </td>    
  </tbody>
</table>
