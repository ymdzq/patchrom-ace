.class Lcom/android/server/ConnectivityService$2;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 6727
    iput-object p1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 6736
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6737
    const-string v4, "cw_ssid_key"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 6738
    .local v2, cw_ssid_key_value:I
    const/4 v0, -0x1

    .line 6739
    .local v0, ctcw_state_change_key:I
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: android.net.wifi.STATE_CHANGE, cw_ssid_key_value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6742
    const/4 v4, 0x1

    if-ne v4, v2, :cond_0

    .line 6743
    const/16 v0, 0xa

    .line 6746
    :cond_0
    if-eq v7, v0, :cond_1

    iget-object v4, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    const-string v5, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    const-string v6, "CWState"

    #calls: Lcom/android/server/ConnectivityService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v4, v5, v6, v0}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6786
    .end local v0           #ctcw_state_change_key:I
    .end local v2           #cw_ssid_key_value:I
    :cond_1
    :goto_0
    return-void

    .line 6748
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6749
    const-string v4, "cw_reg_state"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6750
    .local v1, cw_reg_state_value:I
    const/4 v0, -0x1

    .line 6751
    .restart local v0       #ctcw_state_change_key:I
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED, cw_uw_reg_state_key_value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6756
    const/16 v4, 0x65

    if-ne v4, v1, :cond_4

    .line 6757
    const/16 v0, 0xc

    .line 6762
    :cond_3
    :goto_1
    if-eq v7, v0, :cond_1

    iget-object v4, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    const-string v5, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    const-string v6, "CWState"

    #calls: Lcom/android/server/ConnectivityService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v4, v5, v6, v0}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 6758
    :cond_4
    const/16 v4, 0x66

    if-ne v4, v1, :cond_3

    .line 6759
    const/16 v0, 0xb

    goto :goto_1

    .line 6764
    .end local v0           #ctcw_state_change_key:I
    .end local v1           #cw_reg_state_value:I
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.CW_ANY_DATA_STATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6765
    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6766
    .local v3, state_key_value:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 6768
    const/4 v0, -0x1

    .line 6769
    .restart local v0       #ctcw_state_change_key:I
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: android.intent.action.CW_ANY_DATA_STATE, state_key_value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6774
    const-string v4, "CONNECTED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 6775
    const/16 v0, 0xe

    .line 6780
    :cond_6
    :goto_2
    if-eq v7, v0, :cond_1

    iget-object v4, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    const-string v5, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    const-string v6, "CWState"

    #calls: Lcom/android/server/ConnectivityService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v4, v5, v6, v0}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 6776
    :cond_7
    const-string v4, "CONNECTING"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6777
    const/16 v0, 0xd

    goto :goto_2
.end method
