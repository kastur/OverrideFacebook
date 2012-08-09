.class Lcom/facebook/katana/activity/media/CameraActivity$10;
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
    .line 580
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraActivity$10;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 584
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$10;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CameraActivity;->b(Z)V

    .line 585
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$10;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->g(Lcom/facebook/katana/activity/media/CameraActivity;)V

    .line 587
    return-void
.end method
