.class Lcom/android/calendarcommon/EventRecurrence$ParseInterval;
.super Lcom/android/calendarcommon/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseInterval"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon/EventRecurrence$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$ParseInterval;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon/EventRecurrence;)I
    .locals 4
    .parameter "value"
    .parameter "er"

    .prologue
    const/4 v3, 0x1

    .line 761
    const/high16 v0, -0x8000

    const v1, 0x7fffffff

    invoke-static {p1, v0, v1, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseInterval;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result v0

    iput v0, p2, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    .line 762
    iget v0, p2, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    if-ge v0, v3, :cond_0

    .line 763
    invoke-static {}, Lcom/android/calendarcommon/EventRecurrence;->access$1500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Interval. Forcing INTERVAL to 1 from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iput v3, p2, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    .line 766
    :cond_0
    const/16 v0, 0x8

    return v0
.end method
