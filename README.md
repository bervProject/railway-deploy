# Railway Deploy Github Action

This action deploys your app to Railway using Railway CLI.

## Inputs

### `railway_token`

**Optional** Railway Token to deploy the app.

## Outputs

### `status`

Success/Failure result

## Example usage

### Using with

```yaml
uses: bervProject/railway-deploy@main
with:
  railway_token: ${{ secret.RAILWAY_TOKEN }}
```

### Using env

```yaml
uses: bervProject/railway-deploy@main
env:
  RAILWAY_TOKEN: ${{ secret.RAILWAY_TOKEN }}
```
