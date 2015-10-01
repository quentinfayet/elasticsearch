# ELASTICSEARCH GAME OF THRONES CLUSTER

This cluster has been created to help the understanding of these articles on ReputationVIP's technical blog :

- [Elasticsearch Is Coming](http://reputationvip.io/elasticsearch-is-coming/)
- [Elasticsearch Always Pays Its Debts](http://reputationvip.io/elasticsearch-always-pays-its-debts/)


## Launch the cluster

To launch the cluster, you'll need Docker and Docker Compose installed.
Docker : [https://www.elastic.co/products/elasticsearch](https://www.elastic.co/products/elasticsearch)
Docker compose : [https://docs.docker.com/compose/](https://docs.docker.com/compose/)

Then, go to the *docker* directory, and launch the following command :

`docker-compose build`

Once the images are built, launch the following command :

`docker-compose up`

## Request to the cluster

The cluster's API is available on **localhost** on port **9200**
