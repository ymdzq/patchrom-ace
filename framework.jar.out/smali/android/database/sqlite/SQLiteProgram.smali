.class public abstract Landroid/database/sqlite/SQLiteProgram;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteProgram.java"


# static fields
.field static final STATEMENT_CACHEABLE:I = 0x10

.field static final STATEMENT_DONT_PREPARE:I = 0x20

.field static final STATEMENT_TYPE_MASK:I = 0xf

.field static final STATEMENT_USE_POOLED_CONN:I = 0x40

.field private static final TAG:Ljava/lang/String; = "SQLiteProgram"


# instance fields
.field mBindArgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

.field protected mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mShouldDumpSql:Z

.field final mSql:Ljava/lang/String;

.field final mStatementType:I

.field protected nHandle:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected nStatement:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .parameter "db"
    .parameter "sql"

    .prologue
    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Z)V

    .line 99
    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Z)V
    .locals 5
    .parameter "db"
    .parameter "sql"
    .parameter "bindArgs"
    .parameter "compileFlag"

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 90
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    .line 440
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteProgram;->mShouldDumpSql:Z

    .line 103
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    .line 104
    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v1

    .line 105
    .local v1, n:I
    packed-switch v1, :pswitch_data_0

    .line 118
    :pswitch_0
    iput v1, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    .line 120
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteProgram;->mShouldDumpSql:Z

    .line 123
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 124
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->addSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V

    .line 125
    iput-object p1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 126
    iget v3, p1, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->nHandle:I

    .line 127
    if-eqz p3, :cond_0

    .line 128
    array-length v2, p3

    .line 129
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 130
    add-int/lit8 v3, v0, 0x1

    aget-object v4, p3, v0

    invoke-direct {p0, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->addToBindArgs(ILjava/lang/Object;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    .end local v0           #i:I
    .end local v2           #size:I
    :pswitch_1
    or-int/lit8 v3, v1, 0x10

    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    goto :goto_0

    .line 110
    :pswitch_2
    or-int/lit8 v3, v1, 0x10

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    goto :goto_0

    .line 115
    :pswitch_3
    or-int/lit8 v3, v1, 0x20

    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    goto :goto_0

    .line 133
    :cond_0
    if-eqz p4, :cond_1

    .line 134
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->compileAndbindAllArgs()V

    .line 136
    :cond_1
    return-void

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private addToBindArgs(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 352
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    .line 355
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    return-void
.end method

.method private bind(IILjava/lang/Object;)V
    .locals 2
    .parameter "type"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 233
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 234
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, v0}, Landroid/database/sqlite/SQLiteProgram;->addToBindArgs(ILjava/lang/Object;)V

    .line 235
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    if-lez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->acquireReference()V

    .line 239
    packed-switch p1, :pswitch_data_0

    .line 254
    :pswitch_0
    :try_start_0
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {p0, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->native_bind_string(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :goto_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    .line 261
    :cond_0
    return-void

    .restart local p3
    :cond_1
    move-object v0, p3

    .line 234
    goto :goto_0

    .line 241
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteProgram;->native_bind_null(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 258
    .end local p3
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    throw v0

    .line 244
    .restart local p3
    :pswitch_2
    :try_start_2
    check-cast p3, [B

    .end local p3
    check-cast p3, [B

    invoke-virtual {p0, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->native_bind_blob(I[B)V

    goto :goto_1

    .line 247
    .restart local p3
    :pswitch_3
    check-cast p3, Ljava/lang/Double;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->native_bind_double(ID)V

    goto :goto_1

    .line 250
    .restart local p3
    :pswitch_4
    check-cast p3, Ljava/lang/Long;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private compileSql()V
    .locals 4

    .prologue
    .line 140
    iget v1, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Landroid/database/sqlite/SQLiteCompiledSql;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/database/sqlite/SQLiteCompiledSql;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    .line 142
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    iget v1, v1, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    iput v1, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    .line 171
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->getCompiledStatementForSql(Ljava/lang/String;)Landroid/database/sqlite/SQLiteCompiledSql;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    .line 148
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    if-nez v1, :cond_2

    .line 150
    new-instance v1, Landroid/database/sqlite/SQLiteCompiledSql;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/database/sqlite/SQLiteCompiledSql;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    .line 155
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCompiledSql;->acquire()Z

    .line 156
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->addToCompiledQueries(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V

    .line 170
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    iget v1, v1, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    iput v1, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    goto :goto_0

    .line 160
    :cond_2
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCompiledSql;->acquire()Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    iget v0, v1, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    .line 166
    .local v0, last:I
    new-instance v1, Landroid/database/sqlite/SQLiteCompiledSql;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/database/sqlite/SQLiteCompiledSql;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    goto :goto_1
.end method

.method private final native native_clear_bindings()V
.end method


# virtual methods
.method public bindAllArgsAsStrings([Ljava/lang/String;)V
    .locals 4
    .parameter "bindArgs"

    .prologue
    .line 403
    if-nez p1, :cond_1

    .line 410
    :cond_0
    return-void

    .line 406
    :cond_1
    array-length v1, p1

    .line 407
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 408
    add-int/lit8 v2, v0, 0x1

    aget-object v3, p1, v0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bindBlob(I[B)V
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 317
    if-nez p2, :cond_0

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    .line 321
    return-void
.end method

.method public bindDouble(ID)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 292
    const/4 v0, 0x2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    .line 293
    return-void
.end method

.method public bindLong(IJ)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 281
    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    .line 282
    return-void
.end method

.method public bindNull(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 270
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    .line 271
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 303
    if-nez p2, :cond_0

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    .line 307
    return-void
.end method

.method public clearBindings()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    .line 328
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 332
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->acquireReference()V

    .line 334
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteProgram;->native_clear_bindings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    .line 345
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nHandle:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    goto :goto_0
.end method

.method protected compile(Ljava/lang/String;Z)V
    .locals 0
    .parameter "sql"
    .parameter "forceCompilation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    return-void
.end method

.method compileAndbindAllArgs()V
    .locals 10

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    .line 359
    iget v4, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    and-int/lit8 v4, v4, 0x20

    if-lez v4, :cond_0

    .line 360
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    .line 361
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t pass bindargs for this sql :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 366
    :cond_0
    iget v4, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    if-nez v4, :cond_1

    .line 368
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteProgram;->compileSql()V

    .line 370
    :cond_1
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    if-nez v4, :cond_3

    .line 395
    :cond_2
    return-void

    .line 373
    :cond_3
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 374
    .local v2, index:I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 375
    .local v3, value:Ljava/lang/Object;
    if-nez v3, :cond_4

    .line 376
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteProgram;->native_bind_null(I)V

    goto :goto_0

    .line 377
    :cond_4
    instance-of v4, v3, Ljava/lang/Double;

    if-nez v4, :cond_5

    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_6

    .line 378
    :cond_5
    check-cast v3, Ljava/lang/Number;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->native_bind_double(ID)V

    goto :goto_0

    .line 379
    .restart local v3       #value:Ljava/lang/Object;
    :cond_6
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_7

    .line 380
    check-cast v3, Ljava/lang/Number;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V

    goto :goto_0

    .line 381
    .restart local v3       #value:Ljava/lang/Object;
    :cond_7
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_a

    move-object v0, v3

    .line 382
    check-cast v0, Ljava/lang/Boolean;

    .line 383
    .local v0, bool:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    move-wide v4, v6

    :goto_1
    invoke-virtual {p0, v2, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V

    .line 384
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 385
    invoke-virtual {p0, v2, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V

    goto :goto_0

    :cond_8
    move-wide v4, v8

    .line 383
    goto :goto_1

    .line 387
    :cond_9
    invoke-virtual {p0, v2, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V

    goto :goto_0

    .line 389
    .end local v0           #bool:Ljava/lang/Boolean;
    :cond_a
    instance-of v4, v3, [B

    if-eqz v4, :cond_b

    .line 390
    check-cast v3, [B

    .end local v3           #value:Ljava/lang/Object;
    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->native_bind_blob(I[B)V

    goto :goto_0

    .line 392
    .restart local v3       #value:Ljava/lang/Object;
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/database/sqlite/SQLiteProgram;->native_bind_string(ILjava/lang/String;)V

    goto :goto_0
.end method

.method getSqlStatementId()I
    .locals 1

    .prologue
    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getSqlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniqueId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    const/4 v0, -0x1

    return v0
.end method

.method protected final native native_bind_blob(I[B)V
.end method

.method protected final native native_bind_double(ID)V
.end method

.method protected final native native_bind_long(IJ)V
.end method

.method protected final native native_bind_null(I)V
.end method

.method protected final native native_bind_string(ILjava/lang/String;)V
.end method

.method protected final native native_compile(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected final native native_finalize()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected onAllReferencesReleased()V
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->release()V

    .line 176
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->removeSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V

    .line 177
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 178
    return-void
.end method

.method protected onAllReferencesReleasedFromContainer()V
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->release()V

    .line 183
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 184
    return-void
.end method

.method release()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->releaseCompiledSqlObj(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    goto :goto_0
.end method

.method public setDumpSql(Z)V
    .locals 0
    .parameter "ok"

    .prologue
    .line 451
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteProgram;->mShouldDumpSql:Z

    .line 452
    return-void
.end method

.method final declared-synchronized setNativeHandle(I)V
    .locals 1
    .parameter "nHandle"

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroid/database/sqlite/SQLiteProgram;->nHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldDumpSql()Z
    .locals 2

    .prologue
    .line 445
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteProgram;->mShouldDumpSql:Z

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabase;->mCanDumpMonitoredSql:Z

    and-int/2addr v0, v1

    return v0
.end method
