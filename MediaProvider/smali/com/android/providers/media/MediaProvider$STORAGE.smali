.class public final enum Lcom/android/providers/media/MediaProvider$STORAGE;
.super Ljava/lang/Enum;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STORAGE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/providers/media/MediaProvider$STORAGE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/providers/media/MediaProvider$STORAGE;

.field public static final enum EXTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

.field public static final enum INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

.field public static final enum PHONE:Lcom/android/providers/media/MediaProvider$STORAGE;

.field public static final enum USB:Lcom/android/providers/media/MediaProvider$STORAGE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7747
    new-instance v0, Lcom/android/providers/media/MediaProvider$STORAGE;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/MediaProvider$STORAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    .line 7748
    new-instance v0, Lcom/android/providers/media/MediaProvider$STORAGE;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/android/providers/media/MediaProvider$STORAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/media/MediaProvider$STORAGE;->EXTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    .line 7749
    new-instance v0, Lcom/android/providers/media/MediaProvider$STORAGE;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v4}, Lcom/android/providers/media/MediaProvider$STORAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/media/MediaProvider$STORAGE;->PHONE:Lcom/android/providers/media/MediaProvider$STORAGE;

    .line 7750
    new-instance v0, Lcom/android/providers/media/MediaProvider$STORAGE;

    const-string v1, "USB"

    invoke-direct {v0, v1, v5}, Lcom/android/providers/media/MediaProvider$STORAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/media/MediaProvider$STORAGE;->USB:Lcom/android/providers/media/MediaProvider$STORAGE;

    .line 7746
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/providers/media/MediaProvider$STORAGE;

    sget-object v1, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/providers/media/MediaProvider$STORAGE;->EXTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/providers/media/MediaProvider$STORAGE;->PHONE:Lcom/android/providers/media/MediaProvider$STORAGE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/providers/media/MediaProvider$STORAGE;->USB:Lcom/android/providers/media/MediaProvider$STORAGE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/media/MediaProvider$STORAGE;->$VALUES:[Lcom/android/providers/media/MediaProvider$STORAGE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7746
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/providers/media/MediaProvider$STORAGE;
    .locals 1
    .parameter "name"

    .prologue
    .line 7746
    const-class v0, Lcom/android/providers/media/MediaProvider$STORAGE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$STORAGE;

    return-object v0
.end method

.method public static values()[Lcom/android/providers/media/MediaProvider$STORAGE;
    .locals 1

    .prologue
    .line 7746
    sget-object v0, Lcom/android/providers/media/MediaProvider$STORAGE;->$VALUES:[Lcom/android/providers/media/MediaProvider$STORAGE;

    invoke-virtual {v0}, [Lcom/android/providers/media/MediaProvider$STORAGE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/providers/media/MediaProvider$STORAGE;

    return-object v0
.end method
