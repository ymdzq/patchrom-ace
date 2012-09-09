.class final Lcom/android/server/PowerManagerService$WakeLockRecord;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WakeLockRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/PowerManagerService$WakeLockRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private binderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final flags:I

.field final pid:I

.field final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/PowerManagerService;

.field private total_aquired:I

.field private total_time:J

.field final uid:I

.field private update_time:J


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$WakeLock;)V
    .locals 2
    .parameter
    .parameter "wl"

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    .line 1024
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->total_aquired:I

    .line 1026
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->total_time:J

    .line 1030
    iget v0, p2, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    iput v0, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->flags:I

    .line 1031
    iget-object v0, p2, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->tag:Ljava/lang/String;

    .line 1032
    iget v0, p2, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    #getter for: Lcom/android/server/PowerManagerService;->MY_UID:I
    invoke-static {p1}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3e8

    :goto_0
    iput v0, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->uid:I

    .line 1033
    iget v0, p2, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iput v0, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->pid:I

    .line 1034
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->update_time:J

    .line 1035
    iget-object v0, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    return-void

    .line 1032
    :cond_0
    iget v0, p2, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    goto :goto_0
.end method

.method private isStart()Z
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/server/PowerManagerService$WakeLockRecord;)I
    .locals 4
    .parameter "another"

    .prologue
    .line 1040
    iget-wide v0, p1, Lcom/android/server/PowerManagerService$WakeLockRecord;->total_time:J

    iget-wide v2, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->total_time:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1017
    check-cast p1, Lcom/android/server/PowerManagerService$WakeLockRecord;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/PowerManagerService$WakeLockRecord;->compareTo(Lcom/android/server/PowerManagerService$WakeLockRecord;)I

    move-result v0

    return v0
.end method

.method public info()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1087
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->tag:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1088
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, ", lock type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1089
    iget v1, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->flags:I

    #calls: Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$3300(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1090
    iget v1, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->flags:I

    #calls: Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$3300(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "???"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1092
    const-string v1, "(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1093
    const-string v1, "%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1094
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1096
    :cond_0
    const-string v1, ", acq_count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1097
    iget-object v1, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1098
    const-string v1, ", totaltime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1099
    iget-wide v1, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->total_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1100
    const-string v1, "ms (uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1101
    iget v1, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1102
    const-string v1, " pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1103
    iget v1, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1104
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1105
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public start(Landroid/os/IBinder;)V
    .locals 4
    .parameter "b"

    .prologue
    const/16 v3, 0x32

    .line 1057
    iget-object v2, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 1059
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "[embedded] Lock:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1060
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$WakeLockRecord;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1061
    const-string v2, " acquired, but unrelease locks over "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1062
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1063
    const-string v2, ". Skip recording."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1064
    const-string v2, "PowerManagerService"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$WakeLockRecord;->update()V

    .line 1068
    iget-object v2, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1069
    .local v0, i:I
    if-gez v0, :cond_0

    .line 1071
    iget-object v2, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    iget v2, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->total_aquired:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->total_aquired:I

    goto :goto_0
.end method

.method public stop(Landroid/os/IBinder;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1078
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$WakeLockRecord;->update()V

    .line 1079
    iget-object v1, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1080
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 1082
    iget-object v1, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1084
    :cond_0
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 1048
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1049
    .local v0, now:J
    invoke-direct {p0}, Lcom/android/server/PowerManagerService$WakeLockRecord;->isStart()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1051
    iget-wide v2, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->total_time:J

    iget-wide v4, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->update_time:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->total_time:J

    .line 1053
    :cond_0
    iput-wide v0, p0, Lcom/android/server/PowerManagerService$WakeLockRecord;->update_time:J

    .line 1054
    return-void
.end method
