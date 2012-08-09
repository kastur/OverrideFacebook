.class Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "PhotoGalleryActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IJ[B)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 736
    .line 737
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 739
    :try_start_0
    invoke-static {p4}, Lcom/facebook/katana/util/ImageUtils;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 740
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->g(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->a(Ljava/lang/Long;Landroid/graphics/Bitmap;)V

    .line 741
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->g(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageDecodeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 750
    :goto_0
    return-void

    .line 742
    :catch_0
    move-exception v0

    .line 743
    const-string v1, "Out Of Memory. Failed to decode photo data."

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 744
    :catch_1
    move-exception v0

    .line 745
    const-string v1, "Failed to decode photo data."

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    const v1, 0x7f0b02b5

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/Exception;JLjava/util/Set;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Exception;",
            "J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 788
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 789
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->i(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$FeedbackData;

    invoke-direct {v2, p5, p6}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$FeedbackData;-><init>(Ljava/util/Set;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->j(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0, p5, p6}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Ljava/util/Set;I)V

    .line 794
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/Exception;Ljava/util/Map;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Exception;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhotoTag;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 801
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_2

    .line 802
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 803
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 804
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 806
    new-instance v1, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    invoke-direct {v1}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;-><init>()V

    .line 807
    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a(Ljava/util/List;)V

    .line 808
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->k(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->j(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;)Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    .line 812
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->b(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->CONTROLS:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->b(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->TAGGING:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-ne v0, v1, :cond_0

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->l(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V

    goto :goto_0

    .line 818
    :cond_2
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Lcom/facebook/katana/model/FacebookPhotoSet;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 685
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->c(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3

    if-nez p3, :cond_3

    .line 690
    if-eqz p5, :cond_2

    .line 691
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0, p5}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Lcom/facebook/katana/model/FacebookPhotoSet;)V

    goto :goto_0

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->d(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/facebook/katana/model/FacebookPhotoSet;->d(J)Lcom/facebook/katana/model/FacebookPhotoSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Lcom/facebook/katana/model/FacebookPhotoSet;)V

    goto :goto_0

    .line 698
    :cond_3
    const-string v0, "photoset-gallery"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error loading photoset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->c(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->e(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/model/FacebookPhotoSet;

    move-result-object v0

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    const v1, 0x7f0b02b4

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 703
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->finish()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->f(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    :goto_0
    return-void

    .line 715
    :cond_0
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    if-eqz p4, :cond_2

    .line 716
    :cond_1
    const-string v0, "photoset-gallery"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error loading metadata "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->c(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 722
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhoto;

    .line 723
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->l()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 725
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 726
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    sget-object v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->CONTROLS:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;)V

    .line 728
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->g(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final d(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 769
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->removeDialog(I)V

    .line 770
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 771
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->c(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->c(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/model/FacebookPhotoSet;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPhotoSet;

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    const v2, 0x7f0b02af

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 779
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final h(I)V
    .locals 2
    .parameter

    .prologue
    .line 756
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->dismissDialog(I)V

    .line 757
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->h(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;)V

    .line 759
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    const v1, 0x7f0b03c5

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 763
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    const v1, 0x7f0b03c4

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
