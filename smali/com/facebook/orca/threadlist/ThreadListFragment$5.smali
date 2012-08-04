.class Lcom/facebook/orca/threadlist/ThreadListFragment$5;
.super Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;
.source "ThreadListFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadlist/ThreadListFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/ThreadListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$5;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 7
    .parameter

    .prologue
    .line 225
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$5;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->d(Lcom/facebook/orca/threadlist/ThreadListFragment;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$5;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->l()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$raw;->refresh:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 229
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 230
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 231
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 232
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 233
    const v1, 0x3e99999a

    const v2, 0x3e99999a

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 234
    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListFragment$5$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListFragment$5$1;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment$5;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 240
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 241
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$5;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->b()V

    .line 247
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    const-string v1, "orca:ThreadListFragment"

    const-string v2, "MediaPlayer create failed: "

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
