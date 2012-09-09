.class Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method private constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/WifiP2pService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 219
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;-><init>(Landroid/net/wifi/p2p/WifiP2pService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 222
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const-string/jumbo v3, "wifi_state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I
    invoke-static {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$102(Landroid/net/wifi/p2p/WifiP2pService;I)I

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const-string/jumbo v3, "wifi_state"

    const/16 v4, 0xb

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiApState:I
    invoke-static {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$202(Landroid/net/wifi/p2p/WifiP2pService;I)I

    goto :goto_0

    .line 229
    :cond_2
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 231
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v2, v3, :cond_3

    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->mCwRegistered:Z

    if-eqz v2, :cond_3

    .line 232
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    .line 234
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    .end local v1           #i:I
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-result-object v2

    const v3, 0x2300a

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 240
    :cond_4
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    const-string/jumbo v2, "phoneinECMState"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 242
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-result-object v2

    const v3, 0x2300b

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 235
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_2
.end method
