.class Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;
.super Ljava/lang/Object;
.source "ThreadViewAudioAttachmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;->a:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;->a:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;->a:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->c(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;->a:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    invoke-static {v1}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->b(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Ljava/lang/String;)V

    .line 70
    return-void
.end method
