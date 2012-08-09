.class Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "FeedbackActivity.java"


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/feedback/FeedbackActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    iput-object p2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Exception;JLcom/facebook/katana/model/FacebookUser;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-static {p1, p2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    if-eqz p5, :cond_0

    .line 278
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    invoke-virtual {p5}, Lcom/facebook/katana/model/FacebookUser;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, p4, v1}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a(JLjava/lang/String;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v0, "feedback_listener_error"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUsersGetInfoComplete: null mAdapter. postid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " post="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->b(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " running="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 254
    :cond_0
    const-string v0, "feedback_listener_error"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDownloadStreamPhotoComplete: null mAdapter. postid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " post="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->b(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " running="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->a:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    const v1, 0x7f0802ef

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a(I)V

    .line 133
    :goto_0
    invoke-static {p1, p3}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(ILjava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    const v2, 0x7f0b034a

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    return-void

    .line 129
    :cond_1
    const-string v0, "feedback_listener_error"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStreamGetCommentsComplete: null mAdapter. postid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " post="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->b(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " running="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 269
    :goto_0
    return-void

    .line 265
    :cond_0
    const-string v0, "feedback_listener_error"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPhotoDecodeComplete: null mAdapter. postid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " post="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->b(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " running="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/katana/binding/AppSession;ILjava/lang/Exception;Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 235
    :goto_0
    return-void

    .line 231
    :cond_0
    const-string v0, "feedback_listener_error"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProfileImageDownloaded: null mAdapter. postid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " post="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->b(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " running="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 3
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 246
    :goto_0
    return-void

    .line 242
    :cond_0
    const-string v0, "feedback_listener_error"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProfileImageLoaded: null mAdapter. postid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " post="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->b(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " running="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->a:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->removeDialog(I)V

    .line 149
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    invoke-static {p1, p3}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    const v1, 0x7f0800f0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 153
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c()V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const-string v0, "feedback_listener_error"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStreamAddCommentComplete: null mAdapter. postid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " post="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->b(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " running="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    const v2, 0x7f0b0343

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final c(ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->a:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->removeDialog(I)V

    .line 176
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->b(Lcom/facebook/katana/activity/feedback/FeedbackActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d()V

    .line 178
    invoke-static {p1, p3}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(ILjava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    const v2, 0x7f0b035d

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 186
    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 0
    .parameter

    .prologue
    .line 294
    return-void
.end method

.method public final d(ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->a:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->b(I)V

    .line 199
    :goto_0
    invoke-static {p1, p3}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(ILjava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    const v2, 0x7f0b0344

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 207
    :cond_0
    return-void

    .line 195
    :cond_1
    const-string v0, "feedback_listener_error"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStreamAddLikeComplete: null mAdapter. postid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " post="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->b(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " running="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e(ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->a:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c(I)V

    .line 214
    invoke-static {p1, p3}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(ILjava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    const v2, 0x7f0b035e

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;->b:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 222
    :cond_0
    return-void
.end method
