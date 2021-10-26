#!/bin/bash
usage = "\
install                                     安装/更新依赖\n\
devPCClient                                 启动client\n\
buildPCClient                               client打包\n\

# step print
define printStep
@echo "\033[1;33mPC-SHARED:\033[0m $1"
endef

# Must be the first target!
default:
	@echo $(usage)

# 安装所有依赖
install:
  yarn && cd packages/pc-frontend && yarn
# 启动单个应用
devPCClient:
	cd packages/pc-frontend && yarn start $(dev_args)

# 打包
buildPCClient:
	cd main && yarn build $(dev_args)
