.class public Lcom/htc/util/calendar/ConnectionUtils;
.super Ljava/lang/Object;
.source "ConnectionUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectionUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNetworkEnabled(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 17
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-eqz v9, :cond_1

    .line 18
    invoke-static {p0}, Lcom/htc/util/calendar/ConnectionUtils;->isNetworkIncludeWiMaxEnabled(Landroid/content/Context;)Z

    move-result v7

    .line 33
    :cond_0
    :goto_0
    return v7

    .line 21
    :cond_1
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 22
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 23
    .local v2, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 24
    .local v6, wifi:Landroid/net/NetworkInfo;
    const/16 v9, 0x12

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 26
    .local v3, usbNet:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v9, v10, :cond_4

    :cond_2
    move v1, v8

    .line 27
    .local v1, mOn:Z
    :goto_1
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    .line 28
    .local v5, wOn:Z
    if-nez v3, :cond_5

    move v4, v7

    .line 29
    .local v4, usbOn:Z
    :goto_2
    const-string v9, "ConnectionUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mobile connection:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", wifi connection:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", usb connection:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    if-eq v5, v8, :cond_3

    if-eq v1, v8, :cond_3

    if-ne v4, v8, :cond_0

    :cond_3
    move v7, v8

    .line 33
    goto :goto_0

    .end local v1           #mOn:Z
    .end local v4           #usbOn:Z
    .end local v5           #wOn:Z
    :cond_4
    move v1, v7

    .line 26
    goto :goto_1

    .line 28
    .restart local v1       #mOn:Z
    .restart local v5       #wOn:Z
    :cond_5
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    goto :goto_2
.end method

.method private static isNetworkIncludeWiMaxEnabled(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 39
    const-string v11, "connectivity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 40
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 41
    .local v2, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 42
    .local v6, wifi:Landroid/net/NetworkInfo;
    const/16 v11, 0x12

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 43
    .local v3, usbNet:Landroid/net/NetworkInfo;
    const/4 v11, 0x6

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 45
    .local v7, wimax:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .local v1, mOn:Z
    const/4 v5, 0x0

    .local v5, wOn:Z
    const/4 v8, 0x0

    .local v8, wimaxOn:Z
    const/4 v4, 0x0

    .line 46
    .local v4, usbOn:Z
    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v11, v12, :cond_5

    :cond_0
    move v1, v10

    .line 49
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 50
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    .line 52
    :cond_2
    if-eqz v7, :cond_3

    .line 53
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    .line 55
    :cond_3
    if-eqz v3, :cond_4

    .line 56
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    .line 59
    :cond_4
    const-string v11, "ConnectionUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mobile connection:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", wifi connection:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", wimax connection:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", usb connection:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-eq v5, v10, :cond_6

    if-eq v1, v10, :cond_6

    if-eq v8, v10, :cond_6

    if-eq v4, v10, :cond_6

    .line 63
    :goto_1
    return v9

    :cond_5
    move v1, v9

    .line 47
    goto :goto_0

    :cond_6
    move v9, v10

    .line 63
    goto :goto_1
.end method
