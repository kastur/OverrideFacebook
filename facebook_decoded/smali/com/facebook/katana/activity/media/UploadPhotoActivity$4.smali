.class Lcom/facebook/katana/activity/media/UploadPhotoActivity$4;
.super Ljava/lang/Object;
.source "UploadPhotoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;

.field private synthetic b:Lcom/facebook/katana/activity/media/UploadPhotoActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$4;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    iput-object p2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$4;->a:Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 713
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$4;->a:Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$4;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Z)V

    .line 715
    return-void
.end method
