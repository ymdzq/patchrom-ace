.class Landroid/os/memory/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/memory/RunningState$ServiceProcessComparator;,
        Landroid/os/memory/RunningState$MergedItem;,
        Landroid/os/memory/RunningState$ProcessItem;,
        Landroid/os/memory/RunningState$ServiceItem;,
        Landroid/os/memory/RunningState$BaseItem;,
        Landroid/os/memory/RunningState$OnRefreshUiListener;,
        Landroid/os/memory/RunningState$BackgroundHandler;,
        Landroid/os/memory/RunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static final CONTENTS_UPDATE_DELAY:J = 0x7d0L

.field static final MAX_SERVICES:I = 0x64

.field static final MSG_REFRESH_UI:I = 0x3

.field static final MSG_RESET_CONTENTS:I = 0x1

.field static final MSG_UPDATE_CONTENTS:I = 0x2

.field static final MSG_UPDATE_TIME:I = 0x4

.field static final TIME_UPDATE_DELAY:J = 0x3e8L

.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Landroid/os/memory/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mInterestingConfigChanges:Landroid/os/memory/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Landroid/os/memory/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Landroid/os/memory/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/memory/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/memory/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 579
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/os/memory/InterestingConfigChanges;

    invoke-direct {v0}, Landroid/os/memory/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mInterestingConfigChanges:Landroid/os/memory/InterestingConfigChanges;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Landroid/os/memory/RunningState$ServiceProcessComparator;

    invoke-direct {v0}, Landroid/os/memory/RunningState$ServiceProcessComparator;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mServiceProcessComparator:Landroid/os/memory/RunningState$ServiceProcessComparator;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 116
    iput v2, p0, Landroid/os/memory/RunningState;->mSequence:I

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mItems:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Landroid/os/memory/RunningState$1;

    invoke-direct {v0, p0}, Landroid/os/memory/RunningState$1;-><init>(Landroid/os/memory/RunningState;)V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mHandler:Landroid/os/Handler;

    .line 580
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/os/memory/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 581
    iget-object v0, p0, Landroid/os/memory/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Landroid/os/memory/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 582
    iget-object v0, p0, Landroid/os/memory/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/memory/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 583
    iput-boolean v2, p0, Landroid/os/memory/RunningState;->mResumed:Z

    .line 584
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 585
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 586
    new-instance v0, Landroid/os/memory/RunningState$BackgroundHandler;

    iget-object v1, p0, Landroid/os/memory/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/os/memory/RunningState$BackgroundHandler;-><init>(Landroid/os/memory/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    .line 587
    return-void
.end method

.method static synthetic access$000(Landroid/os/memory/RunningState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/memory/RunningState;->reset()V

    return-void
.end method

.method static synthetic access$100(Landroid/os/memory/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/os/memory/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method static getInstance(Landroid/content/Context;)Landroid/os/memory/RunningState;
    .locals 2
    .parameter "context"

    .prologue
    .line 571
    sget-object v1, Landroid/os/memory/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 572
    :try_start_0
    sget-object v0, Landroid/os/memory/RunningState;->sInstance:Landroid/os/memory/RunningState;

    if-nez v0, :cond_0

    .line 573
    new-instance v0, Landroid/os/memory/RunningState;

    invoke-direct {v0, p0}, Landroid/os/memory/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/os/memory/RunningState;->sInstance:Landroid/os/memory/RunningState;

    .line 575
    :cond_0
    sget-object v0, Landroid/os/memory/RunningState;->sInstance:Landroid/os/memory/RunningState;

    monitor-exit v1

    return-object v0

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    const/4 v0, 0x1

    .line 639
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 649
    :cond_0
    :goto_0
    return v0

    .line 642
    :cond_1
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xaa

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eqz v1, :cond_0

    .line 649
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pm"
    .parameter "className"
    .parameter "item"

    .prologue
    .line 554
    if-eqz p2, :cond_2

    iget v2, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 556
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 557
    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 567
    .end local v0           #label:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-object v0

    .line 562
    :cond_2
    move-object v0, p1

    .line 563
    .local v0, label:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 564
    .local v1, tail:I
    if-ltz v1, :cond_1

    .line 565
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 654
    iget-object v0, p0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 655
    iget-object v0, p0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 656
    iget-object v0, p0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 657
    iget-object v0, p0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 658
    iget-object v0, p0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 659
    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 58
    .parameter "context"
    .parameter "am"

    .prologue
    .line 662
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    .line 664
    .local v40, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v54, v0

    add-int/lit8 v54, v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Landroid/os/memory/RunningState;->mSequence:I

    .line 666
    const/4 v15, 0x0

    .line 670
    .local v15, changed:Z
    const/16 v54, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v47

    .line 672
    .local v47, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v47, :cond_1

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v9

    .line 673
    .local v9, NS:I
    :goto_0
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    if-ge v0, v9, :cond_3

    .line 674
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 678
    .local v48, si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v54, v0

    if-nez v54, :cond_2

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v54, v0

    if-nez v54, :cond_2

    .line 679
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 680
    add-int/lit8 v22, v22, -0x1

    .line 681
    add-int/lit8 v9, v9, -0x1

    .line 673
    :cond_0
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 672
    .end local v9           #NS:I
    .end local v22           #i:I
    .end local v48           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 686
    .restart local v9       #NS:I
    .restart local v22       #i:I
    .restart local v48       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v54, v0

    and-int/lit8 v54, v54, 0x8

    if-eqz v54, :cond_0

    .line 688
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 689
    add-int/lit8 v22, v22, -0x1

    .line 690
    add-int/lit8 v9, v9, -0x1

    .line 691
    goto :goto_2

    .line 697
    .end local v48           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v42

    .line 699
    .local v42, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v42, :cond_4

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->size()I

    move-result v7

    .line 700
    .local v7, NP:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    .line 701
    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    if-ge v0, v7, :cond_5

    .line 702
    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 703
    .local v36, pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    new-instance v56, Landroid/os/memory/RunningState$AppProcessInfo;

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/os/memory/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v54 .. v56}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 701
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 699
    .end local v7           #NP:I
    .end local v36           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 708
    .restart local v7       #NP:I
    :cond_5
    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    if-ge v0, v9, :cond_7

    .line 709
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 710
    .restart local v48       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v54, v54, v56

    if-nez v54, :cond_6

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v54, v0

    if-lez v54, :cond_6

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/memory/RunningState$AppProcessInfo;

    .line 712
    .local v10, ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    if-eqz v10, :cond_6

    .line 713
    const/16 v54, 0x1

    move/from16 v0, v54

    iput-boolean v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->hasServices:Z

    .line 714
    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v54, v0

    if-eqz v54, :cond_6

    .line 715
    const/16 v54, 0x1

    move/from16 v0, v54

    iput-boolean v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 708
    .end local v10           #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 722
    .end local v48           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_7
    const/16 v22, 0x0

    :goto_6
    move/from16 v0, v22

    if-ge v0, v9, :cond_13

    .line 723
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 730
    .restart local v48       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v54, v54, v56

    if-nez v54, :cond_b

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v54, v0

    if-lez v54, :cond_b

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/memory/RunningState$AppProcessInfo;

    .line 732
    .restart local v10       #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    if-eqz v10, :cond_b

    iget-boolean v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v54, v0

    if-nez v54, :cond_b

    .line 738
    iget-object v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0x12c

    move/from16 v0, v54

    move/from16 v1, v55

    if-ge v0, v1, :cond_b

    .line 742
    const/16 v50, 0x0

    .line 743
    .local v50, skip:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    iget-object v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    check-cast v10, Landroid/os/memory/RunningState$AppProcessInfo;

    .line 744
    .restart local v10       #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    :goto_7
    if-eqz v10, :cond_9

    .line 745
    iget-boolean v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->hasServices:Z

    move/from16 v54, v0

    if-nez v54, :cond_8

    iget-object v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Landroid/os/memory/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v54

    if-eqz v54, :cond_a

    .line 746
    :cond_8
    const/16 v50, 0x1

    .line 751
    :cond_9
    if-eqz v50, :cond_b

    .line 722
    .end local v10           #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    .end local v50           #skip:Z
    :goto_8
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    .line 749
    .restart local v10       #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    .restart local v50       #skip:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    iget-object v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    check-cast v10, Landroid/os/memory/RunningState$AppProcessInfo;

    .restart local v10       #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    goto :goto_7

    .line 758
    .end local v10           #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    .end local v50           #skip:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/HashMap;

    .line 759
    .local v43, procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/memory/RunningState$ProcessItem;>;"
    if-nez v43, :cond_c

    .line 760
    new-instance v43, Ljava/util/HashMap;

    .end local v43           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/memory/RunningState$ProcessItem;>;"
    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    .line 761
    .restart local v43       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/memory/RunningState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 763
    :cond_c
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 764
    .local v41, proc:Landroid/os/memory/RunningState$ProcessItem;
    if-nez v41, :cond_d

    .line 765
    const/4 v15, 0x1

    .line 766
    new-instance v41, Landroid/os/memory/RunningState$ProcessItem;

    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v54, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v54

    move-object/from16 v3, v55

    invoke-direct {v0, v1, v2, v3}, Landroid/os/memory/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 767
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v54

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    :cond_d
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_11

    .line 771
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v54, v54, v56

    if-nez v54, :cond_12

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v37, v0

    .line 772
    .local v37, pid:I
    :goto_9
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    move/from16 v0, v37

    move/from16 v1, v54

    if-eq v0, v1, :cond_10

    .line 773
    const/4 v15, 0x1

    .line 774
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    move/from16 v0, v54

    move/from16 v1, v37

    if-eq v0, v1, :cond_10

    .line 775
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-eqz v54, :cond_e

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->remove(I)V

    .line 778
    :cond_e
    if-eqz v37, :cond_f

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v37

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 781
    :cond_f
    move/from16 v0, v37

    move-object/from16 v1, v41

    iput v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    .line 784
    :cond_10
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    .line 785
    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    .line 787
    .end local v37           #pid:I
    :cond_11
    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/memory/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v54

    or-int v15, v15, v54

    goto/16 :goto_8

    .line 771
    :cond_12
    const/16 v37, 0x0

    goto :goto_9

    .line 792
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    .end local v43           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/memory/RunningState$ProcessItem;>;"
    .end local v48           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_13
    const/16 v22, 0x0

    :goto_a
    move/from16 v0, v22

    if-ge v0, v7, :cond_18

    .line 793
    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 794
    .restart local v36       #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 795
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    if-nez v41, :cond_15

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 800
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    if-nez v41, :cond_14

    .line 801
    const/4 v15, 0x1

    .line 802
    new-instance v41, Landroid/os/memory/RunningState$ProcessItem;

    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v54, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v54

    move-object/from16 v3, v55

    invoke-direct {v0, v1, v2, v3}, Landroid/os/memory/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 803
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 806
    :cond_14
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    .line 809
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/os/memory/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v54

    if-eqz v54, :cond_17

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_16

    .line 811
    const/4 v15, 0x1

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    .line 815
    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mInteresting:Z

    .line 816
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/memory/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 821
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mRunningSeq:I

    .line 822
    move-object/from16 v0, v36

    move-object/from16 v1, v41

    iput-object v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 792
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_a

    .line 818
    :cond_17
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    .line 827
    .end local v36           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 828
    .local v8, NRP:I
    add-int/lit8 v22, v8, -0x1

    :goto_c
    if-ltz v22, :cond_1d

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 830
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_1c

    .line 831
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v17, v0

    .line 832
    .local v17, clientPid:I
    if-eqz v17, :cond_1b

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/memory/RunningState$ProcessItem;

    .line 834
    .local v16, client:Landroid/os/memory/RunningState$ProcessItem;
    if-nez v16, :cond_19

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #client:Landroid/os/memory/RunningState$ProcessItem;
    check-cast v16, Landroid/os/memory/RunningState$ProcessItem;

    .line 837
    .restart local v16       #client:Landroid/os/memory/RunningState$ProcessItem;
    :cond_19
    if-eqz v16, :cond_1a

    .line 838
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 828
    .end local v16           #client:Landroid/os/memory/RunningState$ProcessItem;
    .end local v17           #clientPid:I
    :cond_1a
    :goto_d
    add-int/lit8 v22, v22, -0x1

    goto :goto_c

    .line 844
    .restart local v17       #clientPid:I
    :cond_1b
    const/16 v54, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    iput-object v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mClient:Landroid/os/memory/RunningState$ProcessItem;

    goto :goto_d

    .line 847
    .end local v17           #clientPid:I
    :cond_1c
    const/4 v15, 0x1

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_d

    .line 853
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 854
    .local v6, NHP:I
    const/16 v22, 0x0

    :goto_e
    move/from16 v0, v22

    if-ge v0, v6, :cond_20

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 856
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mInteresting:Z

    move/from16 v54, v0

    if-eqz v54, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v54

    if-nez v54, :cond_1f

    .line 857
    :cond_1e
    const/4 v15, 0x1

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 859
    add-int/lit8 v22, v22, -0x1

    .line 860
    add-int/lit8 v6, v6, -0x1

    .line 854
    :cond_1f
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 867
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 868
    .local v5, NAP:I
    const/16 v22, 0x0

    :goto_f
    move/from16 v0, v22

    if-ge v0, v5, :cond_22

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 870
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_21

    .line 871
    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-object/from16 v2, v40

    move/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/memory/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v54

    or-int v15, v15, v54

    .line 868
    :cond_21
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    .line 876
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    :cond_22
    const/16 v53, 0x0

    .line 877
    .local v53, uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v22, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_2a

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/HashMap;

    .line 879
    .restart local v43       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/memory/RunningState$ProcessItem;>;"
    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .line 880
    .local v39, pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/memory/RunningState$ProcessItem;>;"
    :cond_23
    :goto_11
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_29

    .line 881
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/memory/RunningState$ProcessItem;

    .line 882
    .local v36, pi:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v36

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_26

    .line 883
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/memory/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 884
    move-object/from16 v0, v36

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-nez v54, :cond_24

    .line 887
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    .line 903
    :cond_24
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .line 904
    .local v49, sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/memory/RunningState$ServiceItem;>;"
    :cond_25
    :goto_12
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_23

    .line 905
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/memory/RunningState$ServiceItem;

    .line 906
    .local v48, si:Landroid/os/memory/RunningState$ServiceItem;
    move-object/from16 v0, v48

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_25

    .line 907
    const/4 v15, 0x1

    .line 908
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 890
    .end local v48           #si:Landroid/os/memory/RunningState$ServiceItem;
    .end local v49           #sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/memory/RunningState$ServiceItem;>;"
    :cond_26
    const/4 v15, 0x1

    .line 891
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->remove()V

    .line 892
    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->size()I

    move-result v54

    if-nez v54, :cond_28

    .line 893
    if-nez v53, :cond_27

    .line 894
    new-instance v53, Ljava/util/ArrayList;

    .end local v53           #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .restart local v53       #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v54

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    :cond_28
    move-object/from16 v0, v36

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-eqz v54, :cond_23

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    .line 877
    .end local v36           #pi:Landroid/os/memory/RunningState$ProcessItem;
    :cond_29
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_10

    .line 914
    .end local v39           #pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/memory/RunningState$ProcessItem;>;"
    .end local v43           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/memory/RunningState$ProcessItem;>;"
    :cond_2a
    if-eqz v53, :cond_2b

    .line 915
    const/16 v22, 0x0

    :goto_13
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_2b

    .line 916
    move-object/from16 v0, v53

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/Integer;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Integer;->intValue()I

    move-result v52

    .line 917
    .local v52, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 915
    add-int/lit8 v22, v22, 0x1

    goto :goto_13

    .line 921
    .end local v52           #uid:I
    :cond_2b
    if-eqz v15, :cond_3c

    .line 923
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v51, sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$ProcessItem;>;"
    const/16 v22, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_30

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/util/HashMap;

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_15
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_2f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/memory/RunningState$ProcessItem;

    .line 926
    .restart local v36       #pi:Landroid/os/memory/RunningState$ProcessItem;
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mIsSystem:Z

    .line 927
    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mIsStarted:Z

    .line 928
    const-wide v54, 0x7fffffffffffffffL

    move-wide/from16 v0, v54

    move-object/from16 v2, v36

    iput-wide v0, v2, Landroid/os/memory/RunningState$ProcessItem;->mActiveSince:J

    .line 929
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_2c
    :goto_16
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_2e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/memory/RunningState$ServiceItem;

    .line 930
    .restart local v48       #si:Landroid/os/memory/RunningState$ServiceItem;
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v54, v0

    if-eqz v54, :cond_2d

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v54, v0

    and-int/lit8 v54, v54, 0x1

    if-eqz v54, :cond_2d

    .line 933
    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mIsSystem:Z

    .line 935
    :cond_2d
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v54, v0

    if-eqz v54, :cond_2c

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v54, v0

    if-eqz v54, :cond_2c

    .line 937
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mIsStarted:Z

    .line 938
    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v54, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v56, v0

    cmp-long v54, v54, v56

    if-lez v54, :cond_2c

    .line 939
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v54, v0

    move-wide/from16 v0, v54

    move-object/from16 v2, v36

    iput-wide v0, v2, Landroid/os/memory/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    .line 943
    .end local v48           #si:Landroid/os/memory/RunningState$ServiceItem;
    :cond_2e
    move-object/from16 v0, v51

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 924
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v36           #pi:Landroid/os/memory/RunningState$ProcessItem;
    :cond_2f
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_14

    .line 947
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessComparator:Landroid/os/memory/RunningState$ServiceProcessComparator;

    move-object/from16 v54, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 949
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 950
    .local v30, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$BaseItem;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .local v31, newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->clear()V

    .line 952
    const/16 v22, 0x0

    :goto_17
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_38

    .line 953
    move-object/from16 v0, v51

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/memory/RunningState$ProcessItem;

    .line 954
    .restart local v36       #pi:Landroid/os/memory/RunningState$ProcessItem;
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Landroid/os/memory/RunningState$BaseItem;->mNeedDivider:Z

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 958
    .local v18, firstProc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/memory/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 960
    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    move-object/from16 v0, v36

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-lez v54, :cond_31

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    :cond_31
    const/16 v25, 0x0

    .line 967
    .local v25, mergedItem:Landroid/os/memory/RunningState$MergedItem;
    const/16 v21, 0x0

    .line 968
    .local v21, haveAllMerged:Z
    const/16 v27, 0x0

    .line 969
    .local v27, needDivider:Z
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_34

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/memory/RunningState$ServiceItem;

    .line 970
    .restart local v48       #si:Landroid/os/memory/RunningState$ServiceItem;
    move/from16 v0, v27

    move-object/from16 v1, v48

    iput-boolean v0, v1, Landroid/os/memory/RunningState$BaseItem;->mNeedDivider:Z

    .line 971
    const/16 v27, 0x1

    .line 972
    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    if-eqz v54, :cond_33

    .line 974
    if-eqz v25, :cond_32

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_32

    .line 975
    const/16 v21, 0x0

    .line 977
    :cond_32
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v25, v0

    goto :goto_18

    .line 979
    :cond_33
    const/16 v21, 0x0

    goto :goto_18

    .line 983
    .end local v48           #si:Landroid/os/memory/RunningState$ServiceItem;
    :cond_34
    if-eqz v21, :cond_35

    if-eqz v25, :cond_35

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/memory/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Ljava/util/HashMap;->size()I

    move-result v55

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_37

    .line 986
    :cond_35
    new-instance v25, Landroid/os/memory/RunningState$MergedItem;

    .end local v25           #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    invoke-direct/range {v25 .. v25}, Landroid/os/memory/RunningState$MergedItem;-><init>()V

    .line 987
    .restart local v25       #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_19
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_36

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/memory/RunningState$ServiceItem;

    .line 988
    .restart local v48       #si:Landroid/os/memory/RunningState$ServiceItem;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/memory/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    move-object/from16 v0, v25

    move-object/from16 v1, v48

    iput-object v0, v1, Landroid/os/memory/RunningState$ServiceItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    goto :goto_19

    .line 991
    .end local v48           #si:Landroid/os/memory/RunningState$ServiceItem;
    :cond_36
    move-object/from16 v0, v36

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    .line 992
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/memory/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->clear()V

    .line 993
    move/from16 v26, v18

    .local v26, mpi:I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    add-int/lit8 v54, v54, -0x1

    move/from16 v0, v26

    move/from16 v1, v54

    if-ge v0, v1, :cond_37

    .line 994
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/memory/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    add-int/lit8 v26, v26, 0x1

    goto :goto_1a

    .line 998
    .end local v26           #mpi:I
    :cond_37
    const/16 v54, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/memory/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 999
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_17

    .line 1004
    .end local v18           #firstProc:I
    .end local v21           #haveAllMerged:Z
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v25           #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    .end local v27           #needDivider:Z
    .end local v36           #pi:Landroid/os/memory/RunningState$ProcessItem;
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1005
    const/16 v22, 0x0

    :goto_1b
    move/from16 v0, v22

    if-ge v0, v6, :cond_3b

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 1007
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mClient:Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v54, v0

    if-nez v54, :cond_3a

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->size()I

    move-result v54

    if-gtz v54, :cond_3a

    .line 1008
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    if-nez v54, :cond_39

    .line 1009
    new-instance v54, Landroid/os/memory/RunningState$MergedItem;

    invoke-direct/range {v54 .. v54}, Landroid/os/memory/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    iput-object v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    .line 1010
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    iput-object v0, v1, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    .line 1012
    :cond_39
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, p1

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/os/memory/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1013
    const/16 v54, 0x0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v55, v0

    move-object/from16 v0, v31

    move/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    :cond_3a
    add-int/lit8 v22, v22, 0x1

    goto :goto_1b

    .line 1018
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v55, v0

    monitor-enter v55

    .line 1019
    :try_start_0
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/memory/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1020
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/memory/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 1021
    monitor-exit v55
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    .end local v30           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$BaseItem;>;"
    .end local v31           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .end local v51           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$ProcessItem;>;"
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->clear()V

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1028
    const/16 v32, 0x0

    .line 1029
    .local v32, numBackgroundProcesses:I
    const/16 v33, 0x0

    .line 1030
    .local v33, numForegroundProcesses:I
    const/16 v35, 0x0

    .line 1031
    .local v35, numServiceProcesses:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1032
    const/16 v22, 0x0

    :goto_1c
    move/from16 v0, v22

    if-ge v0, v8, :cond_40

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 1034
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_3f

    .line 1037
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0x190

    move/from16 v0, v54

    move/from16 v1, v55

    if-lt v0, v1, :cond_3d

    .line 1039
    add-int/lit8 v32, v32, 0x1

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    :goto_1d
    add-int/lit8 v22, v22, 0x1

    goto :goto_1c

    .line 1021
    .end local v32           #numBackgroundProcesses:I
    .end local v33           #numForegroundProcesses:I
    .end local v35           #numServiceProcesses:I
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    .restart local v30       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$BaseItem;>;"
    .restart local v31       #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v51       #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$ProcessItem;>;"
    :catchall_0
    move-exception v54

    :try_start_1
    monitor-exit v55
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v54

    .line 1041
    .end local v30           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$BaseItem;>;"
    .end local v31           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .end local v51           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$ProcessItem;>;"
    .restart local v32       #numBackgroundProcesses:I
    .restart local v33       #numForegroundProcesses:I
    .restart local v35       #numServiceProcesses:I
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    :cond_3d
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0xc8

    move/from16 v0, v54

    move/from16 v1, v55

    if-gt v0, v1, :cond_3e

    .line 1043
    add-int/lit8 v33, v33, 0x1

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1046
    :cond_3e
    const-string v54, "RunningState"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "Unknown non-service process: "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, " #"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1050
    :cond_3f
    add-int/lit8 v35, v35, 0x1

    goto :goto_1d

    .line 1054
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    :cond_40
    const-wide/16 v11, 0x0

    .line 1055
    .local v11, backgroundProcessMemory:J
    const-wide/16 v19, 0x0

    .line 1056
    .local v19, foregroundProcessMemory:J
    const-wide/16 v45, 0x0

    .line 1057
    .local v45, serviceProcessMemory:J
    const/16 v28, 0x0

    .line 1059
    .local v28, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 1060
    .local v34, numProc:I
    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v38, v0

    .line 1061
    .local v38, pids:[I
    const/16 v22, 0x0

    :goto_1e
    move/from16 v0, v22

    move/from16 v1, v34

    if-ge v0, v1, :cond_41

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v0, v54

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    aput v54, v38, v22

    .line 1061
    add-int/lit8 v22, v22, 0x1

    goto :goto_1e

    .line 1064
    :cond_41
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v44

    .line 1066
    .local v44, pss:[J
    const/4 v13, 0x0

    .line 1067
    .local v13, bgIndex:I
    const/16 v22, 0x0

    move-object/from16 v29, v28

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .local v29, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    :goto_1f
    :try_start_3
    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v54, v0

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_48

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 1069
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    aget-wide v54, v44, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v56, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-wide/from16 v2, v54

    move/from16 v4, v56

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/memory/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v54

    or-int v15, v15, v54

    .line 1070
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_42

    .line 1071
    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    move-wide/from16 v54, v0

    add-long v45, v45, v54

    move-object/from16 v28, v29

    .line 1067
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    :goto_20
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v29, v28

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    goto :goto_1f

    .line 1072
    :cond_42
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0x190

    move/from16 v0, v54

    move/from16 v1, v55

    if-lt v0, v1, :cond_47

    .line 1074
    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    move-wide/from16 v54, v0

    add-long v11, v11, v54

    .line 1076
    if-eqz v29, :cond_43

    .line 1077
    new-instance v25, Landroid/os/memory/RunningState$MergedItem;

    invoke-direct/range {v25 .. v25}, Landroid/os/memory/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    iput-object v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    .line 1078
    .restart local v25       #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    iput-object v0, v1, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    .line 1079
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v28, v29

    .line 1094
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    :goto_21
    const/16 v54, 0x1

    :try_start_4
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/memory/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1095
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/memory/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1096
    add-int/lit8 v13, v13, 0x1

    .line 1097
    goto :goto_20

    .line 1081
    .end local v25           #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    :cond_43
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v54

    if-ge v13, v0, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_46

    .line 1083
    :cond_44
    new-instance v28, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1084
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    const/4 v14, 0x0

    .local v14, bgi:I
    :goto_22
    if-ge v14, v13, :cond_45

    .line 1085
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    move-object/from16 v0, v28

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    add-int/lit8 v14, v14, 0x1

    goto :goto_22

    .line 1087
    :cond_45
    new-instance v25, Landroid/os/memory/RunningState$MergedItem;

    invoke-direct/range {v25 .. v25}, Landroid/os/memory/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    iput-object v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    .line 1088
    .restart local v25       #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    iput-object v0, v1, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    .line 1089
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_21

    .line 1102
    .end local v13           #bgIndex:I
    .end local v14           #bgi:I
    .end local v25           #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    .end local v34           #numProc:I
    .end local v38           #pids:[I
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    .end local v44           #pss:[J
    :catch_0
    move-exception v54

    .line 1105
    :goto_23
    if-nez v28, :cond_49

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v54

    move/from16 v1, v32

    if-le v0, v1, :cond_49

    .line 1108
    new-instance v28, Ljava/util/ArrayList;

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1109
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    const/4 v14, 0x0

    .restart local v14       #bgi:I
    :goto_24
    move/from16 v0, v32

    if-ge v14, v0, :cond_49

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    move-object/from16 v0, v28

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    add-int/lit8 v14, v14, 0x1

    goto :goto_24

    .line 1091
    .end local v14           #bgi:I
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v13       #bgIndex:I
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v34       #numProc:I
    .restart local v38       #pids:[I
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    .restart local v44       #pss:[J
    :cond_46
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/memory/RunningState$MergedItem;

    .restart local v25       #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    goto/16 :goto_21

    .line 1097
    .end local v25           #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    :cond_47
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0xc8

    move/from16 v0, v54

    move/from16 v1, v55

    if-gt v0, v1, :cond_4d

    .line 1099
    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    move-wide/from16 v54, v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    add-long v19, v19, v54

    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    goto/16 :goto_20

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    :cond_48
    move-object/from16 v28, v29

    .line 1103
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    goto :goto_23

    .line 1115
    .end local v13           #bgIndex:I
    .end local v34           #numProc:I
    .end local v38           #pids:[I
    .end local v44           #pss:[J
    :cond_49
    const/16 v22, 0x0

    :goto_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_4a

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v0, v54

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/memory/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1115
    add-int/lit8 v22, v22, 0x1

    goto :goto_25

    .line 1119
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v55, v0

    monitor-enter v55

    .line 1120
    :try_start_8
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/os/memory/RunningState;->mNumBackgroundProcesses:I

    .line 1121
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/os/memory/RunningState;->mNumForegroundProcesses:I

    .line 1122
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/os/memory/RunningState;->mNumServiceProcesses:I

    .line 1123
    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/os/memory/RunningState;->mBackgroundProcessMemory:J

    .line 1124
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/os/memory/RunningState;->mForegroundProcessMemory:J

    .line 1125
    move-wide/from16 v0, v45

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/os/memory/RunningState;->mServiceProcessMemory:J

    .line 1126
    if-eqz v28, :cond_4b

    .line 1127
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1128
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/os/memory/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v54, v0

    if-eqz v54, :cond_4b

    .line 1129
    const/4 v15, 0x1

    .line 1132
    :cond_4b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/os/memory/RunningState;->mHaveData:Z

    move/from16 v54, v0

    if-nez v54, :cond_4c

    .line 1133
    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/os/memory/RunningState;->mHaveData:Z

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Object;->notifyAll()V

    .line 1136
    :cond_4c
    monitor-exit v55

    .line 1138
    return v15

    .line 1136
    :catchall_1
    move-exception v54

    monitor-exit v55
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v54

    .line 1102
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v13       #bgIndex:I
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v34       #numProc:I
    .restart local v38       #pids:[I
    .restart local v44       #pss:[J
    :catch_1
    move-exception v54

    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    goto/16 :goto_23

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    :cond_4d
    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    goto/16 :goto_20
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1160
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1161
    :try_start_0
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$BaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1142
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1143
    :try_start_0
    iget-object v0, p0, Landroid/os/memory/RunningState;->mItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1154
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1155
    :try_start_0
    iget-object v0, p0, Landroid/os/memory/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 614
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 615
    :try_start_0
    iget-boolean v0, p0, Landroid/os/memory/RunningState;->mHaveData:Z

    monitor-exit v1

    return v0

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pause()V
    .locals 3

    .prologue
    .line 631
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 632
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/os/memory/RunningState;->mResumed:Z

    .line 633
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/memory/RunningState;->mRefreshUiListener:Landroid/os/memory/RunningState$OnRefreshUiListener;

    .line 634
    iget-object v0, p0, Landroid/os/memory/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 635
    monitor-exit v1

    .line 636
    return-void

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resume(Landroid/os/memory/RunningState$OnRefreshUiListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 590
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 591
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/os/memory/RunningState;->mResumed:Z

    .line 592
    iput-object p1, p0, Landroid/os/memory/RunningState;->mRefreshUiListener:Landroid/os/memory/RunningState$OnRefreshUiListener;

    .line 593
    iget-object v0, p0, Landroid/os/memory/RunningState;->mInterestingConfigChanges:Landroid/os/memory/InterestingConfigChanges;

    iget-object v2, p0, Landroid/os/memory/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/memory/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/memory/RunningState;->mHaveData:Z

    .line 595
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 596
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 597
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 599
    :cond_0
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 600
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 602
    :cond_1
    iget-object v0, p0, Landroid/os/memory/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 603
    monitor-exit v1

    .line 604
    return-void

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2
    .parameter "watching"

    .prologue
    .line 1148
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1149
    :try_start_0
    iput-boolean p1, p0, Landroid/os/memory/RunningState;->mWatchingBackgroundItems:Z

    .line 1150
    monitor-exit v1

    .line 1151
    return-void

    .line 1150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateNow()V
    .locals 3

    .prologue
    .line 607
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 608
    :try_start_0
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 609
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 610
    monitor-exit v1

    .line 611
    return-void

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method waitForData()V
    .locals 4

    .prologue
    .line 620
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 621
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Landroid/os/memory/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 623
    :try_start_1
    iget-object v0, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    goto :goto_0

    .line 627
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
