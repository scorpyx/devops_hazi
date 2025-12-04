# Előfeltételek

- Ubuntu vagy WSL
- Docker engine
- Python build csomag

## WSL telepitése

Források:
- https://learn.microsoft.com/en-us/windows/wsl/install

Lépések:
- Nyiss meg egy CMD-t vagy PowerShell-t rendszergazdaként és futtasd le a következőt: "wsl --install" (engedélyezni fogja a WSL-t)
- Inditsd újra a gépet
- Nyiss meg egy CMD-t vagy PowerShell-t rendszergazdaként és futtasd le újra a "wsl --install" parancsot (telepit egy Ubuntut)
- Adj meg felhasználónevet és jelszót az Ubuntu-nak

## WSL használata

Nyisd meg a WSL-t: Nyiss meg egy CMD-t vagy PowerShell-t rendszergazdaként és futtasd le a következőt: "wsl"

## Docker telepitése

Források:
- https://docs.docker.com/engine/install/ubuntu/#install-using-the-convenience-script
- https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user

Lépések:

- Futtasd le ezeket a parancsokat:

  curl -fsSL https://get.docker.com -o get-docker.sh

  sudo sh get-docker.sh

  sudo usermod -aG docker $USER

  newgrp docker

## Python build csomag telepitése:
Források:
- https://packaging.python.org/en/latest/tutorials/packaging-projects/

Lépések:
- Futtasd le a következő parancsot:

  sudo apt install python3-build

# Build

Lépések:
- Futtasd le a következő parancsot a projekt gyökér könyvtárában:

  python3 -m build

# Docker image buildelése
docker image build -t scopryx/hello:v1 . 

# Docker image futtatása
docker run -p 8000:8000 scopryx/hello:v1
# DockerHub
Minden release-ből egy docker image a scorpyx/devops_hazi repository-ba kerül feltöltésre.
DockerHub URL: https://hub.docker.com/r/scorpyx/devop_hazi

A docker image lehúzása a következő paranccsal lehetséges:

docker pull scorpyx/devops_hazi:v1

A docker image futtatása a következő paranccsal lehetséges:

docker run scorpyx/devops_hazi:v1
