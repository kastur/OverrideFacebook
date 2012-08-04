.class Lcom/facebook/katana/activity/media/PhotoSetActivity$ScrollListener;
.super Lcom/facebook/katana/ui/SmoothedScrollAdapter;
.source "PhotoSetActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/PhotoSetActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$ScrollListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-direct {p0}, Lcom/facebook/katana/ui/SmoothedScrollAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotoSetActivity$ScrollListener;-><init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;)V

    return-void
.end method


# virtual methods
.method protected final a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 277
    if-lez p2, :cond_0

    .line 278
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$ScrollListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->d(Lcom/facebook/katana/activity/media/PhotoSetActivity;)Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->a(II)V

    .line 280
    :cond_0
    return-void
.end method
