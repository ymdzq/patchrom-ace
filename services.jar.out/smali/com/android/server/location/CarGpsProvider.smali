.class public Lcom/android/server/location/CarGpsProvider;
.super Lcom/android/server/location/MockProvider;
.source "CarGpsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/CarGpsProvider$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarGpsProvider"


# instance fields
.field private htcModeEnable:Z

.field private final mClientUids:Landroid/util/SparseIntArray;

.field public mContext:Landroid/content/Context;

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/CarGpsProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private usingMock:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/location/ILocationManager;ZZZZZZZII)V
    .locals 1
    .parameter "name"
    .parameter "locationManager"
    .parameter "requiresNetwork"
    .parameter "requiresSatellite"
    .parameter "requiresCell"
    .parameter "hasMonetaryCost"
    .parameter "supportsAltitude"
    .parameter "supportsSpeed"
    .parameter "supportsBearing"
    .parameter "powerRequirement"
    .parameter "accuracy"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p11}, Lcom/android/server/location/MockProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;ZZZZZZZII)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    .line 156
    new-instance v0, Lcom/android/server/location/CarGpsProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/CarGpsProvider$1;-><init>(Lcom/android/server/location/CarGpsProvider;)V

    iput-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/CarGpsProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private reportStatus(Z)V
    .locals 6
    .parameter "value"

    .prologue
    .line 97
    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 98
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 99
    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/CarGpsProvider$Listener;

    .line 101
    .local v2, listener:Lcom/android/server/location/CarGpsProvider$Listener;
    if-eqz p1, :cond_0

    .line 102
    :try_start_0
    iget-object v4, v2, Lcom/android/server/location/CarGpsProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v4}, Landroid/location/IGpsStatusListener;->onGpsStarted()V

    .line 98
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iget-object v4, v2, Lcom/android/server/location/CarGpsProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v4}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "CarGpsProvider"

    const-string v5, "RemoteException in reportStatus"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 113
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #listener:Lcom/android/server/location/CarGpsProvider$Listener;
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 6
    .parameter "uid"

    .prologue
    .line 124
    iget-object v3, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 125
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 126
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 129
    const-string v2, "CarGpsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate add listener for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    monitor-exit v3

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string v2, "CarGpsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addListener("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 134
    monitor-exit v3

    goto :goto_0

    .end local v0           #name:Ljava/lang/String;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public clearMockListener()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 275
    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 276
    return-void
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "CarGpsProvider"

    const-string v1, "provider, disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0}, Lcom/android/server/location/MockProvider;->disable()V

    .line 86
    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->isHtcMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->isUsedMock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/CarGpsProvider;->reportStatus(Z)V

    .line 88
    :cond_0
    return-void
.end method

.method public disableHtcMode()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/CarGpsProvider;->htcModeEnable:Z

    .line 78
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "CarGpsProvider"

    const-string v1, "provider, enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-super {p0}, Lcom/android/server/location/MockProvider;->enable()V

    .line 93
    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->isHtcMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->isUsedMock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/CarGpsProvider;->reportStatus(Z)V

    .line 95
    :cond_0
    return-void
.end method

.method public enableHtcMode()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/CarGpsProvider;->htcModeEnable:Z

    .line 74
    return-void
.end method

.method public enableLocationTracking(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 289
    if-eqz p1, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->enable()V

    .line 293
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->disable()V

    goto :goto_0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/server/location/CarGpsProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public isHtcMode()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/server/location/CarGpsProvider;->htcModeEnable:Z

    return v0
.end method

.method public isUsedMock()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/location/CarGpsProvider;->usingMock:Z

    return v0
.end method

.method public removeListener(I)V
    .locals 6
    .parameter "uid"

    .prologue
    .line 139
    iget-object v3, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 141
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 144
    const-string v2, "CarGpsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unneeded remove listener for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    monitor-exit v3

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v2, "CarGpsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeListener("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 149
    monitor-exit v3

    goto :goto_0

    .end local v0           #name:Ljava/lang/String;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public reportNmea(Ljava/lang/String;J)V
    .locals 7
    .parameter "nmea"
    .parameter "timestamp"

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 241
    const-string v4, "CarGpsProvider"

    const-string v5, "reportNmea is not enable due to isEnabled() == false"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v5, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 247
    :try_start_0
    const-string v4, "CarGpsProvider"

    const-string v6, "reportNmea"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 251
    .local v3, size:I
    if-lez v3, :cond_1

    .line 253
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 255
    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/CarGpsProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .local v2, listener:Lcom/android/server/location/CarGpsProvider$Listener;
    :try_start_1
    iget-object v4, v2, Lcom/android/server/location/CarGpsProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v4, p2, p3, p1}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 253
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 260
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "CarGpsProvider"

    const-string v6, "RemoteException in reportNmea"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v4, p0, Lcom/android/server/location/CarGpsProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 265
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 269
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #listener:Lcom/android/server/location/CarGpsProvider$Listener;
    :cond_1
    monitor-exit v5

    goto :goto_0

    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/server/location/CarGpsProvider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-super {p0, p1}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    const-string v0, "CarGpsProvider"

    const-string v1, "setLocation will not work due to the isEnable() == false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public useMock(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/location/CarGpsProvider;->usingMock:Z

    .line 119
    return-void
.end method
