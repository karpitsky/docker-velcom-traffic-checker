FROM ubuntu:14.04

RUN apt-get update -y && \
    apt-get install -y git python-lxml python-requests && \
    git clone https://github.com/karpitsky/velcom-traffic-checker.git /usr/share/velcom-traffic-checker && \
    touch /var/log/cron.log

CMD echo "* * * * * root python /usr/share/velcom-traffic-checker/runner.py ${NUMBER} ${ISSA_PASSWORD} ${EMAIL} ${MAILGUN_DOMAIN} ${MAILGUN_API} >> /var/log/cron.log 2>&1" > /etc/cron.d/vc && cron && tail -f /var/log/cron.log
