.class Lcom/facebook/katana/activity/media/CameraActivity$4;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/CameraActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraActivity$4;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 380
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$4;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Lcom/facebook/katana/activity/media/CameraActivity;)Lcom/facebook/katana/activity/media/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v1

    .line 384
    :cond_1
    invoke-static {}, Lcom/facebook/katana/activity/media/Storage;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$4;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Lcom/facebook/katana/activity/media/CameraActivity;)Lcom/facebook/katana/activity/media/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->j()V

    goto :goto_0
.end method
