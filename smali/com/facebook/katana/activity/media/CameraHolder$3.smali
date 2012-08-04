.class Lcom/facebook/katana/activity/media/CameraHolder$3;
.super Ljava/lang/Object;
.source "CameraHolder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private synthetic a:Landroid/media/AudioManager;

.field private synthetic b:I

.field private synthetic c:I


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/CameraHolder;Landroid/media/AudioManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 620
    iput-object p2, p0, Lcom/facebook/katana/activity/media/CameraHolder$3;->a:Landroid/media/AudioManager;

    iput p3, p0, Lcom/facebook/katana/activity/media/CameraHolder$3;->b:I

    iput p4, p0, Lcom/facebook/katana/activity/media/CameraHolder$3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter

    .prologue
    .line 623
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 624
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$3;->a:Landroid/media/AudioManager;

    iget v1, p0, Lcom/facebook/katana/activity/media/CameraHolder$3;->b:I

    iget v2, p0, Lcom/facebook/katana/activity/media/CameraHolder$3;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 625
    return-void
.end method
