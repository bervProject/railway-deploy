# Railway Deploy Github Action

This action deploys your app to Railway using Railway CLI.

## Inputs

| Name            | Required | Description                                                                                      |
|:---------------:|:--------:|:------------------------------------------------------------------------------------------------:|
| `service`       | `true`   | Specify the service to use. Introduced from `0.1.0`.                                             |
| `railway_token` | `false`  | Railway Token to deploy the app.                                                                 |
| `detach`        | `false`  | Allow detaching (not waiting) the deployment process from the pipeline. Introduced from `0.1.2`. |

## Outputs

### `status`

Success/Failure result

## Example usage

### Using with

```yaml
uses: bervProject/railway-deploy@main
with:
  railway_token: ${{ secrets.RAILWAY_TOKEN }}
  service: "my-service"
```

### Using env

```yaml
uses: bervProject/railway-deploy@main
env:
  RAILWAY_TOKEN: ${{ secrets.RAILWAY_TOKEN }}
with:
  service: "my-service"
```

### Detach Mode

```yaml
uses: bervProject/railway-deploy@main
with:
  railway_token: ${{ secrets.RAILWAY_TOKEN }}
  service: "my-service"
  detach: true
```
