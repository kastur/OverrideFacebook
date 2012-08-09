.class Lcom/facebook/katana/activity/media/PhotoSetActivity$ItemClickListener;
.super Ljava/lang/Object;
.source "PhotoSetActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/PhotoSetActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$ItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotoSetActivity$ItemClickListener;-><init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 374
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$ItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-static {v0, p4, p5}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Lcom/facebook/katana/activity/media/PhotoSetActivity;J)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_0

    .line 376
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$ItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1, v0, v2}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Lcom/facebook/katana/activity/media/PhotoSetActivity;Lcom/facebook/katana/model/FacebookPhoto;Ljava/lang/String;)V

    .line 378
    :cond_0
    return-void
.end method
