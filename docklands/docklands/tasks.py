from celery import task
import logging

# Get an instance of a logger
logger = logging.getLogger(__name__)


@task(ignore_result=True)
def ping():
    logger.info('ping!')
