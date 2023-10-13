<a href="https://metaphor.io"><img src="./logo.png" width="300" /></a>

# Metaphor Connectors GitHub Action
A [GitHub Action](https://docs.github.com/en/actions) for running [Metaphor Connectors](https://github.com/MetaphorData/connectors) to extract and publish metadata to [Metaphor](https://metaphor.io).

# Usage

Add the following to the [GitHub Workflow](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions) in your GitHub repository.

```yaml
- uses: MetaphorData/connectors-action@v0.13
  env:
    # The AWS credentials & region to use when uploading files to S3 
    AWS_ACCESS_KEY_ID: ''
    AWS_SECRET_ACCESS_KEY: ''
    AWS_DEFAULT_REGION: ''
    
  with:
    # The type of connector to run, e.g. bigquery, snowflake, etc.
    type: ''

    # YAML config file for the connector
    config: ''

    # (Optional) Set or override the output S3 path, in the form of s3://<bucket>/<directory>
    s3-path: ''
```

## Secrets

To avoid putting passwords or secrets directly in the config file, you can specify them using environment variables in the form of `${ENV_VAR_NAME}` like this:

```yaml
# Example Config file
client_id: ${CLIENT_ID}
client_secret: ${CLIENT_SECRET}
```

Then you set the enviornment variables using the encrypted values stored in in [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets) in the GitHub workflow job:

```yaml
- uses: MetaphorData/connectors-action@v0.13
  env:
    # The AWS credentials & region to use when uploading files to S3 
    CLIENT_ID: ${{ secrets.client_id }}
    CLIENT_SECRET: ${{ secrets.client_secret }}
```

# License

The scripts and documentation in this project are released under the [Apache V2 License](./LICENSE).
