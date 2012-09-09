.class Lcom/android/calendarcommon/EventRecurrence$ParseCount;
.super Lcom/android/calendarcommon/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseCount"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon/EventRecurrence$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$ParseCount;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon/EventRecurrence;)I
    .locals 4
    .parameter "value"
    .parameter "er"

    .prologue
    const/4 v3, 0x1

    .line 750
    const/high16 v0, -0x8000

    const v1, 0x7fffffff

    invoke-static {p1, v0, v1, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseCount;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result v0

    iput v0, p2, Lcom/android/calendarcommon/EventRecurrence;->count:I

    .line 751
    iget v0, p2, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-gez v0, :cond_0

    .line 752
    invoke-static {}, Lcom/android/calendarcommon/EventRecurrence;->access$1500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Count. Forcing COUNT to 1 from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iput v3, p2, Lcom/android/calendarcommon/EventRecurrence;->count:I

    .line 755
    :cond_0
    const/4 v0, 0x4

    return v0
.end method
