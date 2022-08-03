# TO REBUILD USE: docker-compose build --no-cache web
FROM ghcr.io/ba-st/pharo-loader:v10.0.0 AS loader
COPY kobold/install.st ./
RUN pharo Pharo.image install.st --save --quit

FROM ghcr.io/ba-st/pharo:v10.0.0
COPY --from=loader /opt/pharo/Pharo.image ./
COPY --from=loader /opt/pharo/Pharo.changes ./
COPY --from=loader /opt/pharo/Pharo*.sources ./

EXPOSE 8080

COPY kobold/start.st ./
CMD ./pharo Pharo.image start.st --no-quit