.class Lcom/android/server/BtDockObserver$1;
.super Landroid/os/Handler;
.source "BtDockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BtDockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BtDockObserver;


# direct methods
.method constructor <init>(Lcom/android/server/BtDockObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/server/BtDockObserver$1;->this$0:Lcom/android/server/BtDockObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 132
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 134
    :pswitch_0
    monitor-enter p0

    .line 135
    :try_start_0
    invoke-static {}, Lcom/android/server/BtDockObserver;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BtDock state changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BtDockObserver$1;->this$0:Lcom/android/server/BtDockObserver;

    #getter for: Lcom/android/server/BtDockObserver;->mBtDockState:I
    invoke-static {v9}, Lcom/android/server/BtDockObserver;->access$100(Lcom/android/server/BtDockObserver;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v7, p0, Lcom/android/server/BtDockObserver$1;->this$0:Lcom/android/server/BtDockObserver;

    #getter for: Lcom/android/server/BtDockObserver;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/BtDockObserver;->access$200(Lcom/android/server/BtDockObserver;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 139
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v7, "device_provisioned"

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_0

    .line 141
    invoke-static {}, Lcom/android/server/BtDockObserver;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Device not provisioned, skipping btdock broadcast"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    monitor-exit p0

    goto :goto_0

    .line 191
    .end local v1           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 145
    .restart local v1       #cr:Landroid/content/ContentResolver;
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v2, intent:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    const-string v7, "android.intent.extra.DOCK_STATE"

    iget-object v8, p0, Lcom/android/server/BtDockObserver$1;->this$0:Lcom/android/server/BtDockObserver;

    #getter for: Lcom/android/server/BtDockObserver;->mBtDockState:I
    invoke-static {v8}, Lcom/android/server/BtDockObserver;->access$100(Lcom/android/server/BtDockObserver;)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    invoke-static {}, Landroid/server/BluetoothService;->readDockBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 152
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 157
    :cond_1
    const-string v7, "dock_sounds_enabled"

    const/4 v8, 0x1

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_3

    .line 160
    const/4 v6, 0x0

    .line 161
    .local v6, whichSound:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/BtDockObserver$1;->this$0:Lcom/android/server/BtDockObserver;

    #getter for: Lcom/android/server/BtDockObserver;->mBtDockState:I
    invoke-static {v7}, Lcom/android/server/BtDockObserver;->access$100(Lcom/android/server/BtDockObserver;)I

    move-result v7

    if-nez v7, :cond_5

    .line 162
    iget-object v7, p0, Lcom/android/server/BtDockObserver$1;->this$0:Lcom/android/server/BtDockObserver;

    #getter for: Lcom/android/server/BtDockObserver;->mPreviousBtDockState:I
    invoke-static {v7}, Lcom/android/server/BtDockObserver;->access$300(Lcom/android/server/BtDockObserver;)I

    move-result v7

    if-ne v7, v10, :cond_4

    .line 163
    const-string v6, "desk_undock_sound"

    .line 175
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 176
    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, soundPath:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 179
    .local v5, soundUri:Landroid/net/Uri;
    if-eqz v5, :cond_3

    .line 180
    iget-object v7, p0, Lcom/android/server/BtDockObserver$1;->this$0:Lcom/android/server/BtDockObserver;

    #getter for: Lcom/android/server/BtDockObserver;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/BtDockObserver;->access$200(Lcom/android/server/BtDockObserver;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 181
    .local v3, sfx:Landroid/media/Ringtone;
    if-eqz v3, :cond_3

    .line 182
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 183
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    .line 190
    .end local v3           #sfx:Landroid/media/Ringtone;
    .end local v4           #soundPath:Ljava/lang/String;
    .end local v5           #soundUri:Landroid/net/Uri;
    .end local v6           #whichSound:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/server/BtDockObserver$1;->this$0:Lcom/android/server/BtDockObserver;

    #getter for: Lcom/android/server/BtDockObserver;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/BtDockObserver;->access$200(Lcom/android/server/BtDockObserver;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 191
    monitor-exit p0

    goto/16 :goto_0

    .line 164
    .restart local v6       #whichSound:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/server/BtDockObserver$1;->this$0:Lcom/android/server/BtDockObserver;

    #getter for: Lcom/android/server/BtDockObserver;->mPreviousBtDockState:I
    invoke-static {v7}, Lcom/android/server/BtDockObserver;->access$300(Lcom/android/server/BtDockObserver;)I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 165
    const-string v6, "car_undock_sound"

    goto :goto_1

    .line 168
    :cond_5
    iget-object v7, p0, Lcom/android/server/BtDockObserver$1;->this$0:Lcom/android/server/BtDockObserver;

    #getter for: Lcom/android/server/BtDockObserver;->mBtDockState:I
    invoke-static {v7}, Lcom/android/server/BtDockObserver;->access$100(Lcom/android/server/BtDockObserver;)I

    move-result v7

    if-ne v7, v10, :cond_6

    .line 169
    const-string v6, "desk_dock_sound"

    goto :goto_1

    .line 170
    :cond_6
    iget-object v7, p0, Lcom/android/server/BtDockObserver$1;->this$0:Lcom/android/server/BtDockObserver;

    #getter for: Lcom/android/server/BtDockObserver;->mBtDockState:I
    invoke-static {v7}, Lcom/android/server/BtDockObserver;->access$100(Lcom/android/server/BtDockObserver;)I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 171
    const-string v6, "car_dock_sound"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
