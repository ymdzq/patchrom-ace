.class public Landroid/net/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStats$NonMonotonicException;,
        Landroid/net/NetworkStats$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final IFACE_ALL:Ljava/lang/String; = null

.field public static final SET_ALL:I = -0x1

.field public static final SET_DEFAULT:I = 0x0

.field public static final SET_FOREGROUND:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1


# instance fields
.field private final elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private set:[I

.field private size:I

.field private tag:[I

.field private txBytes:[J

.field private txPackets:[J

.field private uid:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    .line 685
    new-instance v0, Landroid/net/NetworkStats$1;

    invoke-direct {v0}, Landroid/net/NetworkStats$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .parameter "elapsedRealtime"
    .parameter "initialSize"

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 132
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 133
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 134
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 135
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 136
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 137
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 138
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 139
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 140
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    .line 143
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 155
    return-void
.end method

.method private getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;I)Landroid/net/NetworkStats$Entry;
    .locals 11
    .parameter "recycle"
    .parameter
    .parameter "limitUid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .prologue
    .local p2, limitIface:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v10, -0x1

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    .line 447
    if-eqz p1, :cond_3

    move-object v0, p1

    .line 449
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    :goto_0
    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v6, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 450
    iput p3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 451
    iput v10, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 452
    iput v4, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 453
    iput-wide v7, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 454
    iput-wide v7, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 455
    iput-wide v7, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 456
    iput-wide v7, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 457
    iput-wide v7, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 459
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v6, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v6, :cond_7

    .line 460
    if-eq p3, v10, :cond_0

    iget-object v6, p0, Landroid/net/NetworkStats;->uid:[I

    aget v6, v6, v1

    if-ne p3, v6, :cond_4

    :cond_0
    move v3, v5

    .line 461
    .local v3, matchesUid:Z
    :goto_2
    if-eqz p2, :cond_1

    iget-object v6, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    move v2, v5

    .line 463
    .local v2, matchesIface:Z
    :goto_3
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 465
    iget-object v6, p0, Landroid/net/NetworkStats;->tag:[I

    aget v6, v6, v1

    if-eqz v6, :cond_6

    .line 459
    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 447
    .end local v0           #entry:Landroid/net/NetworkStats$Entry;
    .end local v1           #i:I
    .end local v2           #matchesIface:Z
    .end local v3           #matchesUid:Z
    :cond_3
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    goto :goto_0

    .restart local v0       #entry:Landroid/net/NetworkStats$Entry;
    .restart local v1       #i:I
    :cond_4
    move v3, v4

    .line 460
    goto :goto_2

    .restart local v3       #matchesUid:Z
    :cond_5
    move v2, v4

    .line 461
    goto :goto_3

    .line 467
    .restart local v2       #matchesIface:Z
    :cond_6
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 468
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 469
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 470
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 471
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v8, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_4

    .line 474
    .end local v2           #matchesIface:Z
    .end local v3           #matchesUid:Z
    :cond_7
    return-object v0
.end method

.method public static setToString(I)Ljava/lang/String;
    .locals 1
    .parameter "set"

    .prologue
    .line 654
    packed-switch p0, :pswitch_data_0

    .line 662
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 656
    :pswitch_0
    const-string v0, "ALL"

    goto :goto_0

    .line 658
    :pswitch_1
    const-string v0, "DEFAULT"

    goto :goto_0

    .line 660
    :pswitch_2
    const-string v0, "FOREGROUND"

    goto :goto_0

    .line 654
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 2
    .parameter "tag"

    .prologue
    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addIfaceValues(Ljava/lang/String;JJJJ)Landroid/net/NetworkStats;
    .locals 15
    .parameter "iface"
    .parameter "rxBytes"
    .parameter "rxPackets"
    .parameter "txBytes"
    .parameter "txPackets"

    .prologue
    .line 198
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-virtual/range {v0 .. v14}, Landroid/net/NetworkStats;->addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 5
    .parameter "entry"

    .prologue
    .line 214
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    iget-object v2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 215
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v0, v1, 0x2

    .line 216
    .local v0, newLength:I
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 217
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 218
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->set:[I

    .line 219
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 220
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 221
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 222
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 223
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 224
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    .line 227
    .end local v0           #newLength:I
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-object v3, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 228
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->uid:I

    aput v3, v1, v2

    .line 229
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    aput v3, v1, v2

    .line 230
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->tag:I

    aput v3, v1, v2

    .line 231
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    aput-wide v3, v1, v2

    .line 232
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    aput-wide v3, v1, v2

    .line 233
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    aput-wide v3, v1, v2

    .line 234
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    aput-wide v3, v1, v2

    .line 235
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->operations:J

    aput-wide v3, v1, v2

    .line 236
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/NetworkStats;->size:I

    .line 238
    return-object p0
.end method

.method public addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 15
    .parameter "iface"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "rxBytes"
    .parameter "rxPackets"
    .parameter "txBytes"
    .parameter "txPackets"
    .parameter "operations"

    .prologue
    .line 205
    new-instance v0, Landroid/net/NetworkStats$Entry;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/net/NetworkStats;
    .locals 6

    .prologue
    .line 174
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v3, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget v5, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v0, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 175
    .local v0, clone:Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 176
    .local v1, entry:Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_0

    .line 177
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-object v0
.end method

.method public clone(J)Landroid/net/NetworkStats;
    .locals 4
    .parameter "time"

    .prologue
    .line 185
    new-instance v0, Landroid/net/NetworkStats;

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v0, p1, p2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 186
    .local v0, clone:Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 187
    .local v1, entry:Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_0

    .line 188
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineAllValues(Landroid/net/NetworkStats;)V
    .locals 3
    .parameter "another"

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_0

    .line 318
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 319
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    :cond_0
    return-void
.end method

.method public combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 6
    .parameter "entry"

    .prologue
    .line 298
    iget-object v1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, p1, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v0

    .line 299
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 301
    invoke-virtual {p0, p1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 309
    :goto_0
    return-object p0

    .line 303
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 304
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 305
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 306
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 307
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    goto :goto_0
.end method

.method public combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 15
    .parameter "iface"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "rxBytes"
    .parameter "rxPackets"
    .parameter "txBytes"
    .parameter "txPackets"
    .parameter "operations"

    .prologue
    .line 288
    new-instance v0, Landroid/net/NetworkStats$Entry;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineValues(Ljava/lang/String;IIJJJJJ)Landroid/net/NetworkStats;
    .locals 15
    .parameter "iface"
    .parameter "uid"
    .parameter "tag"
    .parameter "rxBytes"
    .parameter "rxPackets"
    .parameter "txBytes"
    .parameter "txPackets"
    .parameter "operations"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 282
    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    invoke-virtual/range {v0 .. v14}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 633
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 634
    const-string v1, "NetworkStats: elapsedRealtime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 635
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_0

    .line 636
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 637
    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    const-string v1, " iface="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 639
    const-string v1, " uid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 640
    const-string v1, " set="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 641
    const-string v1, " tag="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 642
    const-string v1, " rxBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 643
    const-string v1, " rxPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 644
    const-string v1, " txBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 645
    const-string v1, " txPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 646
    const-string v1, " operations="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 648
    :cond_0
    return-void
.end method

.method public findIndex(Ljava/lang/String;III)I
    .locals 2
    .parameter "iface"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"

    .prologue
    .line 327
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_1

    .line 328
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    if-ne p4, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    .end local v0           #i:I
    :goto_1
    return v0

    .line 327
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findIndexHinted(Ljava/lang/String;IIII)I
    .locals 5
    .parameter "iface"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "hintIndex"

    .prologue
    .line 342
    const/4 v2, 0x0

    .local v2, offset:I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_2

    .line 343
    div-int/lit8 v0, v2, 0x2

    .line 347
    .local v0, halfOffset:I
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_0

    .line 348
    add-int v3, p5, v0

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .line 353
    .local v1, i:I
    :goto_1
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v1

    if-ne p3, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-ne p4, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 358
    .end local v0           #halfOffset:I
    .end local v1           #i:I
    :goto_2
    return v1

    .line 350
    .restart local v0       #halfOffset:I
    :cond_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    add-int/2addr v3, p5

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .restart local v1       #i:I
    goto :goto_1

    .line 342
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    .end local v0           #halfOffset:I
    .end local v1           #i:I
    :cond_2
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .locals 4

    .prologue
    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 2
    .parameter "recycle"

    .prologue
    .line 420
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;I)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;
    .locals 1
    .parameter "recycle"
    .parameter "limitUid"

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;I)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;
    .locals 1
    .parameter "recycle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .prologue
    .line 436
    .local p2, limitIface:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;I)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 5

    .prologue
    .line 412
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 413
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    iget-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public getUniqueIfaces()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 381
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 382
    .local v3, ifaces:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 383
    .local v2, iface:Ljava/lang/String;
    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    if-eq v2, v5, :cond_0

    .line 384
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v2           #iface:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getUniqueUids()[I
    .locals 9

    .prologue
    .line 394
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 395
    .local v7, uids:Landroid/util/SparseBooleanArray;
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v6, v0, v2

    .line 396
    .local v6, uid:I
    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    .end local v6           #uid:I
    :cond_0
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .line 400
    .local v5, size:I
    new-array v4, v5, [I

    .line 401
    .local v4, result:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 402
    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    aput v8, v4, v1

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 404
    :cond_1
    return-object v4
.end method

.method public getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3
    .parameter "i"
    .parameter "recycle"

    .prologue
    .line 245
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 246
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 247
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 248
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 249
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 250
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 251
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 252
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 253
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 254
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 255
    return-object v0

    .line 245
    .end local v0           #entry:Landroid/net/NetworkStats$Entry;
    :cond_0
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    goto :goto_0
.end method

.method public groupedByIface()Landroid/net/NetworkStats;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 552
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v3, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 554
    .local v2, stats:Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 555
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    iput v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 556
    iput v6, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 557
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 558
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 560
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_1

    .line 562
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 560
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 565
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 566
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 567
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 568
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 569
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_1

    .line 572
    :cond_1
    return-object v2
.end method

.method public groupedByUid()Landroid/net/NetworkStats;
    .locals 10

    .prologue
    .line 580
    new-instance v6, Landroid/net/NetworkStats;

    iget-wide v7, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v9, 0xa

    invoke-direct {v6, v7, v8, v9}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 582
    .local v6, stats:Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 583
    .local v2, entry:Landroid/net/NetworkStats$Entry;
    sget-object v7, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v7, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 584
    const/4 v7, -0x1

    iput v7, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 585
    const/4 v7, 0x0

    iput v7, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 589
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 590
    .local v4, start:J
    const-string v7, "NetworkStats"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "groupedByUid() size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v7, p0, Landroid/net/NetworkStats;->size:I

    if-ge v3, v7, :cond_1

    .line 595
    iget-object v7, p0, Landroid/net/NetworkStats;->tag:[I

    aget v7, v7, v3

    if-eqz v7, :cond_0

    .line 593
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 597
    :cond_0
    iget-object v7, p0, Landroid/net/NetworkStats;->uid:[I

    aget v7, v7, v3

    iput v7, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 598
    iget-object v7, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v7, v7, v3

    iput-wide v7, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 599
    iget-object v7, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v7, v7, v3

    iput-wide v7, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 600
    iget-object v7, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v7, v7, v3

    iput-wide v7, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 601
    iget-object v7, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v7, v7, v3

    iput-wide v7, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 602
    iget-object v7, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v7, v7, v3

    iput-wide v7, v2, Landroid/net/NetworkStats$Entry;->operations:J

    .line 603
    invoke-virtual {v6, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_1

    .line 607
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v0, v7, v4

    .line 608
    .local v0, duration:J
    const-string v7, "NetworkStats"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "groupedByUid() tooks "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-object v6
.end method

.method public internalSize()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    return v0
.end method

.method public spliceOperationsFrom(Landroid/net/NetworkStats;)V
    .locals 6
    .parameter "stats"

    .prologue
    .line 367
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v2, :cond_1

    .line 368
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v0

    iget-object v4, p0, Landroid/net/NetworkStats;->set:[I

    aget v4, v4, v0

    iget-object v5, p0, Landroid/net/NetworkStats;->tag:[I

    aget v5, v5, v0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v1

    .line 369
    .local v1, j:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 370
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 367
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_0
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    iget-object v3, p1, Landroid/net/NetworkStats;->operations:[J

    aget-wide v3, v3, v1

    aput-wide v3, v2, v0

    goto :goto_1

    .line 375
    .end local v1           #j:I
    :cond_1
    return-void
.end method

.method public subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/NetworkStats$NonMonotonicException;
        }
    .end annotation

    .prologue
    .line 483
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Z)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Landroid/net/NetworkStats;Z)Landroid/net/NetworkStats;
    .locals 13
    .parameter "value"
    .parameter "clampNonMonotonic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/NetworkStats$NonMonotonicException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    .line 496
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget-wide v2, p1, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long v6, v0, v2

    .line 497
    .local v6, deltaRealtime:J
    cmp-long v0, v6, v11

    if-gez v0, :cond_0

    .line 498
    new-instance v0, Landroid/net/NetworkStats$NonMonotonicException;

    invoke-direct {v0, p0, p1}, Landroid/net/NetworkStats$NonMonotonicException;-><init>(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V

    throw v0

    .line 502
    :cond_0
    new-instance v8, Landroid/net/NetworkStats$Entry;

    invoke-direct {v8}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 503
    .local v8, entry:Landroid/net/NetworkStats$Entry;
    new-instance v10, Landroid/net/NetworkStats;

    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v10, v6, v7, v0}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 504
    .local v10, result:Landroid/net/NetworkStats;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    if-ge v5, v0, :cond_5

    .line 505
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v0, v0, v5

    iput-object v0, v8, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 506
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    aget v0, v0, v5

    iput v0, v8, Landroid/net/NetworkStats$Entry;->uid:I

    .line 507
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    aget v0, v0, v5

    iput v0, v8, Landroid/net/NetworkStats$Entry;->set:I

    .line 508
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    aget v0, v0, v5

    iput v0, v8, Landroid/net/NetworkStats$Entry;->tag:I

    .line 511
    iget-object v1, v8, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, v8, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, v8, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, v8, Landroid/net/NetworkStats$Entry;->tag:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIII)I

    move-result v9

    .line 512
    .local v9, j:I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_2

    .line 514
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v0, v0, v5

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 515
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v0, v0, v5

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 516
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v0, v0, v5

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 517
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v0, v0, v5

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 518
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v0, v0, v5

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->operations:J

    .line 541
    :cond_1
    :goto_1
    invoke-virtual {v10, v8}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 504
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 521
    :cond_2
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v0, v0, v5

    iget-object v2, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v2, v9

    sub-long/2addr v0, v2

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 522
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v0, v0, v5

    iget-object v2, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, v9

    sub-long/2addr v0, v2

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 523
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v0, v0, v5

    iget-object v2, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v2, v9

    sub-long/2addr v0, v2

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 524
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v0, v0, v5

    iget-object v2, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v2, v9

    sub-long/2addr v0, v2

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 525
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v0, v0, v5

    iget-object v2, p1, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v2, v9

    sub-long/2addr v0, v2

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->operations:J

    .line 527
    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v0, v0, v11

    if-ltz v0, :cond_3

    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v0, v0, v11

    if-ltz v0, :cond_3

    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v0, v0, v11

    if-ltz v0, :cond_3

    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v0, v0, v11

    if-ltz v0, :cond_3

    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v0, v0, v11

    if-gez v0, :cond_1

    .line 529
    :cond_3
    if-eqz p2, :cond_4

    .line 530
    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 531
    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 532
    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 533
    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 534
    iget-wide v0, v8, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v8, Landroid/net/NetworkStats$Entry;->operations:J

    goto/16 :goto_1

    .line 536
    :cond_4
    new-instance v0, Landroid/net/NetworkStats$NonMonotonicException;

    invoke-direct {v0, p0, v5, p1, v9}, Landroid/net/NetworkStats$NonMonotonicException;-><init>(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;I)V

    throw v0

    .line 544
    .end local v9           #j:I
    :cond_5
    return-object v10
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 675
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 676
    .local v0, writer:Ljava/io/CharArrayWriter;
    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 677
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withoutUid(I)Landroid/net/NetworkStats;
    .locals 6
    .parameter "uid"

    .prologue
    .line 619
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v3, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 621
    .local v2, stats:Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 622
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_1

    .line 623
    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 624
    iget v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    if-eq v3, p1, :cond_0

    .line 625
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 622
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    :cond_1
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 159
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 163
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 164
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 165
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 166
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 167
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 168
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 169
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 170
    return-void
.end method
