# Documentation

The documentation for the Liferay Docker images is available on the Docker Hub pages of each project:

 - [liferay/commerce](https://hub.docker.com/r/liferay/commerce)
 - [liferay/commerce-enterprise](https://hub.docker.com/r/liferay/commerce-enterprise)
 - [liferay/dxp](https://hub.docker.com/r/liferay/dxp)
 - [liferay/portal](https://hub.docker.com/r/liferay/portal)

# Issue tracking

If you have issues with the Docker Image scripts, please report an [LPS ticket](https://issues.liferay.com/browse/LPS) in Liferay's issue management system with the component `Docker Images`.


# Patcher Container

This section describes how to create a Portal image and deploy Patcher Portlet during container startup.
Image creation does not differ from the usual workflow, use `build_local_image.sh`.
In order to be able to deploy any plugins, liferay-plugins-ee has to be mounted, besides that mount_dir and usr_local_liferay directories have to be mounted as well.
Mount_dir and usr_local_liferay ensures that all files are available required to properly deploy Patcher.
For example start the container:
```
docker run -it -v <path_to/liferay-plugins-ee>:/mnt/liferay-plugins-ee \
               -v <path_to>/liferay-docker/mount_dir:/mnt/liferay \
               -v <path_to>liferay-docker/usr_local_liferay:/usr/local/liferay \
               -p 8080:8080 <docker image>
```
