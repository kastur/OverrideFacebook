.class Lcom/facebook/katana/activity/media/UploadPhotoActivity$5;
.super Ljava/lang/Object;
.source "UploadPhotoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 863
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$5;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 867
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$5;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->finish()V

    .line 868
    return-void
.end method
