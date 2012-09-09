.class final Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;
.super Ljava/lang/Thread;
.source "NotificationPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CreationAndCompletionThread"
.end annotation


# instance fields
.field public mCmd:Lcom/android/server/NotificationPlayer$Command;

.field final synthetic this$0:Lcom/android/server/NotificationPlayer;


# direct methods
.method public constructor <init>(Lcom/android/server/NotificationPlayer;Lcom/android/server/NotificationPlayer$Command;)V
    .locals 0
    .parameter
    .parameter "cmd"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    .line 87
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    .line 89
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0xa8

    .line 92
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 93
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    #setter for: Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;
    invoke-static {v3, v4}, Lcom/android/server/NotificationPlayer;->access$002(Lcom/android/server/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .local v0, audioManager:Landroid/media/AudioManager;
    :try_start_1
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 100
    .local v2, player:Landroid/media/MediaPlayer;
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mVzwCMAS:Z
    invoke-static {v3}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setIgnoreNotificationMuteSetting(Z)I

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v3, v3, Lcom/android/server/NotificationPlayer$Command;->stream:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 111
    invoke-virtual {p0}, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->setNewVolume()V

    .line 114
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v4, v4, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 115
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-boolean v3, v3, Lcom/android/server/NotificationPlayer$Command;->looping:Z

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 116
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 117
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-boolean v3, v3, Lcom/android/server/NotificationPlayer$Command;->looping:Z

    if-eqz v3, :cond_3

    .line 120
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v3, v5, :cond_1

    .line 121
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/server/NotificationPlayer$Command;->stream:I

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 131
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 132
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 133
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 134
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 136
    :cond_2
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #setter for: Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3, v2}, Lcom/android/server/NotificationPlayer;->access$202(Lcom/android/server/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    .end local v2           #player:Landroid/media/MediaPlayer;
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #setter for: Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3, v0}, Lcom/android/server/NotificationPlayer;->access$402(Lcom/android/server/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 142
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v4, v4, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    #setter for: Lcom/android/server/NotificationPlayer;->mContext:Landroid/content/Context;
    invoke-static {v3, v4}, Lcom/android/server/NotificationPlayer;->access$502(Lcom/android/server/NotificationPlayer;Landroid/content/Context;)Landroid/content/Context;

    .line 143
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v4, v4, Lcom/android/server/NotificationPlayer$Command;->pkg:Ljava/lang/String;

    #setter for: Lcom/android/server/NotificationPlayer;->mPkg:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/NotificationPlayer;->access$602(Lcom/android/server/NotificationPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/server/NotificationPlayer$Command;->id:I

    #setter for: Lcom/android/server/NotificationPlayer;->mId:I
    invoke-static {v3, v4}, Lcom/android/server/NotificationPlayer;->access$702(Lcom/android/server/NotificationPlayer;I)I

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 146
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 148
    return-void

    .line 125
    .restart local v2       #player:Landroid/media/MediaPlayer;
    :cond_3
    :try_start_3
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v3, v5, :cond_1

    .line 126
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/server/NotificationPlayer$Command;->stream:I

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 138
    .end local v2           #player:Landroid/media/MediaPlayer;
    :catch_0
    move-exception v1

    .line 139
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/NotificationPlayer;->access$300(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error loading sound for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v5, v5, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 146
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method setNewVolume()V
    .locals 6

    .prologue
    .line 151
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    if-nez v2, :cond_0

    .line 175
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    monitor-enter v3

    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v2, v2, Lcom/android/server/NotificationPlayer$Command;->newVolume:I

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 155
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/server/NotificationPlayer;->access$400(Lcom/android/server/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    .line 156
    .local v0, audioManager:Landroid/media/AudioManager;
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v2, v2, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v2, v2, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #audioManager:Landroid/media/AudioManager;
    check-cast v0, Landroid/media/AudioManager;

    .line 160
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_2
    if-eqz v0, :cond_4

    .line 161
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/server/NotificationPlayer$Command;->stream:I

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, v2, Lcom/android/server/NotificationPlayer$Command;->oriVolume:I

    .line 162
    const v2, 0x7fffffff

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/server/NotificationPlayer$Command;->newVolume:I

    if-ne v2, v4, :cond_3

    .line 163
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/server/NotificationPlayer$Command;->stream:I

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    iput v4, v2, Lcom/android/server/NotificationPlayer$Command;->newVolume:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v2, v2, Lcom/android/server/NotificationPlayer$Command;->stream:I

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/server/NotificationPlayer$Command;->newVolume:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 171
    :goto_1
    :try_start_3
    const-string v2, "NotificationPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setNewVol] oriVol="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v5, v5, Lcom/android/server/NotificationPlayer$Command;->oriVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NewVol="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v5, v5, Lcom/android/server/NotificationPlayer$Command;->newVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_4
    monitor-exit v3

    goto/16 :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 169
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v2, "NotificationPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStringVolume error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method setOriVolume()V
    .locals 6

    .prologue
    .line 178
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    if-nez v2, :cond_0

    .line 199
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    monitor-enter v3

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v2, v2, Lcom/android/server/NotificationPlayer$Command;->newVolume:I

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 182
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/server/NotificationPlayer;->access$400(Lcom/android/server/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    .line 183
    .local v0, audioManager:Landroid/media/AudioManager;
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v2, v2, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v2, v2, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #audioManager:Landroid/media/AudioManager;
    check-cast v0, Landroid/media/AudioManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_2
    if-eqz v0, :cond_3

    .line 189
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v2, v2, Lcom/android/server/NotificationPlayer$Command;->stream:I

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/server/NotificationPlayer$Command;->oriVolume:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    :goto_1
    :try_start_3
    const-string v2, "NotificationPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setOriVol] oriVol="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v5, v5, Lcom/android/server/NotificationPlayer$Command;->oriVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NewVol="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v5, v5, Lcom/android/server/NotificationPlayer$Command;->newVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/NotificationPlayer$Command;->newVolume:I

    .line 198
    :cond_3
    monitor-exit v3

    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v2, "NotificationPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStringVolume error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
