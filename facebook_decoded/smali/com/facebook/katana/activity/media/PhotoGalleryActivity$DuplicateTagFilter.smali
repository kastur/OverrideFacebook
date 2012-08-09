.class Lcom/facebook/katana/activity/media/PhotoGalleryActivity$DuplicateTagFilter;
.super Ljava/lang/Object;
.source "PhotoGalleryActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$UserExclusionFilter;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$DuplicateTagFilter;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1425
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$DuplicateTagFilter;-><init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V

    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 2
    .parameter

    .prologue
    .line 1429
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$DuplicateTagFilter;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->x(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1430
    :cond_0
    const/4 v0, 0x0

    .line 1432
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$DuplicateTagFilter;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->x(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a(J)Z

    move-result v0

    goto :goto_0
.end method
