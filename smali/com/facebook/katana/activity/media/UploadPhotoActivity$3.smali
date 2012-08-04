.class Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;
.super Ljava/lang/Object;
.source "UploadPhotoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

.field private synthetic b:Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    iput-object p2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;->b:Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 672
    if-eqz p2, :cond_0

    .line 674
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/UserHolder;

    .line 677
    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/UserHolder;->a()J

    move-result-wide v1

    .line 678
    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/UserHolder;->b()Ljava/lang/String;

    move-result-object v5

    .line 680
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;->b:Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-static {v0, v4}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Z)V

    .line 684
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    const v3, 0x7f0802f4

    invoke-virtual {v0, v3}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TaggableView;

    .line 685
    iget-object v3, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-static {v3}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->d(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)F

    move-result v3

    iget-object v4, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-static {v4}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->e(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/ui/TaggableView;->a(JFFLjava/lang/String;)Lcom/facebook/katana/ui/TagView;

    move-result-object v0

    .line 689
    new-instance v1, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3$1;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;Lcom/facebook/katana/ui/TagView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/TagView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 705
    :goto_0
    return-void

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;->b:Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-static {v0, v4}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Z)V

    goto :goto_0
.end method
