# grafana

进入容器安装插件

```bash
docker exec -it grafana bash
```

## grafana-worldmap-panel

世界地图插件

```bash
grafana-cli plugins install grafana-worldmap-panel
```

## grafana-piechart-panel

柱状图插件

```bash
grafana-cli plugins install grafana-piechart-panel
```

最后需要退出容器，重启grafana加载插件

```bash
docker restart grafana
```