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

## Notes for Raising Bugs/Issues

1. Please create an issue or discussion with general or detailed questions/issues (never expose confidential things).
2. If you want to share some private/confidential logs, you may send those to my email. Please mention the link to the issue or discussion.

I'm sorry that I prefer to log the issue in the repository because I may lose track if you email the issue directly to my email. I appreciate your cooperation.
