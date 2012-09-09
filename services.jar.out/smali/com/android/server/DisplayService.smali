.class public Lcom/android/server/DisplayService;
.super Landroid/os/IDisplayService$Stub;
.source "DisplayService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayService"


# instance fields
.field public final HDMICableConnectedEvent:Ljava/lang/String;

.field public final HDMICableDisconnectedEvent:Ljava/lang/String;

.field public final HDMIOFFEvent:Ljava/lang/String;

.field public final HDMIONEvent:Ljava/lang/String;

.field final m1280x720p50_16_9:I

.field final m1280x720p60_16_9:I

.field final m1440x480i60_16_9:I

.field final m1440x480i60_4_3:I

.field final m1440x576i50_16_9:I

.field final m1440x576i50_4_3:I

.field final m1920x1080i60_16_9:I

.field final m1920x1080p24_16_9:I

.field final m1920x1080p25_16_9:I

.field final m1920x1080p30_16_9:I

.field final m1920x1080p50_16_9:I

.field final m1920x1080p60_16_9:I

.field final m640x480p60_4_3:I

.field final m720x480p60_16_9:I

.field final m720x480p60_4_3:I

.field final m720x576p50_16_9:I

.field final m720x576p50_4_3:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHDMIModes:[I

.field private mHDMIUserOption:Z

.field private mListener:Lcom/android/server/DisplayListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 130
    invoke-direct {p0}, Landroid/os/IDisplayService$Stub;-><init>()V

    .line 57
    iput-boolean v6, p0, Lcom/android/server/DisplayService;->mHDMIUserOption:Z

    .line 59
    const-string v1, "HDMI_CABLE_CONNECTED"

    iput-object v1, p0, Lcom/android/server/DisplayService;->HDMICableConnectedEvent:Ljava/lang/String;

    .line 60
    const-string v1, "HDMI_CABLE_DISCONNECTED"

    iput-object v1, p0, Lcom/android/server/DisplayService;->HDMICableDisconnectedEvent:Ljava/lang/String;

    .line 61
    const-string v1, "HDMI_CONNECTED"

    iput-object v1, p0, Lcom/android/server/DisplayService;->HDMIONEvent:Ljava/lang/String;

    .line 62
    const-string v1, "HDMI_DISCONNECTED"

    iput-object v1, p0, Lcom/android/server/DisplayService;->HDMIOFFEvent:Ljava/lang/String;

    .line 64
    iput v6, p0, Lcom/android/server/DisplayService;->m640x480p60_4_3:I

    .line 65
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/DisplayService;->m720x480p60_4_3:I

    .line 66
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/DisplayService;->m720x480p60_16_9:I

    .line 67
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/DisplayService;->m1280x720p60_16_9:I

    .line 68
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/DisplayService;->m1920x1080i60_16_9:I

    .line 69
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/server/DisplayService;->m1440x480i60_4_3:I

    .line 70
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/DisplayService;->m1440x480i60_16_9:I

    .line 71
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/server/DisplayService;->m1920x1080p60_16_9:I

    .line 72
    const/16 v1, 0x11

    iput v1, p0, Lcom/android/server/DisplayService;->m720x576p50_4_3:I

    .line 73
    const/16 v1, 0x12

    iput v1, p0, Lcom/android/server/DisplayService;->m720x576p50_16_9:I

    .line 74
    const/16 v1, 0x13

    iput v1, p0, Lcom/android/server/DisplayService;->m1280x720p50_16_9:I

    .line 75
    const/16 v1, 0x15

    iput v1, p0, Lcom/android/server/DisplayService;->m1440x576i50_4_3:I

    .line 76
    const/16 v1, 0x16

    iput v1, p0, Lcom/android/server/DisplayService;->m1440x576i50_16_9:I

    .line 77
    const/16 v1, 0x1f

    iput v1, p0, Lcom/android/server/DisplayService;->m1920x1080p50_16_9:I

    .line 78
    const/16 v1, 0x20

    iput v1, p0, Lcom/android/server/DisplayService;->m1920x1080p24_16_9:I

    .line 79
    const/16 v1, 0x21

    iput v1, p0, Lcom/android/server/DisplayService;->m1920x1080p25_16_9:I

    .line 80
    const/16 v1, 0x22

    iput v1, p0, Lcom/android/server/DisplayService;->m1920x1080p30_16_9:I

    .line 149
    new-instance v1, Lcom/android/server/DisplayService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DisplayService$1;-><init>(Lcom/android/server/DisplayService;)V

    iput-object v1, p0, Lcom/android/server/DisplayService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    iput-object p1, p0, Lcom/android/server/DisplayService;->mContext:Landroid/content/Context;

    .line 135
    iget-object v1, p0, Lcom/android/server/DisplayService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DisplayService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/android/server/DisplayService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DisplayService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.htcpowersaver.action.ON"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/android/server/DisplayService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DisplayService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.htcpowersaver.action.OFF"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 141
    new-instance v1, Lcom/android/server/DisplayListener;

    invoke-direct {v1, p0}, Lcom/android/server/DisplayListener;-><init>(Lcom/android/server/DisplayService;)V

    iput-object v1, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    .line 142
    iget-object v1, p0, Lcom/android/server/DisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HDMI_USEROPTION"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, hdmiUserOption:Ljava/lang/String;
    iput-boolean v6, p0, Lcom/android/server/DisplayService;->mHDMIUserOption:Z

    .line 145
    if-eqz v0, :cond_0

    const-string v1, "HDMI_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iput-boolean v6, p0, Lcom/android/server/DisplayService;->mHDMIUserOption:Z

    .line 147
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DisplayService;)Lcom/android/server/DisplayListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/DisplayService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/DisplayService;->setAdjustFPS(I)V

    return-void
.end method

.method private setAdjustFPS(I)V
    .locals 6
    .parameter "fps"

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, out:Ljava/io/OutputStream;
    const-string v3, "DisplayService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAdjustFPS("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/graphics/fb0/ratelimit"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1           #out:Ljava/io/OutputStream;
    .local v2, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 178
    if-eqz v2, :cond_0

    .line 179
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v1, v2

    .line 183
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/io/IOException;
    :goto_1
    const-string v3, "DisplayService"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method public Get3DMode()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    invoke-virtual {v0}, Lcom/android/server/DisplayListener;->Get3DMode()I

    move-result v0

    goto :goto_0
.end method

.method public IsHDMIConnected()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 198
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    invoke-virtual {v0}, Lcom/android/server/DisplayListener;->IsHDMIConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public IsHDMIEnable()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    invoke-virtual {v0}, Lcom/android/server/DisplayListener;->IsHDMIEnable()Z

    move-result v0

    goto :goto_0
.end method

.method public broadcastEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "eventName"

    .prologue
    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/DisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 274
    const-string v1, "DisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting ... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method public broadcastEvent(Ljava/lang/String;[I)V
    .locals 4
    .parameter "eventName"
    .parameter "modes"

    .prologue
    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v1, "EDID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 281
    iget-object v1, p0, Lcom/android/server/DisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 282
    const-string v1, "DisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting ... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", modes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method public clearBitmapOnHDMI(Ljava/lang/String;)I
    .locals 2
    .parameter "appname"

    .prologue
    .line 246
    const/4 v0, 0x1

    .line 247
    .local v0, ret:I
    iget-object v1, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    invoke-virtual {v1, p1}, Lcom/android/server/DisplayListener;->clearBitmapOnHDMI(Ljava/lang/String;)I

    move-result v0

    .line 250
    :cond_0
    return v0
.end method

.method getBestMode()I
    .locals 7

    .prologue
    .line 119
    const/4 v2, 0x0

    .local v2, bestOrder:I
    const/4 v1, 0x1

    .line 120
    .local v1, bestMode:I
    iget-object v0, p0, Lcom/android/server/DisplayService;->mHDMIModes:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v5, v0, v3

    .line 121
    .local v5, mode:I
    invoke-virtual {p0, v5}, Lcom/android/server/DisplayService;->getModeOrder(I)I

    move-result v6

    .line 122
    .local v6, order:I
    if-le v6, v2, :cond_0

    .line 123
    move v2, v6

    .line 124
    move v1, v5

    .line 120
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .end local v5           #mode:I
    .end local v6           #order:I
    :cond_1
    return v1
.end method

.method public getHDMIUserOption()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/server/DisplayService;->mHDMIUserOption:Z

    return v0
.end method

.method getModeOrder(I)I
    .locals 1
    .parameter "mode"

    .prologue
    .line 84
    packed-switch p1, :pswitch_data_0

    .line 88
    :pswitch_0
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    .line 91
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 93
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 96
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 99
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 101
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 104
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 106
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 108
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 110
    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    .line 113
    :pswitch_a
    const/16 v0, 0xb

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getTVMode()I
    .locals 2

    .prologue
    .line 322
    const/4 v0, 0x1

    .line 323
    .local v0, nRet:I
    iget-object v1, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    invoke-virtual {v1}, Lcom/android/server/DisplayListener;->getTVMode()I

    move-result v0

    .line 326
    :cond_0
    return v0
.end method

.method public notifyHDMIConnected([I)V
    .locals 4
    .parameter "modes"

    .prologue
    .line 286
    const-string v0, "NULL"

    .line 287
    .local v0, appname:Ljava/lang/String;
    iput-object p1, p0, Lcom/android/server/DisplayService;->mHDMIModes:[I

    .line 288
    const-string v2, "HDMI_CABLE_CONNECTED"

    invoke-virtual {p0, v2}, Lcom/android/server/DisplayService;->broadcastEvent(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/server/DisplayService;->getHDMIUserOption()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    const-string v2, "DisplayService"

    const-string v3, "notifyHDMIConnected ... Broadcasting On"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Lcom/android/server/DisplayService;->getBestMode()I

    move-result v1

    .line 292
    .local v1, mode:I
    iget-object v2, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    invoke-virtual {v2, v1}, Lcom/android/server/DisplayListener;->changeDisplayMode(I)V

    .line 293
    iget-object v2, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/android/server/DisplayListener;->enableHDMIOutput(ZLjava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    invoke-virtual {v2}, Lcom/android/server/DisplayListener;->detectTVMode()I

    .line 300
    .end local v1           #mode:I
    :cond_0
    return-void
.end method

.method public notifyHDMIDisconnected()V
    .locals 3

    .prologue
    .line 303
    const-string v0, "NULL"

    .line 304
    .local v0, appname:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/DisplayService;->mHDMIModes:[I

    .line 305
    const-string v1, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {p0, v1}, Lcom/android/server/DisplayService;->broadcastEvent(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/server/DisplayService;->getHDMIUserOption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    const-string v1, "DisplayService"

    const-string v2, "notifyHDMIDisconnected ... Broadcasting Off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v1, "HDMI_DISCONNECTED"

    invoke-virtual {p0, v1}, Lcom/android/server/DisplayService;->broadcastEvent(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/DisplayListener;->enableHDMIOutput(ZLjava/lang/String;)V

    .line 311
    :cond_0
    return-void
.end method

.method public notifyHDMIHDCPAuthenticated()V
    .locals 2

    .prologue
    .line 346
    const-string v0, "DisplayService"

    const-string v1, "notifyHDMIHDCPAuthenticated ... "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0}, Lcom/android/server/DisplayService;->getHDMIUserOption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const-string v0, "DisplayService"

    const-string v1, "notifyHDMIHDCPAuthenticated ...  Broadcast HDMI ON for Audio "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v0, "HDMI_CONNECTED"

    iget-object v1, p0, Lcom/android/server/DisplayService;->mHDMIModes:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DisplayService;->broadcastEvent(Ljava/lang/String;[I)V

    .line 351
    :cond_0
    return-void
.end method

.method public notifyHDMIHDCPDeauthenticated()V
    .locals 2

    .prologue
    .line 354
    const-string v0, "DisplayService"

    const-string v1, "notifyHDMIHDCPDeauthenticated ... "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p0}, Lcom/android/server/DisplayService;->getHDMIUserOption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const-string v0, "DisplayService"

    const-string v1, "notifyHDMIHDCPDeauthenticated ...  Broadcast HDMI OFF for Audio "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v0, "HDMI_DISCONNECTED"

    invoke-virtual {p0, v0}, Lcom/android/server/DisplayService;->broadcastEvent(Ljava/lang/String;)V

    .line 359
    :cond_0
    return-void
.end method

.method public set3DMode(ILjava/lang/String;)I
    .locals 2
    .parameter "Mode3D"
    .parameter "appname"

    .prologue
    .line 254
    const/4 v0, 0x1

    .line 255
    .local v0, nRet:I
    iget-object v1, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/DisplayListener;->set3DMode(ILjava/lang/String;)I

    move-result v0

    .line 258
    :cond_0
    return v0
.end method

.method public setHDMI(ZLjava/lang/String;)I
    .locals 5
    .parameter "enableHDMI"
    .parameter "appname"

    .prologue
    .line 210
    const/4 v1, 0x1

    .line 211
    .local v1, nRet:I
    iput-boolean p1, p0, Lcom/android/server/DisplayService;->mHDMIUserOption:Z

    .line 212
    const-string v3, "DisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHDMI "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v2, p0, Lcom/android/server/DisplayService;->mHDMIUserOption:Z

    if-eqz v2, :cond_1

    const-string v2, "On"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "by "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v2, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    if-eqz v2, :cond_0

    .line 215
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/DisplayService;->IsHDMIConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    const-string v2, "HDMI_CONNECTED"

    iget-object v3, p0, Lcom/android/server/DisplayService;->mHDMIModes:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/DisplayService;->broadcastEvent(Ljava/lang/String;[I)V

    .line 218
    const-string v2, "HDMI_CABLE_CONNECTED"

    invoke-virtual {p0, v2}, Lcom/android/server/DisplayService;->broadcastEvent(Ljava/lang/String;)V

    .line 222
    :goto_1
    iget-object v2, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/DisplayListener;->enableHDMIOutput(ZLjava/lang/String;)V

    .line 223
    const/4 v1, 0x0

    .line 225
    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/server/DisplayService;->getBestMode()I

    move-result v0

    .line 230
    .local v0, mode:I
    iget-object v2, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    invoke-virtual {v2, v0}, Lcom/android/server/DisplayListener;->changeDisplayMode(I)V

    .line 233
    .end local v0           #mode:I
    :cond_0
    return v1

    .line 212
    :cond_1
    const-string v2, "Off"

    goto :goto_0

    .line 221
    :cond_2
    const-string v2, "HDMI_DISCONNECTED"

    invoke-virtual {p0, v2}, Lcom/android/server/DisplayService;->broadcastEvent(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setStereoDisplayMode(ILjava/lang/String;)I
    .locals 2
    .parameter "ModeSD"
    .parameter "appname"

    .prologue
    .line 338
    const/4 v0, 0x1

    .line 339
    .local v0, ret:I
    iget-object v1, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/DisplayListener;->setStereoDisplayMode(ILjava/lang/String;)I

    move-result v0

    .line 342
    :cond_0
    return v0
.end method

.method public setTVMode(ILjava/lang/String;)I
    .locals 2
    .parameter "ModeTV"
    .parameter "appname"

    .prologue
    .line 314
    const/4 v0, 0x1

    .line 315
    .local v0, nRet:I
    iget-object v1, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/DisplayListener;->setTVMode(ILjava/lang/String;)I

    move-result v0

    .line 318
    :cond_0
    return v0
.end method

.method public setTVoutMode(ILjava/lang/String;)I
    .locals 2
    .parameter "ModeTVout"
    .parameter "appname"

    .prologue
    .line 330
    const/4 v0, 0x1

    .line 331
    .local v0, ret:I
    iget-object v1, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/DisplayListener;->setTVoutMode(ILjava/lang/String;)I

    move-result v0

    .line 334
    :cond_0
    return v0
.end method

.method public showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "appname"
    .parameter "file"

    .prologue
    .line 238
    const/4 v0, 0x1

    .line 239
    .local v0, ret:I
    iget-object v1, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/DisplayListener;->showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 242
    :cond_0
    return v0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/DisplayService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SHUTDOWN permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    const-string v0, "DisplayService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method
