.class Lcom/facebook/katana/activity/media/CameraActivity$9;
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
    .line 564
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraActivity$9;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 567
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$9;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->f(Lcom/facebook/katana/activity/media/CameraActivity;)Z

    .line 568
    const/4 v0, 0x1

    return v0
.end method
