.class Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;
.super Landroid/os/AsyncTask;
.source "AudioAttachmentPlayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;-><init>(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 61
    const-string v0, "orca:AudioAttachmentPlayer"

    const-string v1, "start playing the audio"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    array-length v0, p1

    if-gtz v0, :cond_1

    .line 64
    const-string v0, "orca:AudioAttachmentPlayer"

    const-string v1, "Audio uri not available."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "error"

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :cond_1
    const/4 v1, 0x0

    .line 71
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 76
    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://"

    const-string v4, "http://"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    const-string v1, "orca:AudioAttachmentPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "the actual URL for audio: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v3}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 81
    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v2}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 83
    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 85
    const-string v1, "success"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    :goto_1
    :try_start_2
    const-string v2, "orca:AudioAttachmentPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occurred during playing the audio "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v4}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    const-string v0, "error"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 90
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 91
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    .line 90
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 86
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    const-string v0, "error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->c(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->c(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 57
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method
