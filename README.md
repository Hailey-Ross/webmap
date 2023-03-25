# FiveM/RedM Web Map

Live web-based map showing the locations of players and other info about the server.  
Created by [Kibook](https://github.com/kibook/) with edits by [Hailey](https://github.com/Hailey-Ross/)  

# Coming Soon

- Password Protection  
- Playerlist should now Scroll  

# Examples

- https://fivem.khzae.net/map/
- https://redm.khzae.net/map/

# Requirements

- [httpmanager](https://github.com/kibook/httpmanager)
- [weathersync](https://github.com/kibook/redm-weathersync)

# Installation

1. Copy to a directory in the `resources` folder of your server.

   Example: `resources/[local]/webmap`

2. Add `start webmap` to `server.cfg`.

3. Access the map at `http://<server IP>:<server port>/webmap/` or `https://<owner>-<server ID>.users.cfx.re/webmap/` (**Note:** The trailing slash is necessary).
   
   Examples:
   - http://redm.khzae.net:30120/webmap/
   - https://kibukj-jqv8ok.users.cfx.re/webmap/
   - http://fivem.khzae.net:30120/webmap/
   - https://kibukj-8l4kjb.users.cfx.re/webmap/

# Hash Generation

After installation of [httpmanager](https://github.com/kibook/httpmanager), you can generate Password Hashes at:  
- http://[server IP]:[server port]/httpmanager/password/  
  
 OR you can use an example server prior to installation of [httpmanager](https://github.com/kibook/httpmanager):  
  
- http://redm.khzae.net:30120/httpmanager/password/  