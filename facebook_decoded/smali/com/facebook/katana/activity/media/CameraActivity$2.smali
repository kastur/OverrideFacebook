.class Lcom/facebook/katana/activity/media/CameraActivity$2;
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
    .line 272
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraActivity$2;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$2;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Lcom/facebook/katana/activity/media/CameraActivity;I)V

    .line 276
    return-void
.end method
