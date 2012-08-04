.class final Lcom/facebook/katana/view/FacebookPostView$1;
.super Ljava/lang/Object;
.source "FacebookPostView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/facebook/katana/model/FacebookPost;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPost;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/facebook/katana/view/FacebookPostView$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/katana/view/FacebookPostView$1;->b:Lcom/facebook/katana/model/FacebookPost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 474
    iget-object v0, p0, Lcom/facebook/katana/view/FacebookPostView$1;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/view/FacebookPostView$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/view/FacebookPostView$1;->b:Lcom/facebook/katana/model/FacebookPost;

    iget-object v3, p0, Lcom/facebook/katana/view/FacebookPostView$1;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/method/PlacesRemoveTag;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Lcom/facebook/katana/model/FacebookPost;J)Ljava/lang/String;

    .line 482
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 483
    return-void
.end method
