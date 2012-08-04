.class Lcom/facebook/katana/activity/media/UploadPhotoActivity$3$1;
.super Ljava/lang/Object;
.source "UploadPhotoActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ui/TagView;

.field private synthetic b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;Lcom/facebook/katana/ui/TagView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;

    iput-object p2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3$1;->a:Lcom/facebook/katana/ui/TagView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    .line 692
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 693
    const-string v1, "photo_tag_user_id"

    iget-object v2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3$1;->a:Lcom/facebook/katana/ui/TagView;

    iget-wide v2, v2, Lcom/facebook/katana/ui/TagView;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 694
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3$1;->a:Lcom/facebook/katana/ui/TagView;

    iget-wide v0, v0, Lcom/facebook/katana/ui/TagView;->a:J

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;->a(J)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 696
    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;

    iget-object v1, v1, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->e()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "delete_tag_frag"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 698
    const/4 v0, 0x1

    return v0
.end method
