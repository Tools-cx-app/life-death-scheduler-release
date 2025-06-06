#!/system/bin/sh
# 请不要硬编码 /magisk/modname/... ; 请使用 $MODDIR/...
# 这将使你的脚本更加兼容，即使Magisk在未来改变了它的挂载点
MODDIR=${0%/*}

until [ -d "$MODDIR" ]; do
	sleep 1
done

RUST_BACKTRACE=1 nohup $MODDIR/CpuSchedulerTweaks >$MODDIR/run.log 2>&1 &
# 这个脚本将以 late_start service 模式执行
# 更多信息请访问 Magisk 主题
