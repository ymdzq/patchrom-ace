.class public Lcom/sprint/internal/SystemProperties$CmdThread;
.super Ljava/lang/Thread;
.source "SystemProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/internal/SystemProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CmdThread"
.end annotation


# instance fields
.field bRet:Z

.field id:I

.field se:Lcom/sprint/internal/SystemPropertiesException;

.field strResult:Ljava/lang/String;

.field strValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/sprint/internal/SystemProperties;


# direct methods
.method public constructor <init>(Lcom/sprint/internal/SystemProperties;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1043
    iput-object p1, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->this$0:Lcom/sprint/internal/SystemProperties;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1045
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->strResult:Ljava/lang/String;

    .line 1046
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->strValue:Ljava/lang/String;

    .line 1047
    iput-boolean v1, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->bRet:Z

    .line 1048
    iput v1, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->id:I

    .line 1050
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->se:Lcom/sprint/internal/SystemPropertiesException;

    return-void
.end method


# virtual methods
.method public getBoolResult()Z
    .locals 1

    .prologue
    .line 1086
    iget-boolean v0, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->bRet:Z

    return v0
.end method

.method public getException()Lcom/sprint/internal/SystemPropertiesException;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->se:Lcom/sprint/internal/SystemPropertiesException;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 1069
    iget v0, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->id:I

    return v0
.end method

.method public getStrResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->strResult:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->strValue:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 1095
    return-void
.end method

.method public setBoolResult(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1090
    iput-boolean p1, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->bRet:Z

    .line 1091
    return-void
.end method

.method public setException(Lcom/sprint/internal/SystemPropertiesException;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->se:Lcom/sprint/internal/SystemPropertiesException;

    .line 1054
    return-void
.end method

.method public setID(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 1073
    iput p1, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->id:I

    .line 1074
    return-void
.end method

.method public setStrResult(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->strResult:Ljava/lang/String;

    .line 1083
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/sprint/internal/SystemProperties$CmdThread;->strValue:Ljava/lang/String;

    .line 1062
    return-void
.end method
