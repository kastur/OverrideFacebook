.class Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "SuggestPlaceInfoActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;->a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;->a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, p3}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->a(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;Landroid/location/Location;Landroid/graphics/Bitmap;)V

    .line 94
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JLjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<typeClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "JTtypeClass;)V"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;->a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->a(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;)Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;->FETCHING:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;->a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    sget-object v1, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;->NONE:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->a(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;)Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;

    .line 78
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;->a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->b(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 79
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;->a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->c(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;)Lcom/facebook/katana/model/FacebookPlace;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    cmp-long v0, p5, v0

    if-nez v0, :cond_0

    .line 80
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;->a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    check-cast p7, Lcom/facebook/katana/model/FacebookPageFull;

    invoke-static {v0, p7}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->a(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;Lcom/facebook/katana/model/FacebookPageFull;)Lcom/facebook/katana/model/FacebookPageFull;

    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;->a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->c(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;)Lcom/facebook/katana/model/FacebookPlace;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;->a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->d(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;)Lcom/facebook/katana/model/FacebookPageFull;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/model/FacebookPlace;->a(Lcom/facebook/katana/model/FacebookPage;)V

    .line 83
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;->a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->e(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;)V

    .line 86
    :cond_0
    return-void
.end method

.method public final j(I)V
    .locals 3
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;->a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->a(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;)Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;->SAVING:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;->a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->b(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 101
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;->a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    sget-object v1, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;->NONE:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->a(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;)Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;

    .line 102
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;->a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->setResult(ILandroid/content/Intent;)V

    .line 105
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;->a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->finish()V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;->a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    const v1, 0x7f0b0428

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
