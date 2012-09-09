.class public Landroid/database/CursorWindow;
.super Landroid/database/sqlite/SQLiteClosable;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/database/CursorWindow;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_WINDOW_SIZE:I = 0x0

.field public static final MIN_WINDOW_SIZE:I = 0x100000

.field private static final STATS_TAG:Ljava/lang/String; = "CursorWindowStats"

.field private static final sCursorWindowSize:I

.field private static final sWindowToPidMap:Landroid/util/SparseIntArray;


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mName:Ljava/lang/String;

.field private mStartPos:I

.field public mWindowPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x10e002a

    .line 50
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    .line 74
    const-string v0, "CursorWindowStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get CursorWindow size from framework resource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    sput v0, Landroid/database/CursorWindow;->DEFAULT_WINDOW_SIZE:I

    .line 735
    new-instance v0, Landroid/database/CursorWindow$1;

    invoke-direct {v0}, Landroid/database/CursorWindow$1;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 768
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 80
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 177
    invoke-static {p1}, Landroid/database/CursorWindow;->nativeCreateFromParcel(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    .line 178
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Landroid/database/CursorWindowAllocationException;

    const-string v1, "Cursor window could not be created from binder."

    invoke-direct {v0, v1}, Landroid/database/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeGetName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/database/CursorWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 121
    sget v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    invoke-direct {p0, p1, v0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .parameter "name"
    .parameter "cursorWindowsSize"

    .prologue
    const/high16 v0, 0x10

    .line 134
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 80
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 135
    if-le p2, v0, :cond_0

    move v0, p2

    .line 136
    .local v0, size:I
    :cond_0
    sget v1, Landroid/database/CursorWindow;->DEFAULT_WINDOW_SIZE:I

    if-le v0, v1, :cond_1

    .line 137
    const-string v1, "CursorWindowStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocate Cursor Window larger than default value, size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", default:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/database/CursorWindow;->DEFAULT_WINDOW_SIZE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 141
    iput-object p1, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 144
    invoke-static {p1, v0}, Landroid/database/CursorWindow;->nativeCreate(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    .line 146
    iget v1, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    if-nez v1, :cond_2

    .line 147
    new-instance v1, Landroid/database/CursorWindowAllocationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cursor window allocation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, v0, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " kb failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/database/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_2
    iget-object v1, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget v2, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-direct {p0, v1, v2}, Landroid/database/CursorWindow;->recordNewWindow(II)V

    .line 155
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "localWindow"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method private dispose()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 202
    :cond_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    if-eqz v0, :cond_1

    .line 203
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-direct {p0, v0}, Landroid/database/CursorWindow;->recordClosingOfWindow(I)V

    .line 204
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeDispose(I)V

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    .line 207
    :cond_1
    return-void
.end method

.method private static native nativeAllocRow(I)Z
.end method

.method private static native nativeClear(I)V
.end method

.method private static native nativeCopyStringToBuffer(IIILandroid/database/CharArrayBuffer;)V
.end method

.method private static native nativeCreate(Ljava/lang/String;I)I
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)I
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeFreeLastRow(I)V
.end method

.method private static native nativeGetBlob(III)[B
.end method

.method private static native nativeGetDouble(III)D
.end method

.method private static native nativeGetLong(III)J
.end method

.method private static native nativeGetName(I)Ljava/lang/String;
.end method

.method private static native nativeGetNumRows(I)I
.end method

.method private static native nativeGetString(III)Ljava/lang/String;
.end method

.method private static native nativeGetType(III)I
.end method

.method private static native nativePutBlob(I[BII)Z
.end method

.method private static native nativePutDouble(IDII)Z
.end method

.method private static native nativePutLong(IJII)Z
.end method

.method private static native nativePutNull(III)Z
.end method

.method private static native nativePutString(ILjava/lang/String;II)Z
.end method

.method private static native nativeSetNumColumns(II)Z
.end method

.method private static native nativeWriteToParcel(ILandroid/os/Parcel;)V
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;
    .locals 1
    .parameter "p"

    .prologue
    .line 747
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    return-object v0
.end method

.method private printStats()Ljava/lang/String;
    .locals 15

    .prologue
    const/16 v14, 0x3d4

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    .local v0, buff:Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 792
    .local v3, myPid:I
    const/4 v10, 0x0

    .line 793
    .local v10, total:I
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .line 794
    .local v7, pidCounts:Landroid/util/SparseIntArray;
    sget-object v13, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v13

    .line 795
    :try_start_0
    sget-object v12, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 796
    .local v9, size:I
    if-nez v9, :cond_0

    .line 798
    const-string v12, ""

    monitor-exit v13

    .line 821
    :goto_0
    return-object v12

    .line 800
    :cond_0
    const/4 v2, 0x0

    .local v2, indx:I
    :goto_1
    if-ge v2, v9, :cond_1

    .line 801
    sget-object v12, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 802
    .local v6, pid:I
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 803
    .local v11, value:I
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v7, v6, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 800
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 805
    .end local v6           #pid:I
    .end local v11           #value:I
    :cond_1
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 807
    .local v5, numPids:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v5, :cond_3

    .line 808
    const-string v12, " (# cursors opened by "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 810
    .restart local v6       #pid:I
    if-ne v6, v3, :cond_2

    .line 811
    const-string/jumbo v12, "this proc="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    :goto_3
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 816
    .local v4, num:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    add-int/2addr v10, v4

    .line 807
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 805
    .end local v1           #i:I
    .end local v2           #indx:I
    .end local v4           #num:I
    .end local v5           #numPids:I
    .end local v6           #pid:I
    .end local v9           #size:I
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 813
    .restart local v1       #i:I
    .restart local v2       #indx:I
    .restart local v5       #numPids:I
    .restart local v6       #pid:I
    .restart local v9       #size:I
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 820
    .end local v6           #pid:I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-le v12, v14, :cond_4

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v14}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 821
    .local v8, s:Ljava/lang/String;
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "# Open Cursors="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 820
    .end local v8           #s:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4
.end method

.method private recordClosingOfWindow(I)V
    .locals 2
    .parameter "window"

    .prologue
    .line 780
    sget-object v1, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 781
    :try_start_0
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 783
    monitor-exit v1

    .line 787
    :goto_0
    return-void

    .line 785
    :cond_0
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 786
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private recordNewWindow(II)V
    .locals 4
    .parameter "pid"
    .parameter "window"

    .prologue
    .line 771
    sget-object v1, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 772
    :try_start_0
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 773
    const-string v0, "CursorWindowStats"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    const-string v0, "CursorWindowStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created a new Cursor. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/database/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_0
    monitor-exit v1

    .line 777
    return-void

    .line 776
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public allocRow()Z
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 314
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeAllocRow(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 316
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 314
    return v0

    .line 316
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 236
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 237
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeClear(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 241
    return-void

    .line 239
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 223
    return-void
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .locals 2
    .parameter "row"
    .parameter "column"
    .parameter "buffer"

    .prologue
    .line 528
    if-nez p3, :cond_0

    .line 529
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CharArrayBuffer should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_0
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 533
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2, p3}, Landroid/database/CursorWindow;->nativeCopyStringToBuffer(IIILandroid/database/CharArrayBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 537
    return-void

    .line 535
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 189
    :try_start_0
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 192
    :cond_0
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 196
    return-void

    .line 194
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public freeLastRow()V
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 326
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeFreeLastRow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 330
    return-void

    .line 328
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getBlob(II)[B
    .locals 2
    .parameter "row"
    .parameter "column"

    .prologue
    .line 454
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 456
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetBlob(III)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 458
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 456
    return-object v0

    .line 458
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getDouble(II)D
    .locals 2
    .parameter "row"
    .parameter "column"

    .prologue
    .line 594
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 596
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetDouble(III)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 598
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 596
    return-wide v0

    .line 598
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getFloat(II)F
    .locals 2
    .parameter "row"
    .parameter "column"

    .prologue
    .line 647
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(II)I
    .locals 2
    .parameter "row"
    .parameter "column"

    .prologue
    .line 631
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(II)J
    .locals 2
    .parameter "row"
    .parameter "column"

    .prologue
    .line 562
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 564
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetLong(III)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 566
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 564
    return-wide v0

    .line 566
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 280
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeGetNumRows(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 282
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 280
    return v0

    .line 282
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getShort(II)S
    .locals 2
    .parameter "row"
    .parameter "column"

    .prologue
    .line 615
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 2
    .parameter "row"
    .parameter "column"

    .prologue
    .line 489
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 491
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetString(III)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 493
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 491
    return-object v0

    .line 493
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getType(II)I
    .locals 2
    .parameter "row"
    .parameter "column"

    .prologue
    .line 424
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 426
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetType(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 428
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 426
    return v0

    .line 428
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isBlob(II)Z
    .locals 2
    .parameter "row"
    .parameter "column"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 359
    .local v0, type:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFloat(II)Z
    .locals 2
    .parameter "row"
    .parameter "column"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLong(II)Z
    .locals 2
    .parameter "row"
    .parameter "column"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 373
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(II)Z
    .locals 1
    .parameter "row"
    .parameter "column"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isString(II)Z
    .locals 2
    .parameter "row"
    .parameter "column"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 403
    .local v0, type:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    .prologue
    .line 765
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V

    .line 766
    return-void
.end method

.method public putBlob([BII)Z
    .locals 2
    .parameter "value"
    .parameter "row"
    .parameter "column"

    .prologue
    .line 659
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 661
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p2, v1

    invoke-static {v0, p1, v1, p3}, Landroid/database/CursorWindow;->nativePutBlob(I[BII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 663
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 661
    return v0

    .line 663
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putDouble(DII)Z
    .locals 2
    .parameter "value"
    .parameter "row"
    .parameter "column"

    .prologue
    .line 711
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 713
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p3, v1

    invoke-static {v0, p1, p2, v1, p4}, Landroid/database/CursorWindow;->nativePutDouble(IDII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 715
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 713
    return v0

    .line 715
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putLong(JII)Z
    .locals 2
    .parameter "value"
    .parameter "row"
    .parameter "column"

    .prologue
    .line 693
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 695
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p3, v1

    invoke-static {v0, p1, p2, v1, p4}, Landroid/database/CursorWindow;->nativePutLong(IJII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 697
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 695
    return v0

    .line 697
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putNull(II)Z
    .locals 2
    .parameter "row"
    .parameter "column"

    .prologue
    .line 727
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 729
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativePutNull(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 731
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 729
    return v0

    .line 731
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putString(Ljava/lang/String;II)Z
    .locals 2
    .parameter "value"
    .parameter "row"
    .parameter "column"

    .prologue
    .line 676
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 678
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p2, v1

    invoke-static {v0, p1, v1, p3}, Landroid/database/CursorWindow;->nativePutString(ILjava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 680
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 678
    return v0

    .line 680
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setNumColumns(I)Z
    .locals 1
    .parameter "columnNum"

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 300
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0, p1}, Landroid/database/CursorWindow;->nativeSetNumColumns(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 302
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 300
    return v0

    .line 302
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setStartPosition(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 269
    iput p1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 270
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/database/CursorWindow;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 755
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0, p1}, Landroid/database/CursorWindow;->nativeWriteToParcel(ILandroid/os/Parcel;)V

    .line 758
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 761
    :cond_0
    return-void
.end method
