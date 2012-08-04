.class Lcom/facebook/orca/threadlist/ThreadListFragment$5$1;
.super Ljava/lang/Object;
.source "ThreadListFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/ThreadListFragment$5;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 238
    return-void
.end method
