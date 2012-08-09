.class Lcom/facebook/katana/activity/media/CameraActivity$8;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/CameraActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraActivity$8;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 556
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$8;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Lcom/facebook/katana/activity/media/CameraActivity;)Lcom/facebook/katana/activity/media/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$8;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Lcom/facebook/katana/activity/media/CameraActivity;)Lcom/facebook/katana/activity/media/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->b()I

    .line 559
    :cond_0
    return-void
.end method
