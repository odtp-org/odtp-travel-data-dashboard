# odtp-travel-data-dashboard

This is a dashboard to visualize output from matsim. 

| Tool Info | Links |
| --- | --- |
| Original Tool | [https://github.com/zuocsfm/OD_data_dashboard](https://github.com/zuocsfm/OD_data_dashboard) |
| Current Tool Version | [089801bbaa7cf6fcd565d2975xc6702d41947993e](https://github.com/zuocsfm/OD_data_dashboard/commit/089801bbaa7cf6fcd565d2975xc6702d41947993e) |


## ODTP command 

```odtp new component 
odtp new odtp-component-entry \
--name odtp-travel-data-dashboard \
--component-version 0.1.1 \
--repository https://github.com/odtp-org/odtp-travel-data-dashboard
``` 

## How to run this tool 

1. Build the dockerfile.

```
docker build -t odtp-travel-data-dashboard .
```

2. Run the following command.

```
docker run -it --rm -p 8501:8501 odtp-travel-data-dashboard
```

## Changelog

- v0.1.1
    - New tool repository
    - Dockerfile bug fixed

- v0.1.0
    - Basic functionality. 
    - Loading of single `origin-destination.csv`

## Development

Develop by CSFM/SDSC
