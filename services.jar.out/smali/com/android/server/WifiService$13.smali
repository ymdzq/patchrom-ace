.class Lcom/android/server/WifiService$13;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1086
    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1087
    .local v0, dockState:I
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - dockState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mAutoEnableWifiInDockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z
    invoke-static {v3}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    if-nez v0, :cond_1

    .line 1089
    iget-object v1, p0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mInDockMode:Z
    invoke-static {v1, v5}, Lcom/android/server/WifiService;->access$3602(Lcom/android/server/WifiService;Z)Z

    .line 1090
    iget-object v1, p0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z
    invoke-static {v1}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1091
    iget-object v1, p0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setWifiEnableInDockMode(Z)V
    invoke-static {v1, v5}, Lcom/android/server/WifiService;->access$3700(Lcom/android/server/WifiService;Z)V

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1093
    :cond_1
    if-ne v0, v4, :cond_0

    .line 1094
    iget-object v1, p0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mInDockMode:Z
    invoke-static {v1, v4}, Lcom/android/server/WifiService;->access$3602(Lcom/android/server/WifiService;Z)Z

    .line 1095
    iget-object v1, p0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z
    invoke-static {v1}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setWifiEnableInDockMode(Z)V
    invoke-static {v1, v4}, Lcom/android/server/WifiService;->access$3700(Lcom/android/server/WifiService;Z)V

    goto :goto_0
.end method
