.class Lcom/facebook/katana/activity/media/UploadPhotoActivity$8;
.super Ljava/lang/Object;
.source "UploadPhotoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 889
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$8;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 892
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$8;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->finish()V

    .line 893
    return-void
.end method
