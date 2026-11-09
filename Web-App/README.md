# Whats-In-Season: Web App

Shows which fruit and vegetables are in season where you live. Seasons are calculated from 30 years of ERA5 weather and a record for each crop in `data/produce/`, then checked against published seasonal charts. Vite and React.

## Requirements

- Conda

## Setup

```bash
make setup
```

## Run

```bash
make run
```

Opens on http://localhost:5173, or the next free port, which it prints.

## Test

```bash
conda run -n whats-in-season-web-app pnpm test
conda run -n whats-in-season-web-app pnpm typecheck
conda run -n whats-in-season-web-app pnpm validate
```

## Deploy

**Where it runs:** Static files on a DigitalOcean droplet in `/var/www/whats-in-season.kohjakob.com`, served by nginx. Server config is in `deploy/nginx/`.

**Needs:** SSH access as `root`. The default host is set in `scripts/deploy.sh`; `DEPLOY_HOST` overrides it.

```bash
make deploy
```

To also install the nginx sites: `conda run -n whats-in-season-web-app scripts/deploy.sh --nginx`.
