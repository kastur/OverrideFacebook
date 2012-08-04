.class Lcom/facebook/katana/activity/media/CameraActivity$6;
.super Landroid/view/OrientationEventListener;
.source "CameraActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/CameraActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/CameraActivity;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraActivity$6;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 500
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$6;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0, p1}, Lcom/facebook/katana/activity/media/CameraActivity;->b(Lcom/facebook/katana/activity/media/CameraActivity;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$6;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->d(Lcom/facebook/katana/activity/media/CameraActivity;)Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;->PORTRAIT:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    if-ne v0, v1, :cond_1

    .line 501
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$6;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    sget-object v1, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;->LANDSCAPE:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Lcom/facebook/katana/activity/media/CameraActivity;Lcom/facebook/katana/activity/media/CameraActivity$Orientation;)Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    .line 502
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$6;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    const v1, 0x7f040013

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/CameraActivity;->c(Lcom/facebook/katana/activity/media/CameraActivity;I)V

    .line 503
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$6;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Lcom/facebook/katana/activity/media/CameraActivity;)Lcom/facebook/katana/activity/media/CameraHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraActivity$6;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/CameraActivity;->d(Lcom/facebook/katana/activity/media/CameraActivity;)Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CameraHolder;->a(Lcom/facebook/katana/activity/media/CameraActivity$Orientation;)V

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$6;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0, p1}, Lcom/facebook/katana/activity/media/CameraActivity;->d(Lcom/facebook/katana/activity/media/CameraActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$6;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->d(Lcom/facebook/katana/activity/media/CameraActivity;)Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;->LANDSCAPE:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    if-ne v0, v1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$6;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    sget-object v1, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;->PORTRAIT:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Lcom/facebook/katana/activity/media/CameraActivity;Lcom/facebook/katana/activity/media/CameraActivity$Orientation;)Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    .line 506
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$6;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Lcom/facebook/katana/activity/media/CameraActivity;)Lcom/facebook/katana/activity/media/CameraHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraActivity$6;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/CameraActivity;->d(Lcom/facebook/katana/activity/media/CameraActivity;)Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CameraHolder;->a(Lcom/facebook/katana/activity/media/CameraActivity$Orientation;)V

    .line 507
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$6;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    const v1, 0x7f040014

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/CameraActivity;->c(Lcom/facebook/katana/activity/media/CameraActivity;I)V

    goto :goto_0
.end method
