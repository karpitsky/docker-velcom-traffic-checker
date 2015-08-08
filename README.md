 create mode 100644 Dockerfile
# Velcom Traffic Checker in docker

## Usage

YOUR_PHONE_NUMBER - 375296543210

YOUR_ISSA_PASSWORD - #141\*0#

YOUR_EMAIL_ADDRESS - example@example.org

YOUR_MAILGUN_DOMAIN - sandbox\*\*\*\*\*.mailgun.org

YOUR_MAILGUN_API_KEY = key-\*\*\*\*\* 

Just run the image:

```
docker run -d --restart=always \
  -e "NUMBER=YOUR_PHONE_NUMBER" \
  -e "ISSA_PASSWORD=YOUR_ISSA_PASSWORD" \
  -e "EMAIL=YOUR_EMAIL_ADDRESS" \
  -e "MAILGUN_DOMAIN=YOUR_MAILGUN_DOMAIN" \
  -e "MAILGUN_API=YOUR_MAILGUN_API_KEY" \
  karpitsky/docker-velcom-traffic-checker

