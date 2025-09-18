# 3X-UI with traefik

## Fix lacking of 3X-UI config features

1. Install `litecli`
2. Run `./setup-panel.sh`

## 3X-UI Panel Settings

I. General

1. General
   1. URI Path
      1. with slashes`/youradminpath/`

II. Authentication

1. Change it lol

III. Subscription

1. Enable Subscription Service
2. URI Path
   1. with slashes`/yoursubpath/sub/`
3. Reverse Proxy URI
   1. with URI Path (`https://sub.example.com/yoursubpath/sub/`)

IV. Subscription Json (TODO why does it needed?)

1. URI Path
   1. with slashes`/yoursubpath/json/`
2. Reverse Proxy URI
   1. with URI Path (`https://sub.example.com/yoursubpath/json/`)

## 3X-UI Xray Configs

I. Basics

1. Basic Routing
   <!-- 1. BitTorrent -->
   1. Block IPs
      1. -Private IPs
      2. Ads All
   2. Direct IPs
      1. -Private IPs
   3. Ipv4 Routing
      1. Google
2. Log > Access Log > ./access.log
   1. !FOR IP LIMITING
3. Enable WARP

II. Routing Rules

1. `geoip:ru` and `geosite:category-gov-ru` change Outbound to warp proxy instead of direct
   1. `geosite:category-gov-ru regexp:.*\.ru$ regexp:.*\.рф$`
   2. direct dont work in vless?

## TODO

- rootless 3x-ui
- more docs
- Inbound
  - Remark: name
  - Protocol: vless
  - Port: 443
  - Proxy Protocol
  - Security: REALITY
    - uTLS: chrome
    - Dest (Target)
    - SNI
    - Get New Cert
  - Peer: Flow: xtls-rprx-vision
- ufw
  - `sudo ufw status numbered`
  - `sudo ufw allow 12345`
    - `sudo ufw allow 51820/udp`
    - `sudo ufw delete NUM`
    - `sudo ufw allow http`
    - `sudo ufw allow https`
  - `sudo ufw reload`
