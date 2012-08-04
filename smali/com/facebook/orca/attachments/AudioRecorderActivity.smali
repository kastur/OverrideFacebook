.class public Lcom/facebook/orca/attachments/AudioRecorderActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "AudioRecorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/media/MediaRecorder;

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->h:Z

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->e:Landroid/widget/Button;

    const-string v1, "Use"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->h:Z

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 84
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 85
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 86
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->setResult(ILandroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->finish()V

    .line 88
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lcom/facebook/orca/R$layout;->orca_audio_recorder:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->setContentView(I)V

    .line 42
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)V

    .line 44
    sget v0, Lcom/facebook/orca/R$id;->audio_record_record_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->e:Landroid/widget/Button;

    .line 45
    sget v0, Lcom/facebook/orca/R$id;->audio_record_cancel_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->f:Landroid/widget/Button;

    .line 48
    :try_start_0
    const-string v0, "orca-audio"

    const-string v1, ".amr"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->i:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->g:Landroid/media/MediaRecorder;

    .line 52
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 54
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->g:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    iput-boolean v2, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->h:Z

    .line 64
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {p0, v2}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->setResult(I)V

    .line 59
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->finish()V

    goto :goto_0
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "audio_record"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 93
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->h:Z

    if-nez v0, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->g()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->h()V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->setResult(I)V

    .line 100
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->finish()V

    goto :goto_0
.end method
