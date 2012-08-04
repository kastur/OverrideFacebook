.class Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment$1;
.super Ljava/lang/Object;
.source "UploadPhotoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

.field private synthetic b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;Lcom/facebook/katana/activity/media/UploadPhotoActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 833
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;

    iput-object p2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment$1;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 839
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment$1;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    const v1, 0x7f0802f4

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TaggableView;

    .line 840
    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "photo_tag_user_id"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 841
    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 842
    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/ui/TaggableView;->a(J)V

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;->a()V

    .line 845
    return-void
.end method
