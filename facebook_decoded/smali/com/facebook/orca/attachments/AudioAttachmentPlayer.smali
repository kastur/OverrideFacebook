.class public Lcom/facebook/orca/attachments/AudioAttachmentPlayer;
.super Ljava/lang/Object;
.source "AudioAttachmentPlayer.java"


# instance fields
.field private final a:Landroid/media/MediaPlayer;

.field private b:Ljava/lang/String;

.field private c:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a:Landroid/media/MediaPlayer;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->c:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->c:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 35
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 36
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 40
    new-instance v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;

    invoke-direct {v0, p0, v2}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;-><init>(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;B)V

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$PlayAudioTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void

    :cond_0
    move v0, v2

    .line 39
    goto :goto_0
.end method
