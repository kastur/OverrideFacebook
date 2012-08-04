.class Lcom/facebook/katana/activity/media/CameraActivity$12;
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
    .line 598
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraActivity$12;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 601
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$12;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Lcom/facebook/katana/activity/media/CameraActivity;I)V

    .line 602
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$12;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->f(Lcom/facebook/katana/activity/media/CameraActivity;)Z

    .line 603
    return-void
.end method
