.class Landroid/database/sqlite/SQLiteDatabase$DbMetaData;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DbMetaData"
.end annotation


# instance fields
.field final db:Landroid/database/sqlite/SQLiteDatabase;

.field final stackTrace:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "db"
    .parameter "w"

    .prologue
    .line 3171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3172
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$DbMetaData;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 3173
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDatabase$DbMetaData;->stackTrace:Ljava/lang/Throwable;

    .line 3174
    return-void
.end method
