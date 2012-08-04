.class Lcom/facebook/katana/activity/media/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/CameraActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraActivity$1;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$1;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->h()V

    .line 284
    return-void
.end method
