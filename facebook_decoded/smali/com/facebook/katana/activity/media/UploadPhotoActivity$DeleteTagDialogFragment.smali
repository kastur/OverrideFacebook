.class Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "UploadPhotoActivity.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 820
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(J)Landroid/support/v4/app/DialogFragment;
    .locals 3
    .parameter

    .prologue
    .line 822
    new-instance v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;

    invoke-direct {v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;-><init>()V

    .line 823
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 824
    const-string v2, "photo_tag_user_id"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 825
    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;->e(Landroid/os/Bundle;)V

    .line 826
    return-object v0
.end method


# virtual methods
.method public final c()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 832
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    .line 833
    new-instance v5, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment$1;

    invoke-direct {v5, p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment$1;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;Lcom/facebook/katana/activity/media/UploadPhotoActivity;)V

    .line 847
    const v1, 0x7f0b02a5

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;->c(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080027

    const v3, 0x7f0b02a6

    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;->c(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b03d7

    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;->c(I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f0b0264

    invoke-virtual {p0, v6}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$DeleteTagDialogFragment;->c(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    move-object v8, v7

    invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
