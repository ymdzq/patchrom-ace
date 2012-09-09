.class final Lcom/android/server/HtcPowerSaver$ReduceCPU;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReduceCPU"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "ctx"

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->this$0:Lcom/android/server/HtcPowerSaver;

    .line 1205
    const-string v2, "ReduceCPU"

    const-string v3, "powersaver_reduce_CPU"

    const/4 v4, 0x1

    const-string v5, "sys.psaver.rdcpu"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1206
    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->mContext:Landroid/content/Context;

    .line 1207
    return-void
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 2

    .prologue
    .line 1217
    const-string v0, "HtcPowerSaver"

    const-string v1, "applyPowerSaverSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->this$0:Lcom/android/server/HtcPowerSaver;

    #getter for: Lcom/android/server/HtcPowerSaver;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v0}, Lcom/android/server/HtcPowerSaver;->access$500(Lcom/android/server/HtcPowerSaver;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->enableCpuApDvcs(Z)V

    .line 1220
    const/4 v0, 0x0

    return v0
.end method

.method protected restoreSystemSettings()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1225
    const-string v0, "HtcPowerSaver"

    const-string v1, "restoreSystemSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->this$0:Lcom/android/server/HtcPowerSaver;

    #getter for: Lcom/android/server/HtcPowerSaver;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v0}, Lcom/android/server/HtcPowerSaver;->access$500(Lcom/android/server/HtcPowerSaver;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->enableCpuApDvcs(Z)V

    .line 1228
    return v2
.end method

.method protected saveSystemSettings()I
    .locals 2

    .prologue
    .line 1211
    const-string v0, "HtcPowerSaver"

    const-string v1, "saveSystemSettings: do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    const/4 v0, 0x0

    return v0
.end method
