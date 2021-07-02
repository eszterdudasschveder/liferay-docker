# Liferay Portal with Patcher Portlet and MySQL installation in Docker
This directory contains all projects, files, setup needed to create a MySQL and a Portal image and start both using `docker-compose`.

The documentation for the Liferay Docker images is available on the Docker Hub pages of each project:

 - [liferay/commerce](https://hub.docker.com/r/liferay/commerce)
 - [liferay/commerce-enterprise](https://hub.docker.com/r/liferay/commerce-enterprise)
 - [liferay/dxp](https://hub.docker.com/r/liferay/dxp)
 - [liferay/portal](https://hub.docker.com/r/liferay/portal)

## Directory structure in mount_dir directory

Mount_dir contains 3 folders: ant, deploy and patching, which needs to be populated with the followings:
- ant 1.10.7 into the ant directory
- license-portaldevelopment-developer-6.2ga1-liferaycom.xml_ into the deploy folder
- [LPS-117529 6.2.10 SP20 hotfix](https://github.com/liferay/liferay-portal-ee/compare/fix-pack-base-6210-sp20...fix-pack-fix-167310391) into patching folder
- license-portaldevelopment-developer-6.2ga1-liferaycom.xml file in the root mount_dir folder

## Image creation
Run build_unix.sh in bash.
If you want to change Portal version, then put yours in `./liferay_portal/templates/bundle/liferay`, and rebuild the image.

## Run containers
Before running containers, make sure to update `.env` file in this directory.
Patcher is deployed during container startup, if you want to change it simply check out the right version in `liferay-plugins-ee` and restart containers.
If you want to change the content of the DB update SQLs in `./liferay_portal/usr_local_liferay/scripts/pre-startup` and `./mysql`,
then make sure to create a new MySQL container and restart Portal.
Once all set up properly simply run `docker-compose up -d`, after all started up (which might take a couple of minutes), Portal should be accessible on `localhost:8080`.